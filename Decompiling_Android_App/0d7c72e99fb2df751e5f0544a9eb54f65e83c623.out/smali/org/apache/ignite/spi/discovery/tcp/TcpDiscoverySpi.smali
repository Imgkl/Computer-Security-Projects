.class public Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
.super Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;
.source "TcpDiscoverySpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiMBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$1;,
        Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;,
        Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;,
        Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;,
        Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;,
        Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;,
        Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;,
        Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;,
        Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;,
        Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;
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

.field public static final ATTR_EXT_ADDRS:Ljava/lang/String; = "disc.tcp.ext-addrs"

.field public static final DFLT_IP_FINDER_CLEAN_FREQ:J = 0xea60L

.field public static final DFLT_JOIN_TIMEOUT:J = 0x0L

.field public static final DFLT_MAX_ACK_TIMEOUT:J = 0x927c0L

.field public static final DFLT_MAX_MISSED_CLIENT_HEARTBEATS:I = 0x5

.field public static final DFLT_MAX_MISSED_HEARTBEATS:I = 0x1

.field public static final DFLT_PORT_RANGE:I = 0x64

.field public static final DFLT_RECONNECT_CNT:I = 0xa

.field public static final DFLT_STATS_PRINT_FREQ:J


# instance fields
.field private addrRslvr:Lorg/apache/ignite/configuration/AddressResolver;

.field private chkStatusSnd:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;

.field private clientMsgWorkers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final ctxInitLatch:Ljava/util/concurrent/CountDownLatch;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private debugLog:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private debugMode:Z

.field private debugMsgHist:I

.field private failedNodes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;"
        }
    .end annotation
.end field

.field private final fromAddrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private hbsSnd:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;

.field private ipFinderCleanFreq:J

.field private ipFinderCleaner:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;

.field private ipFinderHasLocAddr:Z

.field private final joinRes:Lorg/apache/ignite/internal/util/lang/GridTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;",
            ">;"
        }
    .end annotation
.end field

.field private joinTimeout:J

.field private leavingNodes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;"
        }
    .end annotation
.end field

.field private locPort:I

.field private locPortRange:I

.field private maxAckTimeout:J

.field private maxMissedClientHbs:I

.field private maxMissedHbs:I

.field private msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

.field private final mux:Ljava/lang/Object;

.field private final noResAddrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private nodeAuth:Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;

.field private final pingMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/net/InetSocketAddress;",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final readers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;",
            ">;"
        }
    .end annotation
.end field

.field private reconCnt:I

.field private final ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private statsPrintFreq:J

.field private statsPrinter:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;

.field private tcpSrvr:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;

