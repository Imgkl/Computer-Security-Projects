.class public Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;
.super Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;
.source "TcpClientDiscoverySpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpiMBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;,
        Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;,
        Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;,
        Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;
    }
.end annotation

.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation

.annotation runtime Lorg/apache/ignite/spi/discovery/DiscoverySpiHistorySupport;
    value = true
.end annotation

.annotation runtime Lorg/apache/ignite/spi/discovery/DiscoverySpiOrderSupport;
    value = true
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_DISCONNECT_CHECK_INT:J = 0x7d0L


# instance fields
.field private disconnectCheckInt:J

.field private volatile disconnectHnd:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;

.field private volatile hbSender:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;

.field private joinErr:Lorg/apache/ignite/spi/IgniteSpiException;

.field private joinLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile lastMsgId:Lorg/apache/ignite/lang/IgniteUuid;

.field private volatile leaveLatch:Ljava/util/concurrent/CountDownLatch;

.field private reconFailed:Z

.field private final rmtNodes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sock:Ljava/net/Socket;

.field private volatile sockRdr:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

.field private volatile topVer:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;-><init>()V

    .line 64
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->rmtNodes:Ljava/util/concurrent/ConcurrentMap;

    .line 97
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->disconnectCheckInt:J

    .line 816
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->joinLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Lorg/apache/ignite/spi/IgniteSpiException;)Lorg/apache/ignite/spi/IgniteSpiException;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;
    .param p1, "x1"    # Lorg/apache/ignite/spi/IgniteSpiException;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->joinErr:Lorg/apache/ignite/spi/IgniteSpiException;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$1602(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;
    .param p1, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->lastMsgId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->leaveLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->disconnectCheckInt:J

    return-wide v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$2502(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->reconFailed:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->topVer:J

    return-wide v0
.end method

.method static synthetic access$2702(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;J)J
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->topVer:J

    return-wide p1
.end method

.method static synthetic access$300(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sock:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$302(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sock:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$400(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->hbSender:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockRdr:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->joinTopology(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->rmtNodes:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method private initConnection(Ljava/net/InetSocketAddress;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 8
    .param p1, "addr"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/net/Socket;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 544
    sget-boolean v4, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 546
    :cond_0
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->joinLatch:Ljava/util/concurrent/CountDownLatch;

    .line 548
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->openSocket(Ljava/net/InetSocketAddress;)Ljava/net/Socket;

    move-result-object v3

    .line 550
    .local v3, "sock":Ljava/net/Socket;
    new-instance v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeRequest;

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v4}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeRequest;-><init>(Ljava/util/UUID;)V

    .line 552
    .local v1, "req":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeRequest;
    invoke-virtual {v1, v5}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeRequest;->client(Z)V

    .line 554
    invoke-virtual {p0, v3, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 556
    const/4 v4, 0x0

    iget-wide v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ackTimeout:J

    invoke-virtual {p0, v3, v4, v6, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->readMessage(Ljava/net/Socket;Ljava/io/InputStream;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;

    .line 558
    .local v2, "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;->creatorNodeId()Ljava/util/UUID;

    move-result-object v0

    .line 560
    .local v0, "nodeId":Ljava/util/UUID;
    sget-boolean v4, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 561
    :cond_1
    sget-boolean v4, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v4}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 563
    :cond_2
    invoke-static {v3, v0}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v4

    return-object v4
.end method

.method private joinTopology(Z)Z
    .locals 22
    .param p1, "recon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 389
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v15}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onJoinStarted()V

    .line 391
    :cond_0
    const/4 v5, 0x0

    .line 393
    .local v5, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v15

    if-nez v15, :cond_10

    .line 395
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    :try_start_0
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 396
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->resolvedAddresses()Ljava/util/Collection;

    move-result-object v5

    .line 398
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 399
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v15}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 400
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Resolved addresses from IP finder: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 528
    :catch_0
    move-exception v7

    .line 529
    .local v7, "ignored":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v15}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 530
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v18, "Joining thread was interrupted."

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    .end local v7    # "ignored":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "No addresses registered in the IP finder (will retry in 2000ms): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 405
    const-wide/16 v18, 0x7d0

    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    goto :goto_1

    .line 409
    :cond_5
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 411
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetSocketAddress;>;"
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v15

    if-nez v15, :cond_f

    .line 412
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;
    :try_end_1
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 414
    .local v4, "addr":Ljava/net/InetSocketAddress;
    const/4 v13, 0x0

    .line 417
    .local v13, "sock":Ljava/net/Socket;
    :try_start_2
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v16

    .line 419
    .local v16, "ts":J
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->initConnection(Ljava/net/InetSocketAddress;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v14

    .line 421
    .local v14, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/net/Socket;Ljava/util/UUID;>;"
    invoke-virtual {v14}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/net/Socket;

    move-object v13, v0

    .line 423
    invoke-virtual {v14}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/UUID;

    .line 425
    .local v12, "rmtNodeId":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v16

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onClientSocketInitialized(J)V

    .line 427
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v15, v12}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->clientRouterNodeId(Ljava/util/UUID;)V

    .line 429
    if-eqz p1, :cond_8

    new-instance v10, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v15}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->lastMsgId:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v10, v15, v12, v0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 434
    .local v10, "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    :goto_3
    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->client(Z)V

    .line 436
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 438
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ackTimeout:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v13, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->readReceipt(Ljava/net/Socket;J)I

    move-result v11

    .line 440
    .local v11, "res":I
    sparse-switch v11, :sswitch_data_0

    .line 499
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v15}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 500
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received unexpected response to join request: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 502
    :cond_6
    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_2

    .line 505
    .end local v10    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .end local v11    # "res":I
    .end local v12    # "rmtNodeId":Ljava/util/UUID;
    .end local v14    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/net/Socket;Ljava/util/UUID;>;"
    .end local v16    # "ts":J
    :catch_1
    move-exception v7

    .line 506
    .restart local v7    # "ignored":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v15}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 507
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v18, "Joining thread was interrupted."

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 509
    :cond_7
    const/4 v15, 0x0

    .line 534
    .end local v4    # "addr":Ljava/net/InetSocketAddress;
    .end local v7    # "ignored":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetSocketAddress;>;"
    .end local v13    # "sock":Ljava/net/Socket;
    :goto_4
    return v15

    .line 429
    .restart local v4    # "addr":Ljava/net/InetSocketAddress;
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetSocketAddress;>;"
    .restart local v12    # "rmtNodeId":Ljava/util/UUID;
    .restart local v13    # "sock":Ljava/net/Socket;
    .restart local v14    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/net/Socket;Ljava/util/UUID;>;"
    .restart local v16    # "ts":J
    :cond_8
    :try_start_4
    new-instance v10, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v10, v15, v0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;-><init>(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Ljava/util/Map;)V
    :try_end_4
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 511
    .end local v12    # "rmtNodeId":Ljava/util/UUID;
    .end local v14    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/net/Socket;Ljava/util/UUID;>;"
    .end local v16    # "ts":J
    :catch_2
    move-exception v15

    move-object v6, v15

    .line 512
    .local v6, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v15}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 513
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to establish connection with address: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 515
    :cond_9
    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 517
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V
    :try_end_5
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 442
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v10    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .restart local v11    # "res":I
    .restart local v12    # "rmtNodeId":Ljava/util/UUID;
    .restart local v14    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/net/Socket;Ljava/util/UUID;>;"
    .restart local v16    # "ts":J
    :sswitch_0
    :try_start_6
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sock:Ljava/net/Socket;

    .line 444
    new-instance v15, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    new-instance v18, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v12, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Ljava/util/UUID;Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockRdr:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    .line 445
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockRdr:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    invoke-virtual {v15}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->start()V

    .line 447
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->joinLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->netTimeout:J

    move-wide/from16 v18, v0

    sget-object v20, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-static {v15, v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/CountDownLatch;JLjava/util/concurrent/TimeUnit;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 448
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->joinErr:Lorg/apache/ignite/spi/IgniteSpiException;

    .line 450
    .local v9, "joinErr0":Lorg/apache/ignite/spi/IgniteSpiException;
    if-eqz v9, :cond_a

    .line 451
    throw v9

    .line 511
    .end local v9    # "joinErr0":Lorg/apache/ignite/spi/IgniteSpiException;
    .end local v10    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .end local v11    # "res":I
    .end local v12    # "rmtNodeId":Ljava/util/UUID;
    .end local v14    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/net/Socket;Ljava/util/UUID;>;"
    .end local v16    # "ts":J
    :catch_3
    move-exception v15

    move-object v6, v15

    goto :goto_5

    .line 453
    .restart local v9    # "joinErr0":Lorg/apache/ignite/spi/IgniteSpiException;
    .restart local v10    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .restart local v11    # "res":I
    .restart local v12    # "rmtNodeId":Ljava/util/UUID;
    .restart local v14    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/net/Socket;Ljava/util/UUID;>;"
    .restart local v16    # "ts":J
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->reconFailed:Z

    if-eqz v15, :cond_c

    .line 454
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v15}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 455
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to reconnect, will try to rejoin [locNode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x5d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 458
    :cond_b
    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockRdr:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    invoke-static {v15}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockRdr:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 463
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sock:Ljava/net/Socket;

    .line 465
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 468
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v15}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 469
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Successfully connected to topology [sock="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x5d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 471
    :cond_d
    new-instance v15, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->hbSender:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;

    .line 472
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->hbSender:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;

    invoke-virtual {v15}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;->start()V

    .line 474
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v15}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onJoinFinished()V

    .line 476
    const/4 v15, 0x1

    goto/16 :goto_4

    .line 479
    .end local v9    # "joinErr0":Lorg/apache/ignite/spi/IgniteSpiException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Join process timed out (will try other address) [sock="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", timeout="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->netTimeout:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x5d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 482
    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockRdr:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    invoke-static {v15}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockRdr:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 487
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    .line 494
    :sswitch_1
    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    .line 521
    .end local v4    # "addr":Ljava/net/InetSocketAddress;
    .end local v10    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .end local v11    # "res":I
    .end local v12    # "rmtNodeId":Ljava/util/UUID;
    .end local v13    # "sock":Ljava/net/Socket;
    .end local v14    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/net/Socket;Ljava/util/UUID;>;"
    .end local v16    # "ts":J
    :cond_f
    :try_start_7
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 522
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to connect to any address from IP finder (will retry to join topology in 2000ms): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 525
    const-wide/16 v18, 0x7d0

    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_7
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 534
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetSocketAddress;>;"
    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 440
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAckTimeout()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ackTimeout:J

    return-wide v0
.end method

.method public getAvgMessageProcessingTime()J
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgMessageProcessingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisconnectCheckInterval()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->disconnectCheckInt:J

    return-wide v0
.end method

.method public bridge synthetic getGridStartTime()J
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->getGridStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeartbeatFrequency()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->hbFreq:J

    return-wide v0
.end method

.method public bridge synthetic getIpFinder()Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->getIpFinder()Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    move-result-object v0

    return-object v0
.end method

.method public getIpFinderFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->getLocalNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public getMaxMessageProcessingTime()J
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxMessageProcessingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageWorkerQueueSize()I
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockRdr:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    .line 148
    .local v0, "sockRdr0":Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->access$000(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;)Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->queueSize()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkTimeout()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->netTimeout:J

    return-wide v0
.end method

.method public getNode(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 347
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v1}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 352
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->rmtNodes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 352
    .local v0, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNodesFailed()J
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->failedNodesCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNodesJoined()J
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->joinedNodesCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNodesLeft()J
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->leftNodesCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getProcessedMessages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->processedMessages()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReceivedMessages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->receivedMessages()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteNodes()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 338
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->rmtNodes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    new-instance v2, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$1;

    invoke-direct {v2, p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$1;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)V

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayList(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/List;

    move-result-object v0

    new-array v1, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockTimeout:J

    return-wide v0
.end method

.method public getThreadPriority()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->threadPri:I

    return v0
.end method

.method public bridge synthetic getTopHistorySize()J
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->getTopHistorySize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalProcessedMessages()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->totalProcessedMessages()I

    move-result v0

    return v0
.end method

.method public getTotalReceivedMessages()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->totalReceivedMessages()I

    move-result v0

    return v0
.end method

.method public injectables()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public pingNode(Ljava/util/UUID;)Z
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    const/4 v1, 0x1

    .line 357
    sget-boolean v2, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 359
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v2}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    :cond_1
    :goto_0
    return v1

    .line 362
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->rmtNodes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 364
    .local v0, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendCustomEvent(Ljava/io/Serializable;)V
    .locals 1
    .param p1, "evt"    # Ljava/io/Serializable;

    .prologue
    .line 379
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic setAckTimeout(J)V
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setAckTimeout(J)V

    return-void
.end method

.method public setAuthenticator(Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;)V
    .locals 0
    .param p1, "auth"    # Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;

    .prologue
    .line 375
    return-void
.end method

.method public bridge synthetic setDataExchange(Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setDataExchange(Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;)V

    return-void
.end method

.method public setDisconnectCheckInterval(J)V
    .locals 1
    .param p1, "disconnectCheckInt"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 111
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->disconnectCheckInt:J

    .line 112
    return-void
.end method

.method public bridge synthetic setHeartbeatFrequency(J)V
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setHeartbeatFrequency(J)V

    return-void
.end method

.method public bridge synthetic setIpFinder(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setIpFinder(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;)V

    return-void
.end method

.method public bridge synthetic setListener(Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setListener(Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;)V

    return-void
.end method

.method public bridge synthetic setLocalAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setLocalAddress(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setMetricsProvider(Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setMetricsProvider(Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;)V

    return-void
.end method

.method public bridge synthetic setNetworkTimeout(J)V
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setNetworkTimeout(J)V

    return-void
.end method

.method public bridge synthetic setNodeAttributes(Ljava/util/Map;Lorg/apache/ignite/lang/IgniteProductVersion;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lorg/apache/ignite/lang/IgniteProductVersion;

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setNodeAttributes(Ljava/util/Map;Lorg/apache/ignite/lang/IgniteProductVersion;)V

    return-void
.end method

.method public bridge synthetic setSocketTimeout(J)V
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setSocketTimeout(J)V

    return-void
.end method

.method public bridge synthetic setThreadPriority(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 55
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setThreadPriority(I)V

    return-void
.end method

.method public bridge synthetic setTopHistorySize(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 55
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setTopHistorySize(I)V

    return-void
.end method

.method simulateNodeFailure()V
    .locals 3

    .prologue
    .line 570
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Simulating client node failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v2}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 572
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sock:Ljava/net/Socket;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 574
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->disconnectHnd:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 575
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->disconnectHnd:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 577
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->hbSender:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 578
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->hbSender:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 580
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockRdr:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 581
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockRdr:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 583
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 584
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 585
    return-void
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 11
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 198
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->startStopwatch()V

    .line 200
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    if-eqz v0, :cond_5

    move v0, v10

    :goto_0
    const-string v1, "ipFinder != null"

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 201
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->netTimeout:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    move v0, v10

    :goto_1
    const-string v1, "networkTimeout > 0"

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 202
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockTimeout:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    move v0, v10

    :goto_2
    const-string v1, "sockTimeout > 0"

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 203
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ackTimeout:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    move v0, v10

    :goto_3
    const-string v1, "ackTimeout > 0"

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 204
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->hbFreq:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    move v0, v10

    :goto_4
    const-string v1, "heartbeatFreq > 0"

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 205
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->threadPri:I

    if-lez v0, :cond_a

    move v0, v10

    :goto_5
    const-string/jumbo v1, "threadPri > 0"

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 208
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locAddr:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveLocalHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locHost:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "localHost"

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string/jumbo v1, "threadPri"

    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->threadPri:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "networkTimeout"

    iget-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->netTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "sockTimeout"

    iget-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "ackTimeout"

    iget-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ackTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "ipFinder"

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "heartbeatFreq"

    iget-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->hbFreq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 225
    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->netTimeout:J

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 226
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network timeout is too low (at least 3000 ms recommended): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->netTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 229
    :cond_1
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->hbFreq:J

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 230
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Heartbeat frequency is too high (at least 2000 ms recommended): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->hbFreq:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 232
    :cond_2
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpiMBean;

    invoke-virtual {p0, p1, p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 235
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locAddr:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveLocalHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locHost:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    instance-of v0, v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    if-eqz v0, :cond_3

    .line 242
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    check-cast v9, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    .line 244
    .local v9, "mcastIpFinder":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;
    invoke-virtual {v9}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 245
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locAddr:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->setLocalAddress(Ljava/lang/String;)V

    .line 251
    .end local v9    # "mcastIpFinder":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;
    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locHost:Ljava/net/InetAddress;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveLocalAddresses(Ljava/net/InetAddress;)Lorg/apache/ignite/lang/IgniteBiTuple;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 257
    .local v7, "addrs":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;>;"
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v1}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v7}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v7}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->metricsProvider:Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;

    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNodeVer:Lorg/apache/ignite/lang/IgniteProductVersion;

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;-><init>(Ljava/util/UUID;Ljava/util/Collection;Ljava/util/Collection;ILorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;Lorg/apache/ignite/lang/IgniteProductVersion;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 265
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNodeAttrs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->setAttributes(Ljava/util/Map;)V

    .line 266
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v0, v10}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->local(Z)V

    .line 268
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-direct {v0, p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    .line 269
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->start()V

    .line 271
    invoke-direct {p0, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->joinTopology(Z)Z

    .line 273
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;

    invoke-direct {v0, p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->disconnectHnd:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;

    .line 274
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->disconnectHnd:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;->start()V

    .line 276
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 277
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 278
    :cond_4
    return-void

    .end local v7    # "addrs":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :cond_5
    move v0, v4

    .line 200
    goto/16 :goto_0

    :cond_6
    move v0, v4

    .line 201
    goto/16 :goto_1

    :cond_7
    move v0, v4

    .line 202
    goto/16 :goto_2

    :cond_8
    move v0, v4

    .line 203
    goto/16 :goto_3

    :cond_9
    move v0, v4

    .line 204
    goto/16 :goto_4

    :cond_a
    move v0, v4

    .line 205
    goto/16 :goto_5

    .line 210
    :catch_0
    move-exception v8

    .line 211
    .local v8, "e":Ljava/io/IOException;
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown local address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 237
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 238
    .restart local v8    # "e":Ljava/io/IOException;
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown local address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 253
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 254
    .local v8, "e":Ljava/lang/Exception;
    :goto_6
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve local host to set of external addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 253
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_6
.end method

.method public spiStop()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 282
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->rmtNodes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 284
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->disconnectHnd:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 285
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->disconnectHnd:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$DisconnectHandler;

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 287
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->hbSender:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 288
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->hbSender:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 290
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sock:Ljava/net/Socket;

    .line 292
    .local v2, "sock0":Ljava/net/Socket;
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sock:Ljava/net/Socket;

    .line 294
    if-eqz v2, :cond_1

    .line 295
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->leaveLatch:Ljava/util/concurrent/CountDownLatch;

    .line 298
    :try_start_0
    new-instance v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v3}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;-><init>(Ljava/util/UUID;)V

    .line 300
    .local v1, "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->client(Z)V

    .line 302
    invoke-virtual {p0, v2, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 304
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->leaveLatch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->netTimeout:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/CountDownLatch;JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Did not receive node left message for local node (will stop anyway) [sock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_0
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 319
    .end local v1    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockRdr:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 320
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockRdr:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 322
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 323
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 325
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->unregisterMBean()V

    .line 327
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 328
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stopInfo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 329
    :cond_2
    return-void

    .line 310
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 312
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send node left message (will stop anyway) [sock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :cond_3
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 310
    :catch_1
    move-exception v3

    move-object v0, v3

    goto :goto_1
.end method