.field private final topHist:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 150
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;-><init>()V

    .line 182
    const v0, 0xb98c

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locPort:I

    .line 185
    const/16 v0, 0x64

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locPortRange:I

    .line 188
    iput-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->statsPrintFreq:J

    .line 192
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxAckTimeout:J

    .line 195
    iput-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->joinTimeout:J

    .line 199
    iput v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxMissedHbs:I

    .line 202
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxMissedClientHbs:I

    .line 205
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinderCleanFreq:J

    .line 209
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->reconCnt:I

    .line 213
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    invoke-direct {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    .line 217
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->topHist:Ljava/util/SortedMap;

    .line 220
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->readers:Ljava/util/Collection;

    .line 230
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->clientMsgWorkers:Ljava/util/concurrent/ConcurrentMap;

    .line 249
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->failedNodes:Ljava/util/Collection;

    .line 252
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->leavingNodes:Ljava/util/Collection;

    .line 258
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->noResAddrs:Ljava/util/Collection;

    .line 261
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->fromAddrs:Ljava/util/Collection;

    .line 264
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->t1()Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->joinRes:Lorg/apache/ignite/internal/util/lang/GridTuple;

    .line 267
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ctxInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 274
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    .line 277
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->pingMap:Ljava/util/concurrent/ConcurrentMap;

    .line 284
    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMsgHist:I

    .line 5181
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxMissedHbs:I

    return v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinderCleanFreq:J

    return-wide v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Ljava/util/LinkedHashSet;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p1, "x1"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->getNodeAddresses(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/net/InetSocketAddress;Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p1, "x1"    # Ljava/net/InetSocketAddress;
    .param p2, "x2"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->pingNode(Ljava/net/InetSocketAddress;Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMode:Z

    return v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->clientMsgWorkers:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->failedNodes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Z)Ljava/util/LinkedHashSet;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p1, "x1"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .param p2, "x2"    # Z

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->getNodeAddresses(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Z)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->reconCnt:I

    return v0
.end method

.method static synthetic access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$2800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;J)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p1, "x1"    # J

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->checkAckTimeout(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Ljava/util/UUID;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p1, "x1"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .param p2, "x2"    # Ljava/util/UUID;
    .param p3, "x3"    # Ljava/util/Collection;
    .param p4, "x4"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->prepareNodeAddedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Ljava/util/UUID;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteUuid;)V

    return-void
.end method

.method static synthetic access$3200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p1, "x1"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->clearNodeAddedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    return-void
.end method

.method static synthetic access$3300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p1, "x1"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->pingNode(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->nodeAuth:Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p1, "x1"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->unmarshalCredentials(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Ljava/net/InetSocketAddress;Ljava/net/Socket;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p1, "x1"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .param p2, "x2"    # Ljava/net/InetSocketAddress;
    .param p3, "x3"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->sendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Ljava/net/InetSocketAddress;Ljava/net/Socket;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxMissedClientHbs:I

    return v0
.end method

.method static synthetic access$4100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p1, "x1"    # Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;
    .param p2, "x2"    # Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->permissionsEqual(Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/SortedMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->topHist:Ljava/util/SortedMap;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->notifyDiscovery(IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V

    return-void
.end method

.method static synthetic access$4700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->leavingNodes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->isLocalNodeCoordinator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locPort:I

    return v0
.end method

.method static synthetic access$5600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locPortRange:I

    return v0
.end method

.method static synthetic access$5700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->readers:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$5800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$5900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiStateCopy()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p1, "x1"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->recordable(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->joinRes:Lorg/apache/ignite/internal/util/lang/GridTuple;

    return-object v0
.end method

.method static synthetic access$6200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->noResAddrs:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$6400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->fromAddrs:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$6500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$6600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->statsPrintFreq:J

    return-wide v0
.end method

.method static synthetic access$6700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->printStatistics()V

    return-void
.end method

.method static synthetic access$6800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$6900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$7000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    return-object v0
.end method

.method private checkAckTimeout(J)Z
    .locals 7
    .param p1, "ackTimeout"    # J

    .prologue
    .line 1718
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxAckTimeout:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1719
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acknowledgement timeout is greater than maximum acknowledgement timeout (consider increasing \'maxAckTimeout\' configuration property) [ackTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maxAckTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxAckTimeout:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1723
    const/4 v0, 0x0

    .line 1726
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearNodeAddedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 3
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    const/4 v2, 0x0

    .line 1969
    instance-of v1, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1971
    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;

    .line 1973
    .local v0, "nodeAddedMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;
    invoke-virtual {v0, v2}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->topology(Ljava/util/Collection;)V

    .line 1974
    invoke-virtual {v0, v2}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->topologyHistory(Ljava/util/Map;)V

    .line 1975
    invoke-virtual {v0, v2, v2}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->messages(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1977
    .end local v0    # "nodeAddedMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;
    :cond_0
    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2141
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMode:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2143
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "[HH:mm:ss,SSS]"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v4}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2148
    .local v2, "msg0":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    .line 2150
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v3

    iget v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMsgHist:I

    sub-int v0, v3, v4

    .line 2152
    .local v0, "delta":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v3

    iget v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMsgHist:I

    if-le v3, v4, :cond_1

    .line 2153
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->poll()Ljava/lang/Object;

    .line 2152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2154
    :cond_1
    return-void
.end method

.method private getNodeAddresses(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Ljava/util/LinkedHashSet;
    .locals 3
    .param p1, "node"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1799
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->socketAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1801
    .local v1, "res":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/net/InetSocketAddress;>;"
    const-string v2, "disc.tcp.ext-addrs"

    invoke-virtual {p0, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1803
    .local v0, "extAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    if-eqz v0, :cond_0

    .line 1804
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 1806
    :cond_0
    return-object v1
.end method

.method private getNodeAddresses(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Z)Ljava/util/LinkedHashSet;
    .locals 4
    .param p1, "node"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .param p2, "sameHost"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            "Z)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1818
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->socketAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 1820
    .local v0, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->inetAddressesComparator(Z)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1822
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1824
    .local v2, "res":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/net/InetSocketAddress;>;"
    const-string v3, "disc.tcp.ext-addrs"

    invoke-virtual {p0, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1826
    .local v1, "extAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    if-eqz v1, :cond_0

    .line 1827
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 1829
    :cond_0
    return-object v2
.end method

.method private ipFinderHasLocalAddress()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 1067
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNodeAddrs:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    .line 1068
    .local v4, "locAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->registeredAddresses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 1070
    .local v0, "addr":Ljava/net/InetSocketAddress;
    :try_start_0
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    .line 1072
    .local v5, "port":I
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1076
    .local v6, "resolved":Ljava/net/InetSocketAddress;
    :goto_1
    invoke-virtual {v6, v4}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1077
    const/4 v7, 0x1

    .line 1084
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "locAddr":Ljava/net/InetSocketAddress;
    .end local v5    # "port":I
    .end local v6    # "resolved":Ljava/net/InetSocketAddress;
    :goto_2
    return v7

    .line 1072
    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "locAddr":Ljava/net/InetSocketAddress;
    .restart local v5    # "port":I
    :cond_2
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1079
    .end local v5    # "port":I
    :catch_0
    move-exception v1

    .line 1080
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1084
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "locAddr":Ljava/net/InetSocketAddress;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private isLocalNodeCoordinator()Z
    .locals 4

    .prologue
    .line 1839
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 1840
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    sget-object v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->resolveCoordinator()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1842
    .local v0, "crd":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1843
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onBecomingCoordinator()V

    .line 1845
    :cond_0
    monitor-exit v2

    return v0

    .line 1840
    .end local v0    # "crd":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1846
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private joinTopology()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1259
    :try_start_0
    sget-boolean v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    sget-object v19, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v19

    if-eq v13, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    sget-object v19, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->DISCONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v19

    if-eq v13, v0, :cond_0

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 1262
    :catchall_0
    move-exception v13

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 1261
    :cond_0
    :try_start_1
    sget-object v13, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 1262
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1264
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->getAttributes()Ljava/util/Map;

    move-result-object v13

    const-string v18, "org.apache.ignite.security.cred"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    .line 1268
    .local v8, "locCred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->marshalCredentials(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V

    .line 1271
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->sendJoinRequestMessage()Z

    move-result v13

    if-nez v13, :cond_4

    .line 1272
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1273
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v18, "Join request message has not been sent (local node is the first in the topology)."

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1275
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->nodeAuth:Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;

    if-eqz v13, :cond_3

    .line 1278
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->nodeAuth:Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v13, v0, v8}, Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;->authenticateNode(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/plugin/security/GridSecurityCredentials;)Lorg/apache/ignite/internal/processors/security/SecurityContext;

    move-result-object v12

    .line 1280
    .local v12, "subj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    if-nez v12, :cond_2

    .line 1281
    new-instance v13, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Authentication failed for local node: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Lorg/apache/ignite/IgniteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1291
    .end local v12    # "subj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :catch_0
    move-exception v5

    .line 1292
    .local v5, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v13, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v18, "Failed to authenticate local node (will shutdown local node)."

    move-object/from16 v0, v18

    invoke-direct {v13, v0, v5}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 1283
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v12    # "subj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :cond_2
    :try_start_3
    new-instance v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attributes()Ljava/util/Map;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1285
    .local v4, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v13, "org.apache.ignite.security.subject"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v4, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    const-string v13, "org.apache.ignite.security.cred"

    invoke-interface {v4, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v13, v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->setAttributes(Ljava/util/Map;)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1296
    .end local v4    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "subj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    const-wide/16 v18, 0x1

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->order(J)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    const-wide/16 v18, 0x1

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder(J)V

    .line 1299
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->gridStartTime:J

    .line 1301
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible(Z)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->clear()V

    .line 1305
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    const-wide/16 v18, 0x1

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->topologyVersion(J)Z

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1308
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->topHist:Ljava/util/SortedMap;

    invoke-interface {v13}, Ljava/util/SortedMap;->clear()V

    .line 1310
    sget-object v13, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 1312
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1313
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1315
    const/16 v13, 0xa

    const-wide/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v13, v1, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->notifyDiscovery(IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V

    .line 1373
    :goto_2
    sget-boolean v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->order()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v13, v18, v20

    if-nez v13, :cond_e

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 1313
    :catchall_1
    move-exception v13

    :try_start_5
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v13

    .line 1320
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1321
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v18, "Join request message has been sent (waiting for coordinator response)."

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1323
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1324
    :try_start_6
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->netTimeout:J

    move-wide/from16 v22, v0

    add-long v14, v20, v22

    .line 1326
    .local v14, "threshold":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->netTimeout:J

    move-wide/from16 v16, v0

    .line 1328
    .local v16, "timeout":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    sget-object v19, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v0, v19

    if-ne v13, v0, :cond_6

    const-wide/16 v20, 0x0

    cmp-long v13, v16, v20

    if-lez v13, :cond_6

    .line 1330
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 1332
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-wide v20

    sub-long v16, v14, v20

    goto :goto_3

    .line 1334
    :catch_1
    move-exception v7

    .line 1335
    .local v7, "ignored":Ljava/lang/InterruptedException;
    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->interrupt()V

    .line 1337
    new-instance v13, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v19, "Thread has been interrupted."

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1370
    .end local v7    # "ignored":Ljava/lang/InterruptedException;
    .end local v14    # "threshold":J
    .end local v16    # "timeout":J
    :catchall_2
    move-exception v13

    monitor-exit v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v13

    .line 1341
    .restart local v14    # "threshold":J
    .restart local v16    # "timeout":J
    :cond_6
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    sget-object v19, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v19

    if-ne v13, v0, :cond_7

    .line 1342
    monitor-exit v18

    goto/16 :goto_2

    .line 1343
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    sget-object v19, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->DUPLICATE_ID:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v19

    if-ne v13, v0, :cond_8

    .line 1344
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->joinRes:Lorg/apache/ignite/internal/util/lang/GridTuple;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->duplicateIdError(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;)Lorg/apache/ignite/spi/IgniteSpiException;

    move-result-object v13

    throw v13

    .line 1345
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    sget-object v19, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->AUTH_FAILED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v19

    if-ne v13, v0, :cond_9

    .line 1346
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->joinRes:Lorg/apache/ignite/internal/util/lang/GridTuple;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->authenticationFailedError(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;)Lorg/apache/ignite/spi/IgniteSpiException;

    move-result-object v13

    throw v13

    .line 1347
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    sget-object v19, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CHECK_FAILED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v19

    if-ne v13, v0, :cond_a

    .line 1348
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->joinRes:Lorg/apache/ignite/internal/util/lang/GridTuple;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->checkFailedError(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;)Lorg/apache/ignite/spi/IgniteSpiException;

    move-result-object v13

    throw v13

    .line 1349
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    sget-object v19, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->LOOPBACK_PROBLEM:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v19

    if-ne v13, v0, :cond_d

    .line 1350
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->joinRes:Lorg/apache/ignite/internal/util/lang/GridTuple;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryLoopbackProblemMessage;

    .line 1352
    .local v10, "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryLoopbackProblemMessage;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v13}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    .line 1354
    .local v9, "locHostLoopback":Z
    if-eqz v9, :cond_b

    const-string v6, "local"

    .line 1356
    .local v6, "firstNode":Ljava/lang/String;
    :goto_4
    if-eqz v9, :cond_c

    const-string v11, "remote"

    .line 1358
    .local v11, "secondNode":Ljava/lang/String;
    :goto_5
    new-instance v13, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to add node to topology because "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " node is configured to use loopback address, but "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " node is not "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "(consider changing \'localAddress\' configuration parameter) "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "[locNodeAddrs="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", rmtNodeAddrs="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryLoopbackProblemMessage;->addresses()Ljava/util/Collection;

    move-result-object v20

    invoke-virtual {v10}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryLoopbackProblemMessage;->hostNames()Ljava/util/Collection;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1354
    .end local v6    # "firstNode":Ljava/lang/String;
    .end local v11    # "secondNode":Ljava/lang/String;
    :cond_b
    const-string v6, "remote"

    goto :goto_4

    .line 1356
    .restart local v6    # "firstNode":Ljava/lang/String;
    :cond_c
    const-string v11, "local"

    goto :goto_5

    .line 1365
    .end local v6    # "firstNode":Ljava/lang/String;
    .end local v9    # "locHostLoopback":Z
    .end local v10    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryLoopbackProblemMessage;
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Node has not been connected to topology and will repeat join process. Check remote nodes logs for possible error messages. Note that large topology may require significant time to start. Increase \'GridTcpDiscoverySpi.networkTimeout\' configuration property if getting this message on the starting nodes [networkTimeout="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->netTimeout:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5d

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v13, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1370
    monitor-exit v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_0

    .line 1374
    .end local v14    # "threshold":J
    .end local v16    # "timeout":J
    :cond_e
    sget-boolean v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v13, v18, v20

    if-nez v13, :cond_f

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 1376
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1377
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Discovery SPI has been connected to topology with order: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1378
    :cond_10
    return-void

    .line 1291
    :catch_2
    move-exception v5

    goto/16 :goto_1
.end method

.method private marshalCredentials(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V
    .locals 5
    .param p1, "node"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 1679
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1681
    .local v0, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "org.apache.ignite.security.cred"

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    const-string v4, "org.apache.ignite.security.cred"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    invoke-virtual {p1, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->setAttributes(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1689
    return-void

    .line 1686
    .end local v0    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 1687
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to marshal node security credentials: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private notifyDiscovery(IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "topVer"    # J
    .param p4, "node"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .prologue
    const/16 v4, 0x5d

    .line 1737
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gtz p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1738
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p4, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1740
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->lsnr:Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;

    .line 1742
    .local v0, "lsnr":Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiStateCopy()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v8

    .line 1744
    .local v8, "spiState":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    if-eqz v0, :cond_5

    invoke-virtual {p4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    if-eq v8, v1, :cond_2

    sget-object v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->DISCONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    if-ne v8, v1, :cond_5

    .line 1745
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1746
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discovery notification [node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", spiState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEventName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", topVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1749
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    invoke-virtual {v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->visibleNodes()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->upcast(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    .line 1751
    .local v5, "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-direct {p0, p2, p3, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->updateTopologyHistory(JLjava/util/Collection;)Ljava/util/Map;

    move-result-object v6

    .line 1753
    .local v6, "hist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    const/4 v7, 0x0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-interface/range {v0 .. v7}, Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;->onDiscovery(IJLorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Ljava/util/Map;Ljava/io/Serializable;)V

    .line 1758
    .end local v5    # "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v6    # "hist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    :cond_4
    :goto_0
    return-void

    .line 1755
    :cond_5
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1756
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped discovery notification [node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", spiState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEventName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", topVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1789
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->getExceptionRegistry()Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1790
    return-void
.end method

.method private onSpiStart()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 809
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->startStopwatch()V

    .line 811
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    const-string v5, "ipFinder != null"

    invoke-virtual {p0, v2, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 812
    iget-wide v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinderCleanFreq:J

    cmp-long v2, v6, v10

    if-lez v2, :cond_5

    move v2, v3

    :goto_1
    const-string v5, "ipFinderCleanFreq > 0"

    invoke-virtual {p0, v2, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 813
    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locPort:I

    const/16 v5, 0x3ff

    if-le v2, v5, :cond_6

    move v2, v3

    :goto_2
    const-string v5, "localPort > 1023"

    invoke-virtual {p0, v2, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 814
    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locPortRange:I

    if-ltz v2, :cond_7

    move v2, v3

    :goto_3
    const-string v5, "localPortRange >= 0"

    invoke-virtual {p0, v2, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 815
    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locPort:I

    iget v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locPortRange:I

    add-int/2addr v2, v5

    const v5, 0xffff

    if-gt v2, v5, :cond_8

    move v2, v3

    :goto_4
    const-string v5, "locPort + locPortRange <= 0xffff"

    invoke-virtual {p0, v2, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 816
    iget-wide v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->netTimeout:J

    cmp-long v2, v6, v10

    if-lez v2, :cond_9

    move v2, v3

    :goto_5
    const-string v5, "networkTimeout > 0"

    invoke-virtual {p0, v2, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 817
    iget-wide v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->sockTimeout:J

    cmp-long v2, v6, v10

    if-lez v2, :cond_a

    move v2, v3

    :goto_6
    const-string v5, "sockTimeout > 0"

    invoke-virtual {p0, v2, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 818
    iget-wide v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ackTimeout:J

    cmp-long v2, v6, v10

    if-lez v2, :cond_b

    move v2, v3

    :goto_7
    const-string v5, "ackTimeout > 0"

    invoke-virtual {p0, v2, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 819
    iget-wide v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxAckTimeout:J

    iget-wide v8, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ackTimeout:J

    cmp-long v2, v6, v8

    if-lez v2, :cond_c

    move v2, v3

    :goto_8
    const-string v5, "maxAckTimeout > ackTimeout"

    invoke-virtual {p0, v2, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 820
    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->reconCnt:I

    if-lez v2, :cond_d

    move v2, v3

    :goto_9
    const-string v5, "reconnectCnt > 0"

    invoke-virtual {p0, v2, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 821
    iget-wide v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->hbFreq:J

    cmp-long v2, v6, v10

    if-lez v2, :cond_e

    move v2, v3

    :goto_a
    const-string v5, "heartbeatFreq > 0"

    invoke-virtual {p0, v2, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 822
    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxMissedHbs:I

    if-lez v2, :cond_f

    move v2, v3

    :goto_b
    const-string v5, "maxMissedHeartbeats > 0"

    invoke-virtual {p0, v2, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 823
    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxMissedClientHbs:I

    if-lez v2, :cond_10

    move v2, v3

    :goto_c
    const-string v5, "maxMissedClientHeartbeats > 0"

    invoke-virtual {p0, v2, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 824
    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->threadPri:I

    if-lez v2, :cond_11

    move v2, v3

    :goto_d
    const-string/jumbo v5, "threadPri > 0"

    invoke-virtual {p0, v2, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 825
    iget-wide v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->statsPrintFreq:J

    cmp-long v2, v6, v10

    if-ltz v2, :cond_12

    :goto_e
    const-string v2, "statsPrintFreq >= 0"

    invoke-virtual {p0, v3, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->assertParameter(ZLjava/lang/String;)V

    .line 828
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locAddr:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveLocalHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locHost:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 835
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "localHost"

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 836
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "localPort"

    iget v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locPort:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 837
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "localPortRange"

    iget v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locPortRange:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 838
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string/jumbo v3, "threadPri"

    iget v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->threadPri:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 839
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "networkTimeout"

    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->netTimeout:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 840
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "sockTimeout"

    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->sockTimeout:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 841
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "ackTimeout"

    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ackTimeout:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 842
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "maxAckTimeout"

    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxAckTimeout:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 843
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "reconnectCount"

    iget v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->reconCnt:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 844
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "ipFinder"

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 845
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "ipFinderCleanFreq"

    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinderCleanFreq:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 846
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "heartbeatFreq"

    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->hbFreq:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 847
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "maxMissedHeartbeats"

    iget v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxMissedHbs:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 848
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "statsPrintFreq"

    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->statsPrintFreq:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 852
    :cond_0
    iget-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->netTimeout:J

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 853
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network timeout is too low (at least 3000 ms recommended): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->netTimeout:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 856
    :cond_1
    iget-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->hbFreq:J

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 857
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Heartbeat frequency is too high (at least 2000 ms recommended): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->hbFreq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 859
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v2}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiMBean;

    invoke-virtual {p0, v2, p0, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 861
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    instance-of v2, v2, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    if-eqz v2, :cond_3

    .line 862
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    check-cast v1, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    .line 864
    .local v1, "mcastIpFinder":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;
    invoke-virtual {v1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->getLocalAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 865
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;->setLocalAddress(Ljava/lang/String;)V

    .line 867
    .end local v1    # "mcastIpFinder":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;
    :cond_3
    return-void

    :cond_4
    move v2, v4

    .line 811
    goto/16 :goto_0

    :cond_5
    move v2, v4

    .line 812
    goto/16 :goto_1

    :cond_6
    move v2, v4

    .line 813
    goto/16 :goto_2

    :cond_7
    move v2, v4

    .line 814
    goto/16 :goto_3

    :cond_8
    move v2, v4

    .line 815
    goto/16 :goto_4

    :cond_9
    move v2, v4

    .line 816
    goto/16 :goto_5

    :cond_a
    move v2, v4

    .line 817
    goto/16 :goto_6

    :cond_b
    move v2, v4

    .line 818
    goto/16 :goto_7

    :cond_c
    move v2, v4

    .line 819
    goto/16 :goto_8

    :cond_d
    move v2, v4

    .line 820
    goto/16 :goto_9

    :cond_e
    move v2, v4

    .line 821
    goto/16 :goto_a

    :cond_f
    move v2, v4

    .line 822
    goto/16 :goto_b

    :cond_10
    move v2, v4

    .line 823
    goto/16 :goto_c

    :cond_11
    move v2, v4

    .line 824
    goto/16 :goto_d

    :cond_12
    move v3, v4

    .line 825
    goto/16 :goto_e

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown local address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private permissionsEqual(Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;)Z
    .locals 6
    .param p1, "locPerms"    # Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;
    .param p2, "rmtPerms"    # Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2186
    invoke-interface {p1}, Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;->defaultAllowAll()Z

    move-result v4

    invoke-interface {p2}, Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;->defaultAllowAll()Z

    move-result v5

    xor-int/2addr v4, v5

    if-nez v4, :cond_0

    move v1, v2

    .line 2188
    .local v1, "dfltAllowMatch":Z
    :goto_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;->systemPermissions()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;->systemPermissions()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->eqNotOrdered(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;->cachePermissions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;->cachePermissions()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->eqNotOrdered(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;->taskPermissions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;->taskPermissions()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->eqNotOrdered(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 2192
    .local v0, "bothHaveSamePerms":Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    return v2

    .end local v0    # "bothHaveSamePerms":Z
    .end local v1    # "dfltAllowMatch":Z
    :cond_0
    move v1, v3

    .line 2186
    goto :goto_0

    .restart local v1    # "dfltAllowMatch":Z
    :cond_1
    move v0, v3

    .line 2188
    goto :goto_1

    .restart local v0    # "bothHaveSamePerms":Z
    :cond_2
    move v2, v3

    .line 2192
    goto :goto_2
.end method

.method private pingNode(Ljava/net/InetSocketAddress;Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 22
    .param p1, "addr"    # Ljava/net/InetSocketAddress;
    .param p2, "clientNodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1161
    sget-boolean v17, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    if-nez p1, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1163
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v11

    .line 1165
    .local v11, "locNodeId":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNodeAddrs:Ljava/util/Collection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v17

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v17

    .line 1233
    :goto_0
    return-object v17

    .line 1168
    :cond_1
    new-instance v9, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v9}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 1170
    .local v9, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/UUID;Ljava/lang/Boolean;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->pingMap:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v9}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 1172
    .local v12, "oldFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/UUID;Ljava/lang/Boolean;>;>;"
    if-eqz v12, :cond_2

    .line 1173
    invoke-interface {v12}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/lang/IgniteBiTuple;

    goto :goto_0

    .line 1175
    :cond_2
    const/4 v7, 0x0

    .line 1178
    .local v7, "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    const/4 v14, 0x0

    .line 1180
    .local v14, "sock":Ljava/net/Socket;
    const/4 v10, 0x0

    .local v10, "i":I
    move-object v8, v7

    .end local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .local v8, "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    move-object/from16 v4, p1

    .end local p1    # "addr":Ljava/net/InetSocketAddress;
    .local v4, "addr":Ljava/net/InetSocketAddress;
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->reconCnt:I

    move/from16 v17, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v0, v17

    if-ge v10, v0, :cond_d

    .line 1182
    :try_start_1
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1183
    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v20

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1185
    .end local v4    # "addr":Ljava/net/InetSocketAddress;
    .restart local p1    # "addr":Ljava/net/InetSocketAddress;
    :goto_2
    :try_start_2
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v18

    .line 1187
    .local v18, "tstamp":J
    invoke-virtual/range {p0 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->openSocket(Ljava/net/InetSocketAddress;)Ljava/net/Socket;

    move-result-object v14

    .line 1189
    new-instance v17, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingRequest;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingRequest;-><init>(Ljava/util/UUID;Ljava/util/UUID;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 1191
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->netTimeout:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v20

    invoke-virtual {v0, v14, v1, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->readMessage(Ljava/net/Socket;Ljava/io/InputStream;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;

    .line 1193
    .local v13, "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;
    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;->creatorNodeId()Ljava/util/UUID;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v17, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Ping response from local node: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1215
    :cond_3
    :try_start_3
    invoke-static {v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1225
    .end local v13    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;
    .end local v18    # "tstamp":J
    :goto_3
    invoke-virtual {v9}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v17

    if-nez v17, :cond_4

    .line 1226
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to ping node by address: "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->exceptionWithSuppressed(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 1228
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->pingMap:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v9}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 1230
    .local v5, "b":Z
    sget-boolean v17, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v17, :cond_a

    if-nez v5, :cond_a

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1200
    .end local v5    # "b":Z
    .restart local v13    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;
    .restart local v18    # "tstamp":J
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    move-object/from16 v17, v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onClientSocketInitialized(J)V

    .line 1202
    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;->creatorNodeId()Ljava/util/UUID;

    move-result-object v17

    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;->clientExists()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v16

    .line 1204
    .local v16, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/UUID;Ljava/lang/Boolean;>;"
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1215
    :try_start_5
    invoke-static {v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1225
    invoke-virtual {v9}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v17

    if-nez v17, :cond_6

    .line 1226
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to ping node by address: "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->exceptionWithSuppressed(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 1228
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->pingMap:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v9}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 1230
    .restart local v5    # "b":Z
    sget-boolean v17, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v17, :cond_7

    if-nez v5, :cond_7

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    :cond_7
    move-object/from16 v17, v16

    .line 1231
    goto/16 :goto_0

    .line 1208
    .end local v5    # "b":Z
    .end local v13    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;
    .end local v16    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/UUID;Ljava/lang/Boolean;>;"
    .end local v18    # "tstamp":J
    .end local p1    # "addr":Ljava/net/InetSocketAddress;
    .restart local v4    # "addr":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v17

    move-object/from16 p1, v4

    .end local v4    # "addr":Ljava/net/InetSocketAddress;
    .restart local p1    # "addr":Ljava/net/InetSocketAddress;
    :goto_4
    move-object/from16 v6, v17

    .line 1209
    .local v6, "e":Ljava/lang/Exception;
    :goto_5
    if-nez v8, :cond_b

    .line 1210
    :try_start_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1212
    .end local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :goto_6
    :try_start_7
    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1215
    :try_start_8
    invoke-static {v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1180
    add-int/lit8 v10, v10, 0x1

    move-object v8, v7

    .end local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    move-object/from16 v4, p1

    .end local p1    # "addr":Ljava/net/InetSocketAddress;
    .restart local v4    # "addr":Ljava/net/InetSocketAddress;
    goto/16 :goto_1

    .line 1215
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    move-object v7, v8

    .end local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    move-object/from16 p1, v4

    .end local v4    # "addr":Ljava/net/InetSocketAddress;
    .restart local p1    # "addr":Ljava/net/InetSocketAddress;
    :goto_7
    invoke-static {v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v17
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1219
    :catch_1
    move-exception v15

    .line 1220
    .local v15, "t":Ljava/lang/Throwable;
    :goto_8
    :try_start_9
    invoke-virtual {v9, v15}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 1222
    invoke-static {v15}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v17

    throw v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1225
    .end local v15    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v17

    :goto_9
    invoke-virtual {v9}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v20

    if-nez v20, :cond_8

    .line 1226
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to ping node by address: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->exceptionWithSuppressed(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 1228
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->pingMap:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v9}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 1230
    .restart local v5    # "b":Z
    sget-boolean v20, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v20, :cond_9

    if-nez v5, :cond_9

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1231
    :cond_9
    throw v17

    .line 1233
    .end local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :cond_a
    invoke-virtual {v9}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/lang/IgniteBiTuple;

    goto/16 :goto_0

    .line 1208
    .end local v5    # "b":Z
    .end local p1    # "addr":Ljava/net/InetSocketAddress;
    .restart local v4    # "addr":Ljava/net/InetSocketAddress;
    :catch_2
    move-exception v17

    move-object/from16 p1, v4

    .end local v4    # "addr":Ljava/net/InetSocketAddress;
    .restart local p1    # "addr":Ljava/net/InetSocketAddress;
    :goto_a
    move-object/from16 v6, v17

    goto :goto_5

    .line 1225
    .end local p1    # "addr":Ljava/net/InetSocketAddress;
    .restart local v4    # "addr":Ljava/net/InetSocketAddress;
    :catchall_2
    move-exception v17

    move-object v7, v8

    .end local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    move-object/from16 p1, v4

    .end local v4    # "addr":Ljava/net/InetSocketAddress;
    .restart local p1    # "addr":Ljava/net/InetSocketAddress;
    goto :goto_9

    .end local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v13    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;
    .restart local v18    # "tstamp":J
    :catchall_3
    move-exception v17

    move-object v7, v8

    .end local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    goto :goto_9

    .line 1219
    .end local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .end local v13    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;
    .end local v18    # "tstamp":J
    .end local p1    # "addr":Ljava/net/InetSocketAddress;
    .restart local v4    # "addr":Ljava/net/InetSocketAddress;
    .restart local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :catch_3
    move-exception v15

    move-object v7, v8

    .end local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    move-object/from16 p1, v4

    .end local v4    # "addr":Ljava/net/InetSocketAddress;
    .restart local p1    # "addr":Ljava/net/InetSocketAddress;
    goto :goto_8

    .end local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v13    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;
    .restart local v18    # "tstamp":J
    :catch_4
    move-exception v15

    move-object v7, v8

    .end local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    goto :goto_8

    .line 1215
    .end local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .end local v13    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;
    .end local v18    # "tstamp":J
    .restart local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :catchall_4
    move-exception v17

    move-object v7, v8

    .end local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    goto :goto_7

    .restart local v6    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v17

    goto :goto_7

    .line 1208
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :catch_5
    move-exception v17

    goto :goto_a

    :catch_6
    move-exception v17

    goto/16 :goto_4

    .restart local v6    # "e":Ljava/lang/Exception;
    :cond_b
    move-object v7, v8

    .end local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    goto/16 :goto_6

    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .end local p1    # "addr":Ljava/net/InetSocketAddress;
    .restart local v4    # "addr":Ljava/net/InetSocketAddress;
    .restart local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :cond_c
    move-object/from16 p1, v4

    .end local v4    # "addr":Ljava/net/InetSocketAddress;
    .restart local p1    # "addr":Ljava/net/InetSocketAddress;
    goto/16 :goto_2

    .end local p1    # "addr":Ljava/net/InetSocketAddress;
    .restart local v4    # "addr":Ljava/net/InetSocketAddress;
    :cond_d
    move-object/from16 p1, v4

    .end local v4    # "addr":Ljava/net/InetSocketAddress;
    .restart local p1    # "addr":Ljava/net/InetSocketAddress;
    goto/16 :goto_3
.end method

.method private pingNode(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z
    .locals 11
    .param p1, "node"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .prologue
    const/16 v10, 0x5d

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1117
    sget-boolean v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1119
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v5

    iget-object v8, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v8}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v7, v6

    .line 1149
    :cond_1
    :goto_0
    return v7

    .line 1122
    :cond_2
    const/4 v1, 0x0

    .line 1124
    .local v1, "clientNodeId":Ljava/util/UUID;
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->isClient()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1125
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v1

    .line 1127
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->clientRouterNodeId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object p1

    .line 1129
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1133
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-static {v5, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sameMacs(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v5

    invoke-direct {p0, p1, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->getNodeAddresses(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Z)Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 1136
    .local v0, "addr":Ljava/net/InetSocketAddress;
    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->pingNode(Ljava/net/InetSocketAddress;Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v4

    .line 1138
    .local v4, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/UUID;Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v4}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move v5, v6

    :goto_2
    move v7, v5

    goto :goto_0

    :cond_5
    move v5, v7

    goto :goto_2

    .line 1140
    .end local v4    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/UUID;Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v2

    .line 1141
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1142
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to ping node [node="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", err="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1144
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to ping node [node="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", err="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method private prepareNodeAddedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Ljava/util/UUID;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 14
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .param p2, "destNodeId"    # Ljava/util/UUID;
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "discardMsgId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1929
    .local p3, "msgs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;>;"
    sget-boolean v9, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p2, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1931
    :cond_0
    instance-of v9, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;

    if-eqz v9, :cond_4

    move-object v7, p1

    .line 1932
    check-cast v7, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;

    .line 1934
    .local v7, "nodeAddedMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;
    invoke-virtual {v7}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->node()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v6

    .line 1936
    .local v6, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1937
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    invoke-virtual {v9}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->allNodes()Ljava/util/Collection;

    move-result-object v2

    .line 1938
    .local v2, "allNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1940
    .local v8, "topToSend":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 1941
    .local v5, "n0":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    sget-boolean v9, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v9, :cond_2

    invoke-virtual {v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 1947
    :cond_2
    invoke-virtual {v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v10

    invoke-virtual {v7}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->node()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-gez v9, :cond_1

    .line 1948
    invoke-interface {v8, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1951
    .end local v5    # "n0":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_3
    invoke-virtual {v7, v8}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->topology(Ljava/util/Collection;)V

    .line 1952
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v7, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->messages(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1956
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    monitor-enter v10

    .line 1957
    :try_start_0
    new-instance v3, Ljava/util/TreeMap;

    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->topHist:Ljava/util/SortedMap;

    invoke-direct {v3, v9}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    .line 1958
    .local v3, "hist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1960
    invoke-virtual {v7, v3}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->topologyHistory(Ljava/util/Map;)V

    .line 1963
    .end local v2    # "allNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .end local v3    # "hist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .end local v7    # "nodeAddedMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;
    .end local v8    # "topToSend":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :cond_4
    return-void

    .line 1958
    .restart local v2    # "allNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .restart local v7    # "nodeAddedMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;
    .restart local v8    # "topToSend":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method

.method private printStatistics()V
    .locals 12

    .prologue
    const-wide/32 v10, 0x100000

    .line 1897
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->statsPrintFreq:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1901
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    monitor-enter v5

    .line 1902
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->failedNodes:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1903
    .local v1, "failedNodesSize":I
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->leavingNodes:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v2

    .line 1904
    .local v2, "leavingNodesSize":I
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1906
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 1908
    .local v3, "runtime":Ljava/lang/Runtime;
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->resolveCoordinator()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v0

    .line 1910
    .local v0, "coord":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discovery SPI statistics [statistics="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", spiState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiStateCopy()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", coord="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", topSize="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->allNodes()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", leavingNodesSize="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", failedNodesSize="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", msgWorker.queue.size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->queueSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", lastUpdate="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->lastUpdateTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->format(J)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", heapFree="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    div-long/2addr v6, v10

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "M, heapTotal="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    div-long/2addr v6, v10

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "M]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 1919
    .end local v0    # "coord":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .end local v1    # "failedNodesSize":I
    .end local v2    # "leavingNodesSize":I
    .end local v3    # "runtime":Ljava/lang/Runtime;
    :cond_0
    return-void

    .line 1904
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1910
    .restart local v0    # "coord":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .restart local v1    # "failedNodesSize":I
    .restart local v2    # "leavingNodesSize":I
    .restart local v3    # "runtime":Ljava/lang/Runtime;
    :cond_1
    const-string v4, "N/A"

    goto :goto_0

    :cond_2
    const-string v4, "N/A"

    goto :goto_1
.end method

.method private recordable(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)Z
    .locals 1
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    .line 2161
    instance-of v0, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerLocalNodeAddress()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 782
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->socketAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->initializeLocalAddresses(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_1

    .line 803
    return-void

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register local node address with IP finder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->socketAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 791
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 792
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Failed to register local node address in IP finder on start (retrying every 2000 ms)."

    invoke-static {v1, v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 797
    const-wide/16 v2, 0x7d0

    :try_start_1
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 799
    :catch_2
    move-exception v0

    .line 800
    .local v0, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    new-instance v1, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v2, "Thread has been interrupted."

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private resolveCoordinator()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1870
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->resolveCoordinator(Ljava/util/Collection;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v0

    return-object v0
.end method

.method private resolveCoordinator(Ljava/util/Collection;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .locals 5
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ">;)",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1883
    .local p1, "filter":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 1884
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->failedNodes:Ljava/util/Collection;

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->leavingNodes:Ljava/util/Collection;

    invoke-static {v1, v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 1886
    .local v0, "excluded":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1887
    const/4 v1, 0x0

    invoke-static {v1, v0, p1}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 1889
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->coordinator(Ljava/util/Collection;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 1890
    .end local v0    # "excluded":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendJoinRequestMessage()Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 1390
    new-instance v10, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->exchange:Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;->collect(Ljava/util/UUID;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;-><init>(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Ljava/util/Map;)V

    .line 1394
    .local v10, "joinReq":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    const-wide/16 v12, 0x0

    .line 1397
    .local v12, "noResStart":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->resolvedAddresses()Ljava/util/Collection;

    move-result-object v3

    .line 1399
    .local v3, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1400
    const/16 v19, 0x0

    .line 1529
    :cond_0
    :goto_1
    return v19

    .line 1402
    :cond_1
    const/4 v15, 0x0

    .line 1403
    .local v15, "retry":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1405
    .local v6, "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Exception;>;"
    new-instance v11, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v11, v0, v3, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;Ljava/util/Collection;I)V

    .local v11, "multiConnector":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;
    const/16 v20, 0x0

    .line 1408
    :cond_2
    :goto_2
    :try_start_0
    invoke-virtual {v11}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->next()Lorg/apache/ignite/internal/util/lang/GridTuple3;

    move-result-object v17

    .local v17, "tuple":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/net/InetSocketAddress;Ljava/net/Socket;Ljava/lang/Exception;>;"
    if-eqz v17, :cond_e

    .line 1409
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 1410
    .local v2, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get2()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/net/Socket;

    .line 1411
    .local v16, "sock":Ljava/net/Socket;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get3()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Exception;

    .line 1413
    .local v7, "ex":Ljava/lang/Exception;
    if-nez v7, :cond_5

    .line 1414
    sget-boolean v19, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v19, :cond_4

    if-nez v16, :cond_4

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1405
    .end local v2    # "addr":Ljava/net/InetSocketAddress;
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v16    # "sock":Ljava/net/Socket;
    .end local v17    # "tuple":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/net/InetSocketAddress;Ljava/net/Socket;Ljava/lang/Exception;>;"
    :catch_0
    move-exception v19

    :try_start_1
    throw v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1479
    :catchall_0
    move-exception v20

    move-object/from16 v24, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v24

    :goto_3
    if-eqz v11, :cond_3

    if-eqz v20, :cond_12

    :try_start_2
    invoke-virtual {v11}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    :cond_3
    :goto_4
    throw v19

    .line 1417
    .restart local v2    # "addr":Ljava/net/InetSocketAddress;
    .restart local v7    # "ex":Ljava/lang/Exception;
    .restart local v16    # "sock":Ljava/net/Socket;
    .restart local v17    # "tuple":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/net/InetSocketAddress;Ljava/net/Socket;Ljava/lang/Exception;>;"
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v2, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->sendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Ljava/net/InetSocketAddress;Ljava/net/Socket;)Ljava/lang/Integer;

    move-result-object v14

    .line 1419
    .local v14, "res":Ljava/lang/Integer;
    sget-boolean v19, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v19, :cond_7

    if-nez v14, :cond_7

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19
    :try_end_3
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1456
    .end local v14    # "res":Ljava/lang/Integer;
    :catch_1
    move-exception v4

    .line 1457
    .local v4, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :try_start_4
    invoke-virtual {v4}, Lorg/apache/ignite/spi/IgniteSpiException;->printStackTrace()V

    .line 1459
    move-object v7, v4

    .line 1463
    .end local v4    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :cond_5
    :goto_5
    if-eqz v7, :cond_2

    .line 1464
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1467
    const-class v19, Ljava/io/IOException;

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lorg/apache/ignite/internal/util/typedef/X;->cause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v9

    check-cast v9, Ljava/io/IOException;

    .line 1469
    .local v9, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v21, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to send join request message [addr="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, ", msg="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_c

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    :goto_6
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1472
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to send join request message [addr="

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ", msg="

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_d

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1476
    .end local v9    # "ioe":Ljava/io/IOException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->noResAddrs:Ljava/util/Collection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2

    .line 1479
    .end local v2    # "addr":Ljava/net/InetSocketAddress;
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v16    # "sock":Ljava/net/Socket;
    .end local v17    # "tuple":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/net/InetSocketAddress;Ljava/net/Socket;Ljava/lang/Exception;>;"
    :catchall_1
    move-exception v19

    goto/16 :goto_3

    .line 1421
    .restart local v2    # "addr":Ljava/net/InetSocketAddress;
    .restart local v7    # "ex":Ljava/lang/Exception;
    .restart local v14    # "res":Ljava/lang/Integer;
    .restart local v16    # "sock":Ljava/net/Socket;
    .restart local v17    # "tuple":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/net/InetSocketAddress;Ljava/net/Socket;Ljava/lang/Exception;>;"
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->noResAddrs:Ljava/util/Collection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1424
    const-wide/16 v12, 0x0

    .line 1426
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    .line 1442
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v21, 0x64

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->fromAddrs:Ljava/util/Collection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 1444
    const/4 v15, 0x1

    goto/16 :goto_5

    .line 1429
    :sswitch_0
    const/4 v15, 0x1

    .line 1431
    goto/16 :goto_5

    .line 1433
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Join request message has been sent to address [addr="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", req="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x5d

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1438
    :cond_8
    const/16 v19, 0x1

    .line 1479
    if-eqz v11, :cond_0

    if-eqz v20, :cond_9

    :try_start_6
    invoke-virtual {v11}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v18

    .local v18, "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .end local v18    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v11}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->close()V

    goto/16 :goto_1

    .line 1447
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unexpected response to join request: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1450
    :cond_b
    const/4 v15, 0x1

    goto/16 :goto_5

    .line 1469
    .end local v14    # "res":Ljava/lang/Integer;
    .restart local v9    # "ioe":Ljava/io/IOException;
    :cond_c
    :try_start_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v22, 0x5d

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_6

    .line 1472
    :cond_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v21, 0x5d

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v19

    goto/16 :goto_7

    .line 1479
    .end local v2    # "addr":Ljava/net/InetSocketAddress;
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v9    # "ioe":Ljava/io/IOException;
    .end local v16    # "sock":Ljava/net/Socket;
    :cond_e
    if-eqz v11, :cond_f

    if-eqz v20, :cond_11

    :try_start_9
    invoke-virtual {v11}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 1481
    :cond_f
    :goto_8
    if-eqz v15, :cond_13

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    const-string v20, "Concurrent discovery SPI start has been detected (local node should wait)."

    invoke-interface/range {v19 .. v20}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1486
    :cond_10
    const-wide/16 v20, 0x7d0

    :try_start_a
    invoke-static/range {v20 .. v21}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_a
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 1488
    :catch_3
    move-exception v4

    .line 1489
    .local v4, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    new-instance v19, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v20, "Thread has been interrupted."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 1479
    .end local v4    # "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :catch_4
    move-exception v18

    .restart local v18    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    .end local v18    # "x2":Ljava/lang/Throwable;
    :cond_11
    invoke-virtual {v11}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->close()V

    goto :goto_8

    .end local v17    # "tuple":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/net/InetSocketAddress;Ljava/net/Socket;Ljava/lang/Exception;>;"
    :catch_5
    move-exception v18

    .restart local v18    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .end local v18    # "x2":Ljava/lang/Throwable;
    :cond_12
    invoke-virtual {v11}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->close()V

    goto/16 :goto_4

    .line 1492
    .restart local v17    # "tuple":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/net/InetSocketAddress;Ljava/net/Socket;Ljava/lang/Exception;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->isShared()Z

    move-result v19

    if-nez v19, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinderHasLocAddr:Z

    move/from16 v19, v0

    if-nez v19, :cond_18

    .line 1493
    const/4 v4, 0x0

    .line 1495
    .local v4, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_14

    .line 1496
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    .end local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    const-string v19, "Multiple connection attempts failed."

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    .line 1498
    .restart local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Exception;

    .line 1499
    .local v5, "err":Ljava/lang/Exception;
    invoke-virtual {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 1502
    .end local v5    # "err":Ljava/lang/Exception;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_14
    if-eqz v4, :cond_15

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Ljava/net/ConnectException;

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to connect to any address from IP finder (make sure IP finder addresses are correct and firewalls are disabled on all host machines): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1507
    :cond_15
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->joinTimeout:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_16

    .line 1508
    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-nez v19, :cond_17

    .line 1509
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v12

    .line 1519
    :cond_16
    const-wide/16 v20, 0x7d0

    :try_start_b
    invoke-static/range {v20 .. v21}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_b
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_0

    .line 1521
    :catch_6
    move-exception v7

    .line 1522
    .local v7, "ex":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    new-instance v19, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v20, "Thread has been interrupted."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 1510
    .end local v7    # "ex":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :cond_17
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->joinTimeout:J

    move-wide/from16 v22, v0

    cmp-long v19, v20, v22

    if-lez v19, :cond_16

    .line 1511
    new-instance v19, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to connect to any address from IP finder within join timeout (make sure IP finder addresses are correct, and operating system firewalls are disabled on all host machines, or consider increasing \'joinTimeout\' configuration property): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 1529
    .end local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 1426
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Ljava/net/InetSocketAddress;Ljava/net/Socket;)Ljava/lang/Integer;
    .locals 21
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .param p2, "addr"    # Ljava/net/InetSocketAddress;
    .param p3, "sock"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1542
    sget-boolean v15, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v15, :cond_0

    if-nez p1, :cond_0

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1543
    :cond_0
    sget-boolean v15, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v15, :cond_1

    if-nez p2, :cond_1

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1545
    :cond_1
    const/4 v8, 0x0

    .line 1547
    .local v8, "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ackTimeout:J

    .line 1549
    .local v4, "ackTimeout0":J
    const/4 v6, 0x1

    .line 1551
    .local v6, "connectAttempts":I
    const/4 v11, 0x0

    .line 1553
    .local v11, "joinReqSent":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v15}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v12

    .line 1555
    .local v12, "locNodeId":Ljava/util/UUID;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->reconCnt:I

    if-ge v10, v15, :cond_4

    .line 1558
    const/4 v11, 0x0

    .line 1560
    const/4 v13, 0x0

    .line 1563
    .local v13, "openSock":Z
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v16

    .line 1565
    .local v16, "tstamp":J
    if-nez p3, :cond_2

    .line 1566
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->openSocket(Ljava/net/InetSocketAddress;)Ljava/net/Socket;

    move-result-object p3

    .line 1568
    :cond_2
    const/4 v13, 0x1

    .line 1571
    new-instance v15, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeRequest;

    invoke-direct {v15, v12}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeRequest;-><init>(Ljava/util/UUID;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v15}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 1573
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v15, v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->readMessage(Ljava/net/Socket;Ljava/io/InputStream;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;

    .line 1575
    .local v14, "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;->creatorNodeId()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1576
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v15}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1577
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Handshake response from local node: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1649
    :cond_3
    invoke-static/range {p3 .. p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1651
    const/16 p3, 0x0

    .line 1655
    .end local v13    # "openSock":Z
    .end local v14    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
    .end local v16    # "tstamp":J
    :cond_4
    :goto_1
    if-eqz v11, :cond_11

    .line 1656
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v15}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1657
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v18, "Join request has been sent, but receipt has not been read (returning RES_WAIT)."

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1661
    :cond_5
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    :goto_2
    return-object v15

    .line 1582
    .restart local v13    # "openSock":Z
    .restart local v14    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
    .restart local v16    # "tstamp":J
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v16

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onClientSocketInitialized(J)V

    .line 1585
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v16

    .line 1587
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v16

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v15, v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onMessageSent(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;J)V

    .line 1591
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMode:Z

    if-eqz v15, :cond_7

    .line 1592
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Message has been sent directly to address [msg="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ", addr="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ", rmtNodeId="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;->creatorNodeId()Ljava/util/UUID;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v18, 0x5d

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog(Ljava/lang/String;)V

    .line 1595
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v15}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1596
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Message has been sent directly to address [msg="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", addr="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", rmtNodeId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;->creatorNodeId()Ljava/util/UUID;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x5d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1602
    :cond_8
    move-object/from16 v0, p1

    instance-of v11, v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;

    .line 1604
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->readReceipt(Ljava/net/Socket;J)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .line 1649
    invoke-static/range {p3 .. p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1651
    const/16 p3, 0x0

    goto/16 :goto_2

    .line 1606
    .end local v14    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
    .end local v16    # "tstamp":J
    :catch_0
    move-exception v7

    .line 1609
    .local v7, "e":Ljava/lang/ClassCastException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v15}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1610
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Class cast exception on direct send: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1612
    :cond_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Class cast exception on direct send: "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1614
    if-nez v8, :cond_a

    .line 1615
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .end local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .local v9, "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    move-object v8, v9

    .line 1617
    .end local v9    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :cond_a
    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1649
    invoke-static/range {p3 .. p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1651
    const/16 p3, 0x0

    .line 1555
    .end local v7    # "e":Ljava/lang/ClassCastException;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1619
    :catch_1
    move-exception v15

    move-object v7, v15

    .line 1620
    .local v7, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v15}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1621
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception on direct send: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0, v7}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1623
    :cond_b
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception on direct send: "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1625
    if-nez v8, :cond_c

    .line 1626
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .end local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v9    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    move-object v8, v9

    .line 1628
    .end local v9    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v8    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :cond_c
    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1630
    if-nez v13, :cond_e

    .line 1632
    const/4 v15, 0x2

    if-ge v6, v15, :cond_d

    .line 1633
    add-int/lit8 v6, v6, 0x1

    .line 1649
    invoke-static/range {p3 .. p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1651
    const/16 p3, 0x0

    goto :goto_3

    .line 1649
    :cond_d
    invoke-static/range {p3 .. p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1651
    const/16 p3, 0x0

    goto/16 :goto_1

    .line 1641
    :cond_e
    :try_start_4
    instance-of v15, v7, Ljava/net/SocketTimeoutException;

    if-nez v15, :cond_f

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v18, 0x0

    const-class v19, Ljava/net/SocketTimeoutException;

    aput-object v19, v15, v18

    invoke-static {v7, v15}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1642
    :cond_f
    const-wide/16 v18, 0x2

    mul-long v4, v4, v18

    .line 1644
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->checkAckTimeout(J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v15

    if-nez v15, :cond_10

    .line 1649
    invoke-static/range {p3 .. p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1651
    const/16 p3, 0x0

    goto/16 :goto_1

    .line 1649
    :cond_10
    invoke-static/range {p3 .. p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1651
    const/16 p3, 0x0

    .line 1652
    goto/16 :goto_3

    .line 1649
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    invoke-static/range {p3 .. p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1651
    const/16 p3, 0x0

    throw v15

    .line 1664
    .end local v13    # "openSock":Z
    :cond_11
    new-instance v15, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to send message to address [addr="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", msg="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x5d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to send message to address [addr="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", msg="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->exceptionWithSuppressed(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 1619
    .restart local v13    # "openSock":Z
    :catch_2
    move-exception v15

    move-object v7, v15

    goto/16 :goto_4
.end method

.method private spiStart0(Z)V
    .locals 12
    .param p1, "restart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 665
    if-nez p1, :cond_0

    .line 667
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onSpiStart()V

    .line 669
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 670
    :try_start_0
    sget-object v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->DISCONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 671
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    iget-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMode:Z

    if-eqz v0, :cond_2

    .line 674
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 675
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v1, "Info log level should be enabled for TCP discovery to work in debug mode."

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 678
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 680
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "TCP discovery SPI is configured in debug mode."

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndWarn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 684
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->fromAddrs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 685
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->noResAddrs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 687
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-direct {v0, p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    .line 688
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->start()V

    .line 690
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    invoke-direct {v0, p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    .line 691
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->start()V

    .line 693
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;

    invoke-direct {v0, p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->tcpSrvr:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;

    .line 699
    :try_start_2
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locHost:Ljava/net/InetAddress;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveLocalAddresses(Ljava/net/InetAddress;)Lorg/apache/ignite/lang/IgniteBiTuple;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    .line 705
    .local v7, "addrs":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;>;"
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

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

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->tcpSrvr:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;

    invoke-static {v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->access$000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;)I

    move-result v4

    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->metricsProvider:Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;

    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNodeVer:Lorg/apache/ignite/lang/IgniteProductVersion;

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;-><init>(Ljava/util/UUID;Ljava/util/Collection;Ljava/util/Collection;ILorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;Lorg/apache/ignite/lang/IgniteProductVersion;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 713
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->addrRslvr:Lorg/apache/ignite/configuration/AddressResolver;

    if-nez v0, :cond_9

    move-object v9, v10

    .line 717
    .local v9, "extAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :goto_0
    if-eqz v9, :cond_3

    .line 718
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNodeAttrs:Ljava/util/Map;

    const-string v1, "disc.tcp.ext-addrs"

    invoke-virtual {p0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNodeAttrs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->setAttributes(Ljava/util/Map;)V

    .line 722
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v0, v11}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->local(Z)V

    .line 724
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->getNodeAddresses(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNodeAddrs:Ljava/util/Collection;

    .line 726
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 727
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local node initialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 730
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->tcpSrvr:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->start()V

    .line 732
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->localNode(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V

    .line 734
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-interface {v0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->isShared()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 735
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->registerLocalNodeAddress()V

    .line 745
    :goto_1
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->statsPrintFreq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 746
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;

    invoke-direct {v0, p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->statsPrinter:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;

    .line 747
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->statsPrinter:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;->start()V

    .line 750
    :cond_5
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onJoinStarted()V

    .line 752
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->joinTopology()V

    .line 754
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onJoinFinished()V

    .line 756
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;

    invoke-direct {v0, p0, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$1;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->hbsSnd:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;

    .line 757
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->hbsSnd:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;->start()V

    .line 759
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;

    invoke-direct {v0, p0, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$1;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->chkStatusSnd:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;

    .line 760
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->chkStatusSnd:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;->start()V

    .line 762
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-interface {v0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->isShared()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 763
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;

    invoke-direct {v0, p0, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$1;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinderCleaner:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;

    .line 764
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinderCleaner:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->start()V

    .line 767
    :cond_6
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    .line 768
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 770
    :cond_7
    if-eqz p1, :cond_8

    .line 771
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->tcpSrvr:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;

    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->access$000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;)I

    move-result v1

    sget-object v2, Lorg/apache/ignite/spi/IgnitePortProtocol;->TCP:Lorg/apache/ignite/spi/IgnitePortProtocol;

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiContext;->registerPort(ILorg/apache/ignite/spi/IgnitePortProtocol;)V

    .line 772
    :cond_8
    return-void

    .line 701
    .end local v7    # "addrs":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .end local v9    # "extAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :catch_0
    move-exception v8

    .line 702
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve local host to set of external addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 713
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "addrs":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :cond_9
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->addrRslvr:Lorg/apache/ignite/configuration/AddressResolver;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/util/Collection;

    const/4 v3, 0x0

    invoke-virtual {v7}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    aput-object v0, v2, v3

    invoke-virtual {v7}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    aput-object v0, v2, v11

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->flat(Ljava/lang/Iterable;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->discoveryPort()I

    move-result v2

    invoke-static {v1, v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveAddresses(Lorg/apache/ignite/configuration/AddressResolver;Ljava/lang/Iterable;I)Ljava/util/Collection;

    move-result-object v9

    goto/16 :goto_0

    .line 737
    .restart local v9    # "extAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :cond_a
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-interface {v0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->getRegisteredAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 738
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v1, "Non-shared IP finder must have IP addresses specified in GridTcpDiscoveryIpFinder.getRegisteredAddresses() configuration property (specify list of IP addresses in configuration)."

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_b
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinderHasLocalAddress()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinderHasLocAddr:Z

    goto/16 :goto_1

    .line 701
    .end local v7    # "addrs":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .end local v9    # "extAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method private spiStateCopy()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    .locals 3

    .prologue
    .line 1855
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 1856
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 1857
    .local v0, "state":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    monitor-exit v2

    .line 1859
    return-object v0

    .line 1857
    .end local v0    # "state":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private spiStop0(Z)V
    .locals 24
    .param p1, "disconnect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 910
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ctxInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v3, v20, v22

    if-lez v3, :cond_0

    .line 912
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ctxInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 914
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 915
    if-eqz p1, :cond_3

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v9, "Disconnecting SPI."

    invoke-interface {v3, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 921
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 922
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    monitor-enter v9

    .line 923
    :try_start_0
    sget-object v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->DISCONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 924
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez p1, :cond_6

    .line 929
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    new-instance v9, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v3, v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 931
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    monitor-enter v9

    .line 932
    :try_start_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->netTimeout:J

    move-wide/from16 v22, v0

    add-long v14, v20, v22

    .line 934
    .local v14, "threshold":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->netTimeout:J

    move-wide/from16 v16, v0

    .line 936
    .local v16, "timeout":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    sget-object v19, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->LEFT:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, v19

    if-eq v3, v0, :cond_4

    const-wide/16 v20, 0x0

    cmp-long v3, v16, v20

    if-lez v3, :cond_4

    .line 938
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 940
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v20

    sub-long v16, v14, v20

    goto :goto_1

    .line 918
    .end local v14    # "threshold":J
    .end local v16    # "timeout":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v9, "Preparing to start local node stop procedure."

    invoke-interface {v3, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 942
    .restart local v14    # "threshold":J
    .restart local v16    # "timeout":J
    :catch_0
    move-exception v11

    .line 943
    .local v11, "ignored":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 949
    .end local v11    # "ignored":Ljava/lang/InterruptedException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    sget-object v19, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->LEFT:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_9

    .line 950
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 951
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v19, "Verification for local node leave has been received from coordinator (continuing stop procedure)."

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 958
    :cond_5
    :goto_2
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 961
    .end local v14    # "threshold":J
    .end local v16    # "timeout":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->tcpSrvr:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->tcpSrvr:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 966
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    monitor-enter v9

    .line 967
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->readers:Ljava/util/Collection;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v18

    .line 968
    .local v18, "tmp":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;>;"
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 970
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Iterable;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->joinThreads(Ljava/lang/Iterable;Lorg/apache/ignite/IgniteLogger;)Z

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->hbsSnd:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->hbsSnd:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 976
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->chkStatusSnd:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->chkStatusSnd:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinderCleaner:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinderCleaner:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 982
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 983
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 985
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 988
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->statsPrinter:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->statsPrinter:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 991
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    if-eqz v3, :cond_7

    .line 992
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-interface {v3}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->close()V

    .line 994
    :cond_7
    const/4 v13, 0x0

    .line 996
    .local v13, "rmts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    if-nez p1, :cond_a

    .line 998
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->unregisterMBean()V

    .line 1000
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1001
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stopInfo()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1009
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->topologyVersion()J

    move-result-wide v4

    .line 1011
    .local v4, "topVer":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->clear()V

    .line 1013
    if-eqz v13, :cond_c

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1016
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->lsnr:Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;

    .line 1018
    .local v2, "lsnr":Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;
    if-eqz v2, :cond_c

    .line 1019
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1021
    .local v12, "processed":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 1022
    .local v6, "n":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v3, :cond_b

    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible()Z

    move-result v3

    if-nez v3, :cond_b

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 954
    .end local v2    # "lsnr":Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;
    .end local v4    # "topVer":J
    .end local v6    # "n":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "processed":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v13    # "rmts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .end local v18    # "tmp":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;>;"
    .restart local v14    # "threshold":J
    .restart local v16    # "timeout":J
    :cond_9
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 955
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v19, "No verification for local node leave has been received from coordinator (will stop node anyway)."

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 958
    .end local v14    # "threshold":J
    .end local v16    # "timeout":J
    :catchall_1
    move-exception v3

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 968
    :catchall_2
    move-exception v3

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .line 1004
    .restart local v13    # "rmts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .restart local v18    # "tmp":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;>;"
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/spi/IgniteSpiContext;->deregisterPorts()V

    .line 1006
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->visibleRemoteNodes()Ljava/util/Collection;

    move-result-object v13

    goto :goto_3

    .line 1024
    .restart local v2    # "lsnr":Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;
    .restart local v4    # "topVer":J
    .restart local v6    # "n":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "processed":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_b
    invoke-interface {v12, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1026
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v9, 0x0

    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/F;->notIn(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v19

    aput-object v19, v3, v9

    invoke-static {v13, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayList(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/List;

    move-result-object v7

    .line 1028
    .local v7, "top":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const-wide/16 v20, 0x1

    add-long v4, v4, v20

    .line 1030
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->updateTopologyHistory(JLjava/util/Collection;)Ljava/util/Map;

    move-result-object v8

    .line 1033
    .local v8, "hist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    const/16 v3, 0xc

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;->onDiscovery(IJLorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Ljava/util/Map;Ljava/io/Serializable;)V

    goto :goto_4

    .line 1038
    .end local v2    # "lsnr":Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;
    .end local v6    # "n":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .end local v7    # "top":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v8    # "hist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "processed":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_c
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->printStatistics()V

    .line 1040
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->clear()V

    .line 1042
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    monitor-enter v9

    .line 1044
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->leavingNodes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 1045
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->failedNodes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 1047
    sget-object v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->DISCONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 1048
    monitor-exit v9

    .line 1049
    return-void

    .line 1048
    :catchall_3
    move-exception v3

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3
.end method

.method private threadStatus(Ljava/lang/Thread;)Ljava/lang/String;
    .locals 1
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 2171
    if-nez p1, :cond_0

    .line 2172
    const-string v0, "N/A"

    .line 2174
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "alive"

    goto :goto_0

    :cond_1
    const-string v0, "dead"

    goto :goto_0
.end method

.method private unmarshalCredentials(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    .locals 6
    .param p1, "node"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1700
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->getAttributes()Ljava/util/Map;

    move-result-object v3

    const-string v5, "org.apache.ignite.security.cred"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v1, v0

    .line 1702
    .local v1, "credBytes":[B
    if-nez v1, :cond_0

    move-object v3, v4

    .line 1705
    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1707
    .end local v1    # "credBytes":[B
    :catch_0
    move-exception v2

    .line 1708
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v3, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unmarshal node security credentials: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private updateTopologyHistory(JLjava/util/Collection;)Ljava/util/Map;
    .locals 5
    .param p1, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1768
    .local p3, "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 1769
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->topHist:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1770
    const/4 v0, 0x0

    monitor-exit v1

    .line 1780
    :goto_0
    return-object v0

    .line 1772
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->topHist:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    :goto_1
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->topHist:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->topHistSize:I

    if-le v0, v2, :cond_1

    .line 1775
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->topHist:Ljava/util/SortedMap;

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->topHist:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1781
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1777
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1778
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added topology snapshot to history, topVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", historySize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->topHist:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1780
    :cond_2
    new-instance v0, Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->topHist:Ljava/util/SortedMap;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
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
    .line 1239
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiStop0(Z)V

    .line 1240
    return-void
.end method

.method public dumpDebugInfo()V
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->dumpDebugInfo(Lorg/apache/ignite/IgniteLogger;)V

    .line 2066
    return-void
.end method

.method public dumpDebugInfo(Lorg/apache/ignite/IgniteLogger;)V
    .locals 8
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 2072
    iget-boolean v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMode:Z

    if-nez v5, :cond_0

    .line 2073
    const-string v5, "Failed to dump debug info (discovery SPI was not configured in debug mode, consider setting \'debugMode\' configuration property to \'true\')."

    invoke-static {p1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndWarn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 2135
    :goto_0
    return-void

    .line 2079
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2081
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    monitor-enter v6

    .line 2082
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2084
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v5, ">>>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2085
    const-string v5, ">>>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "Dumping discovery SPI debug info."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2086
    const-string v5, ">>>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2088
    const-string v5, "Local node ID: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v7}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2089
    const-string v5, "Local node: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    const-string v5, "SPI state: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2092
    const-string v5, "Internal threads: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    const-string v5, "    Message worker: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    invoke-direct {p0, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->threadStatus(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2095
    const-string v5, "    Check status sender: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->chkStatusSnd:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;

    invoke-direct {p0, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->threadStatus(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    const-string v5, "    HB sender: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->hbsSnd:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;

    invoke-direct {p0, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->threadStatus(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2097
    const-string v5, "    Socket timeout worker: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-direct {p0, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->threadStatus(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2098
    const-string v5, "    IP finder cleaner: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinderCleaner:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;

    invoke-direct {p0, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->threadStatus(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2099
    const-string v5, "    Stats printer: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->statsPrinter:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;

    invoke-direct {p0, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->threadStatus(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    const-string v5, "Socket readers: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->readers:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;

    .line 2106
    .local v4, "rdr":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;
    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2134
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "rdr":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2108
    .restart local v0    # "b":Ljava/lang/StringBuilder;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    const-string v5, "In-memory log messages: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2113
    .local v2, "msg":Ljava/lang/String;
    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2115
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2117
    const-string v5, "Leaving nodes: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->leavingNodes:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 2120
    .local v3, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2122
    .end local v3    # "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_4
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2124
    const-string v5, "Failed nodes: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->failedNodes:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 2127
    .restart local v3    # "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2129
    .end local v3    # "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_5
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2131
    const-string v5, "Stats: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndInfo(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V

    .line 2134
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method forceNextNodeFailure()V
    .locals 8

    .prologue
    .line 2028
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Next node will be forcibly failed (if any)."

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 2032
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 2033
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->failedNodes:Ljava/util/Collection;

    invoke-virtual {v1, v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nextNode(Ljava/util/Collection;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v0

    .line 2034
    .local v0, "next":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2036
    if-eqz v0, :cond_0

    .line 2037
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    new-instance v2, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v3}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v6

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;-><init>(Ljava/util/UUID;Ljava/util/UUID;J)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 2039
    :cond_0
    return-void

    .line 2034
    .end local v0    # "next":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAckTimeout()J
    .locals 2

    .prologue
    .line 530
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ackTimeout:J

    return-wide v0
.end method

.method public getAddressResolver()Lorg/apache/ignite/configuration/AddressResolver;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->addrRslvr:Lorg/apache/ignite/configuration/AddressResolver;

    return-object v0
.end method

.method public getAvgMessageProcessingTime()J
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->avgMessageProcessingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCoordinator()Ljava/util/UUID;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 620
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->resolveCoordinator()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v0

    .line 622
    .local v0, "crd":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCoordinatorSinceTimestamp()J
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->coordinatorSinceTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getGridStartTime()J
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->getGridStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeartbeatFrequency()J
    .locals 2

    .prologue
    .line 545
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->hbFreq:J

    return-wide v0
.end method

.method public bridge synthetic getIpFinder()Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->getIpFinder()Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    move-result-object v0

    return-object v0
.end method

.method public getIpFinderCleanFrequency()J
    .locals 2

    .prologue
    .line 483
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinderCleanFreq:J

    return-wide v0
.end method

.method public getIpFinderFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJoinTimeout()J
    .locals 2

    .prologue
    .line 366
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->joinTimeout:J

    return-wide v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->getLocalNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 392
    .local v0, "locNode0":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->discoveryPort()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalPortRange()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locPortRange:I

    return v0
.end method

.method public getMaxAckTimeout()J
    .locals 2

    .prologue
    .line 344
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxAckTimeout:J

    return-wide v0
.end method

.method public getMaxMessageProcessingTime()J
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->maxMessageProcessingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxMissedClientHeartbeats()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxMissedClientHbs:I

    return v0
.end method

.method public getMaxMissedHeartbeats()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxMissedHbs:I

    return v0
.end method

.method public getMessageWorkerQueueSize()I
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->queueSize()I

    move-result v0

    return v0
.end method

.method public getNetworkTimeout()J
    .locals 2

    .prologue
    .line 535
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->netTimeout:J

    return-wide v0
.end method

.method public getNode(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 627
    sget-boolean v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 629
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v2}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v0

    .line 631
    .local v0, "locNodeId0":Ljava/util/UUID;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 633
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 640
    :cond_1
    :goto_0
    return-object v1

    .line 635
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    invoke-virtual {v2, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v1

    .line 637
    .local v1, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 638
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNodesFailed()J
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->failedNodesCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNodesJoined()J
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->joinedNodesCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNodesLeft()J
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->leftNodesCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPendingMessagesDiscarded()J
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->pendingMessagesDiscarded()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPendingMessagesRegistered()J
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->pendingMessagesRegistered()J

    move-result-wide v0

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
    .line 610
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

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
    .line 600
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->receivedMessages()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReconnectCount()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->reconCnt:I

    return v0
.end method

.method public getRemoteNodes()Ljava/util/Collection;
    .locals 1
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
    .line 645
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->visibleRemoteNodes()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->upcast(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()J
    .locals 2

    .prologue
    .line 525
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->sockTimeout:J

    return-wide v0
.end method

.method public getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;
    .locals 6

    .prologue
    .line 880
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ctxInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 881
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Waiting for context initialization."

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 885
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ctxInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/CountDownLatch;)V

    .line 887
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Context has been initialized."

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :cond_1
    :goto_0
    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v1

    return-object v1

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Thread has been interrupted while waiting for SPI context initialization."

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getSpiState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 518
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 519
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->name()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStatisticsPrintFrequency()J
    .locals 2

    .prologue
    .line 462
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->statsPrintFreq:J

    return-wide v0
.end method

.method public getThreadPriority()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->threadPri:I

    return v0
.end method

.method public bridge synthetic getTopHistorySize()J
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->getTopHistorySize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalProcessedMessages()I
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->totalProcessedMessages()I

    move-result v0

    return v0
.end method

.method public getTotalReceivedMessages()I
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->totalReceivedMessages()I

    move-result v0

    return v0
.end method

.method public injectResources(Lorg/apache/ignite/Ignite;)V
    .locals 1
    .param p1, "ignite"    # Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation

    .prologue
    .line 293
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->injectResources(Lorg/apache/ignite/Ignite;)V

    .line 296
    if-eqz p1, :cond_0

    .line 297
    invoke-interface {p1}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getAddressResolver()Lorg/apache/ignite/configuration/AddressResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->setAddressResolver(Lorg/apache/ignite/configuration/AddressResolver;)V

    .line 298
    :cond_0
    return-void
.end method

.method public injectables()Ljava/util/Collection;
    .locals 1
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
    .line 650
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method onBeforeMessageSentAcrossRing(Ljava/io/Serializable;)V
    .locals 0
    .param p1, "msg"    # Ljava/io/Serializable;

    .prologue
    .line 2050
    return-void
.end method

.method protected onContextDestroyed0()V
    .locals 4

    .prologue
    .line 1053
    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->onContextDestroyed0()V

    .line 1055
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ctxInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1057
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ctxInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1059
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/spi/IgniteSpiContext;->deregisterPorts()V

    .line 1060
    return-void
.end method

.method public onContextInitialized0(Lorg/apache/ignite/spi/IgniteSpiContext;)V
    .locals 2
    .param p1, "spiCtx"    # Lorg/apache/ignite/spi/IgniteSpiContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 871
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->onContextInitialized0(Lorg/apache/ignite/spi/IgniteSpiContext;)V

    .line 873
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ctxInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 875
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->tcpSrvr:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;->access$000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;)I

    move-result v0

    sget-object v1, Lorg/apache/ignite/spi/IgnitePortProtocol;->TCP:Lorg/apache/ignite/spi/IgnitePortProtocol;

    invoke-interface {p1, v0, v1}, Lorg/apache/ignite/spi/IgniteSpiContext;->registerPort(ILorg/apache/ignite/spi/IgnitePortProtocol;)V

    .line 876
    return-void
.end method

.method public pingNode(Ljava/util/UUID;)Z
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 1089
    sget-boolean v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1091
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v2}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 1092
    const/4 v1, 0x1

    .line 1107
    :cond_1
    :goto_0
    return v1

    .line 1094
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    invoke-virtual {v2, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v0

    .line 1096
    .local v0, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1097
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1099
    :cond_4
    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->pingNode(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z

    move-result v1

    .line 1101
    .local v1, "res":Z
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->isClient()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1102
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to ping node (status check will be initiated): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1104
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    new-instance v3, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;-><init>(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Ljava/util/UUID;)V

    invoke-virtual {v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto :goto_0
.end method

.method ring()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    .locals 1

    .prologue
    .line 2060
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    return-object v0
.end method

.method public sendCustomEvent(Ljava/io/Serializable;)V
    .locals 3
    .param p1, "evt"    # Ljava/io/Serializable;

    .prologue
    .line 1249
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    new-instance v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->getLocalNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;-><init>(Ljava/util/UUID;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 1250
    return-void
.end method

.method public bridge synthetic setAckTimeout(J)V
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setAckTimeout(J)V

    return-void
.end method

.method public setAddressResolver(Lorg/apache/ignite/configuration/AddressResolver;)V
    .locals 1
    .param p1, "addrRslvr"    # Lorg/apache/ignite/configuration/AddressResolver;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->addrRslvr:Lorg/apache/ignite/configuration/AddressResolver;

    if-nez v0, :cond_0

    .line 309
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->addrRslvr:Lorg/apache/ignite/configuration/AddressResolver;

    .line 310
    :cond_0
    return-void
.end method

.method public setAuthenticator(Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;)V
    .locals 0
    .param p1, "nodeAuth"    # Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;

    .prologue
    .line 1244
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->nodeAuth:Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;

    .line 1245
    return-void
.end method

.method public bridge synthetic setDataExchange(Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setDataExchange(Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;)V

    return-void
.end method

.method public setDebugMessageHistory(I)V
    .locals 0
    .param p1, "debugMsgHist"    # I

    .prologue
    .line 513
    iput p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMsgHist:I

    .line 514
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0
    .param p1, "debugMode"    # Z

    .prologue
    .line 504
    iput-boolean p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMode:Z

    .line 505
    return-void
.end method

.method public bridge synthetic setHeartbeatFrequency(J)V
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setHeartbeatFrequency(J)V

    return-void
.end method

.method public bridge synthetic setIpFinder(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setIpFinder(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;)V

    return-void
.end method

.method public setIpFinderCleanFrequency(J)V
    .locals 1
    .param p1, "ipFinderCleanFreq"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 495
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinderCleanFreq:J

    .line 496
    return-void
.end method

.method public setJoinTimeout(J)V
    .locals 1
    .param p1, "joinTimeout"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 385
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->joinTimeout:J

    .line 386
    return-void
.end method

.method public bridge synthetic setListener(Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setListener(Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;)V

    return-void
.end method

.method public bridge synthetic setLocalAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setLocalAddress(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalPort(I)V
    .locals 0
    .param p1, "locPort"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 404
    iput p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locPort:I

    .line 405
    return-void
.end method

.method public setLocalPortRange(I)V
    .locals 0
    .param p1, "locPortRange"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 423
    iput p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locPortRange:I

    .line 424
    return-void
.end method

.method public setMaxAckTimeout(J)V
    .locals 1
    .param p1, "maxAckTimeout"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 361
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxAckTimeout:J

    .line 362
    return-void
.end method

.method public setMaxMissedClientHeartbeats(I)V
    .locals 0
    .param p1, "maxMissedClientHbs"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 457
    iput p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxMissedClientHbs:I

    .line 458
    return-void
.end method

.method public setMaxMissedHeartbeats(I)V
    .locals 0
    .param p1, "maxMissedHbs"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 440
    iput p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxMissedHbs:I

    .line 441
    return-void
.end method

.method public bridge synthetic setMetricsProvider(Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setMetricsProvider(Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;)V

    return-void
.end method

.method public bridge synthetic setNetworkTimeout(J)V
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setNetworkTimeout(J)V

    return-void
.end method

.method public bridge synthetic setNodeAttributes(Ljava/util/Map;Lorg/apache/ignite/lang/IgniteProductVersion;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lorg/apache/ignite/lang/IgniteProductVersion;

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setNodeAttributes(Ljava/util/Map;Lorg/apache/ignite/lang/IgniteProductVersion;)V

    return-void
.end method

.method public setReconnectCount(I)V
    .locals 0
    .param p1, "reconCnt"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 339
    iput p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->reconCnt:I

    .line 340
    return-void
.end method

.method public bridge synthetic setSocketTimeout(J)V
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setSocketTimeout(J)V

    return-void
.end method

.method public setStatisticsPrintFrequency(J)V
    .locals 1
    .param p1, "statsPrintFreq"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 478
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->statsPrintFreq:J

    .line 479
    return-void
.end method

.method public bridge synthetic setThreadPriority(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 146
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setThreadPriority(I)V

    return-void
.end method

.method public bridge synthetic setTopHistorySize(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 146
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setTopHistorySize(I)V

    return-void
.end method

.method simulateNodeFailure()V
    .locals 4

    .prologue
    .line 1988
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Simulating node failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v3}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1990
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->tcpSrvr:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 1991
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->tcpSrvr:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$TcpServer;

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 1993
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->hbsSnd:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 1994
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->hbsSnd:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 1996
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->chkStatusSnd:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 1997
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->chkStatusSnd:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$CheckStatusSender;

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 1999
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinderCleaner:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 2000
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinderCleaner:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 2004
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 2005
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->readers:Ljava/util/Collection;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 2006
    .local v0, "tmp":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2008
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Iterable;)V

    .line 2009
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->joinThreads(Ljava/lang/Iterable;Lorg/apache/ignite/IgniteLogger;)Z

    .line 2011
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 2012
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 2014
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->statsPrinter:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 2015
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->statsPrinter:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 2016
    return-void

    .line 2006
    .end local v0    # "tmp":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "gridName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 655
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiStart0(Z)V

    .line 656
    return-void
.end method

.method public spiStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 900
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiStop0(Z)V

    .line 901
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2197
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
