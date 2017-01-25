.class public Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "TcpCommunicationSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/communication/CommunicationSpi;
.implements Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpiMBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;,
        Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;,
        Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;,
        Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;,
        Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;,
        Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ConnectFuture;,
        Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;,
        Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;,
        Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;,
        Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;,
        Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutException;,
        Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/spi/IgniteSpiAdapter;",
        "Lorg/apache/ignite/spi/communication/CommunicationSpi",
        "<",
        "Lorg/apache/ignite/plugin/extensions/communication/Message;",
        ">;",
        "Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpiMBean;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/spi/IgniteSpiConsistencyChecked;
    optional = false
.end annotation

.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ATTR_ADDRS:Ljava/lang/String; = "comm.tcp.addrs"

.field public static final ATTR_EXT_ADDRS:Ljava/lang/String; = "comm.tcp.ext-addrs"

.field public static final ATTR_HOST_NAMES:Ljava/lang/String; = "comm.tcp.host.names"

.field public static final ATTR_PORT:Ljava/lang/String; = "comm.tcp.port"

.field public static final DFLT_ACK_SND_THRESHOLD:I = 0x10

.field public static final DFLT_CONN_BUF_FLUSH_FREQ:J = 0x64L

.field public static final DFLT_CONN_BUF_SIZE:I = 0x0

.field public static final DFLT_CONN_TIMEOUT:J = 0x3e8L

.field public static final DFLT_IDLE_CONN_TIMEOUT:J = 0x7530L

.field public static final DFLT_MAX_CONN_TIMEOUT:J = 0x927c0L

.field public static final DFLT_MSG_QUEUE_LIMIT:I = 0x400

.field public static final DFLT_PORT:I = 0xb7fc

.field public static final DFLT_PORT_RANGE:I = 0x64

.field public static final DFLT_RECONNECT_CNT:I = 0xa

.field public static final DFLT_SELECTORS_CNT:I

.field public static final DFLT_SOCK_BUF_SIZE:I = 0x8000

.field public static final DFLT_SOCK_WRITE_TIMEOUT:J = 0x1388L

.field public static final DFLT_TCP_NODELAY:Z = true

.field public static final HANDSHAKE_MSG_TYPE:B = -0x3t

.field private static final NODE_ID_META:I

.field public static final NODE_ID_MSG_TYPE:B = -0x1t

.field private static final NOOP:Lorg/apache/ignite/lang/IgniteRunnable;

.field public static final RECOVERY_LAST_ID_MSG_TYPE:B = -0x2t

.field private static final TRACKER_META:I


# instance fields
.field private ackSndThreshold:I

.field private addrRslvr:Lorg/apache/ignite/configuration/AddressResolver;

.field private boundTcpPort:I

.field private bufSizeRatio:D

.field private clientFlushWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;

.field private final clientFuts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private final clients:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;",
            ">;"
        }
    .end annotation
.end field

.field private volatile connBufFlushFreq:J

.field private connBufSize:I

.field private connTimeout:J

.field private final ctxInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private directBuf:Z

.field private directSndBuf:Z

.field private final discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private gridName:Ljava/lang/String;

.field private idleClientWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;

.field private idleConnTimeout:J

.field private locAddr:Ljava/lang/String;

.field private volatile locHost:Ljava/net/InetAddress;

.field private locPort:I

.field private locPortRange:I

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private volatile lsnr:Lorg/apache/ignite/spi/communication/CommunicationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/spi/communication/CommunicationListener",
            "<",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ">;"
        }
    .end annotation
.end field

.field private maxConnTimeout:J

.field private final metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

.field private minBufferedMsgCnt:I

.field private msgQueueLimit:I

.field private nioSrvr:Lorg/apache/ignite/internal/util/nio/GridNioServer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/nio/GridNioServer",
            "<",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ">;"
        }
    .end annotation
.end field

.field private nodeIdMsg:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;

.field private final rcvdBytesCnt:Lorg/jsr166/LongAdder8;

.field private final rcvdMsgsCnt:Lorg/jsr166/LongAdder8;

.field private reconCnt:I

.field private final recoveryDescs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;",
            "Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private recoveryWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;

.field private selectorsCnt:I

.field private final sentBytesCnt:Lorg/jsr166/LongAdder8;

.field private final sentMsgsCnt:Lorg/jsr166/LongAdder8;

.field private sockRcvBuf:I

.field private sockSndBuf:I

.field private sockTimeoutWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;

.field private sockWriteTimeout:J

.field private final srvLsnr:Lorg/apache/ignite/internal/util/nio/GridNioServerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/nio/GridNioServerListener",
            "<",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ">;"
        }
    .end annotation
.end field

.field private volatile stopping:Z

.field private tcpNoDelay:Z

.field private unackedMsgsBufSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 139
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->$assertionsDisabled:Z

    .line 186
    const/4 v0, 0x4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->DFLT_SELECTORS_CNT:I

    .line 189
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->nextUniqueKey()I

    move-result v0

    sput v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->NODE_ID_META:I

    .line 192
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->nextUniqueKey()I

    move-result v0

    sput v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->TRACKER_META:I

    .line 210
    new-instance v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;

    invoke-direct {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->NOOP:Lorg/apache/ignite/lang/IgniteRunnable;

    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const v2, 0x8000

    const/4 v4, 0x1

    .line 141
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    .line 226
    new-instance v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->srvLsnr:Lorg/apache/ignite/internal/util/nio/GridNioServerListener;

    .line 589
    const v0, 0xb7fc

    iput v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locPort:I

    .line 592
    const/16 v0, 0x64

    iput v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locPortRange:I

    .line 598
    iput-boolean v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->directBuf:Z

    .line 604
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->idleConnTimeout:J

    .line 607
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connBufFlushFreq:J

    .line 610
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connBufSize:I

    .line 614
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connTimeout:J

    .line 617
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->maxConnTimeout:J

    .line 620
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->reconCnt:I

    .line 624
    iput v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockSndBuf:I

    .line 627
    iput v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockRcvBuf:I

    .line 630
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->msgQueueLimit:I

    .line 633
    const-string v0, "IGNITE_MIN_BUFFERED_COMMUNICATION_MSG_CNT"

    const/16 v1, 0x200

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->minBufferedMsgCnt:I

    .line 636
    const-string v0, "IGNITE_COMMUNICATION_BUF_RESIZE_RATIO"

    const-wide v2, 0x3fe999999999999aL    # 0.8

    invoke-static {v0, v2, v3}, Lorg/apache/ignite/IgniteSystemProperties;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->bufSizeRatio:D

    .line 642
    iput-boolean v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->tcpNoDelay:Z

    .line 645
    const/16 v0, 0x10

    iput v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ackSndThreshold:I

    .line 651
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockWriteTimeout:J

    .line 666
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->newMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clients:Ljava/util/concurrent/ConcurrentMap;

    .line 672
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->boundTcpPort:I

    .line 675
    sget v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->DFLT_SELECTORS_CNT:I

    iput v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->selectorsCnt:I

    .line 684
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->rcvdMsgsCnt:Lorg/jsr166/LongAdder8;

    .line 687
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sentMsgsCnt:Lorg/jsr166/LongAdder8;

    .line 690
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->rcvdBytesCnt:Lorg/jsr166/LongAdder8;

    .line 693
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sentBytesCnt:Lorg/jsr166/LongAdder8;

    .line 696
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ctxInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 702
    new-instance v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$3;

    invoke-direct {v0, p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$3;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    .line 713
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->newMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clientFuts:Ljava/util/concurrent/ConcurrentMap;

    .line 717
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->newMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->recoveryDescs:Ljava/util/concurrent/ConcurrentMap;

    .line 720
    new-instance v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$4;

    invoke-direct {v0, p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$4;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 2833
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockWriteTimeout:J

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
    .param p1, "x1"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->recoveryDescriptor(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/jsr166/LongAdder8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->rcvdMsgsCnt:Lorg/jsr166/LongAdder8;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ackSndThreshold:I

    return v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/internal/util/nio/GridNioServer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->nioSrvr:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->msgQueueLimit:I

    return v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 141
    sget v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->TRACKER_META:I

    return v0
.end method

.method static synthetic access$1600()Lorg/apache/ignite/lang/IgniteRunnable;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->NOOP:Lorg/apache/ignite/lang/IgniteRunnable;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->nodeIdMsg:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/jsr166/LongAdder8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sentBytesCnt:Lorg/jsr166/LongAdder8;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/jsr166/LongAdder8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->rcvdBytesCnt:Lorg/jsr166/LongAdder8;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 141
    sget v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->NODE_ID_META:I

    return v0
.end method

.method static synthetic access$3200(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->gridName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->recoveryDescs:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->idleConnTimeout:J

    return-wide v0
.end method

.method static synthetic access$3500(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connBufFlushFreq:J

    return-wide v0
.end method

.method static synthetic access$3600(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$3700(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
    .param p1, "x1"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->reserveClient(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clients:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->stopping:Z

    return v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->recoveryWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/spi/communication/CommunicationListener;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->lsnr:Lorg/apache/ignite/spi/communication/CommunicationListener;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clientFuts:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private checkAttributePresence(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)V
    .locals 3
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "attrName"    # Ljava/lang/String;

    .prologue
    .line 1551
    invoke-interface {p1, p2}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1552
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote node has inconsistent configuration (required attribute was not found) [attrName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "spiCls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1555
    :cond_0
    return-void
.end method

.method private onException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2092
    invoke-virtual {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getExceptionRegistry()Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->onException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2093
    return-void
.end method

.method private recoveryDescriptor(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .locals 9
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 2068
    new-instance v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct {v0, v5, v6, v7, v8}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;-><init>(Ljava/util/UUID;JLorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;)V

    .line 2070
    .local v0, "id":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->recoveryDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    .line 2072
    .local v4, "recovery":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    if-nez v4, :cond_0

    .line 2073
    iget v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->msgQueueLimit:I

    iget v6, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ackSndThreshold:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2075
    .local v1, "maxSize":I
    iget v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->unackedMsgsBufSize:I

    if-eqz v5, :cond_1

    iget v3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->unackedMsgsBufSize:I

    .line 2077
    .local v3, "queueLimit":I
    :goto_0
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->recoveryDescs:Ljava/util/concurrent/ConcurrentMap;

    new-instance v4, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    .end local v4    # "recovery":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    iget-object v6, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {v4, v3, p1, v6}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;-><init>(ILorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/IgniteLogger;)V

    .restart local v4    # "recovery":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    invoke-interface {v5, v0, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    .line 2080
    .local v2, "old":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    if-eqz v2, :cond_0

    .line 2081
    move-object v4, v2

    .line 2084
    .end local v1    # "maxSize":I
    .end local v2    # "old":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .end local v3    # "queueLimit":I
    :cond_0
    return-object v4

    .line 2075
    .restart local v1    # "maxSize":I
    :cond_1
    mul-int/lit8 v3, v1, 0x5

    goto :goto_0
.end method

.method private reserveClient(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .locals 10
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1619
    sget-boolean v7, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1621
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    .line 1624
    .local v4, "nodeId":Ljava/util/UUID;
    :cond_1
    :goto_0
    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clients:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    .line 1626
    .local v0, "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    if-nez v0, :cond_8

    .line 1627
    iget-boolean v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->stopping:Z

    if-eqz v7, :cond_2

    .line 1628
    new-instance v7, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v8, "Grid is stopping."

    invoke-direct {v7, v8}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1631
    :cond_2
    new-instance v3, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ConnectFuture;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ConnectFuture;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;)V

    .line 1633
    .local v3, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;>;"
    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clientFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v4, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 1635
    .local v6, "oldFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;>;"
    if-nez v6, :cond_7

    .line 1637
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clients:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    .line 1639
    .local v1, "client0":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    if-nez v1, :cond_4

    .line 1640
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->createNioClient(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    move-result-object v1

    .line 1642
    if-eqz v1, :cond_3

    .line 1643
    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clients:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v4, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    .line 1645
    .local v5, "old":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    sget-boolean v7, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->$assertionsDisabled:Z

    if-nez v7, :cond_4

    if-eqz v5, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Client already created [node="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", client="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", oldClient="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1654
    .end local v1    # "client0":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .end local v5    # "old":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    :catch_0
    move-exception v2

    .line 1655
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 1657
    instance-of v7, v2, Ljava/lang/Error;

    if-eqz v7, :cond_6

    .line 1658
    check-cast v2, Ljava/lang/Error;

    .end local v2    # "e":Ljava/lang/Throwable;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1661
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clientFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v4, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v7

    .line 1649
    .restart local v1    # "client0":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    :cond_3
    const-wide/16 v8, 0xc8

    :try_start_2
    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    .line 1652
    :cond_4
    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1661
    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clientFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v4, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1667
    .end local v1    # "client0":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    :goto_1
    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    .line 1669
    .restart local v0    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    if-eqz v0, :cond_1

    .line 1672
    invoke-virtual {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v7

    invoke-interface {v7, v4}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    if-nez v7, :cond_8

    .line 1673
    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clients:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1674
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->forceClose()V

    .line 1676
    :cond_5
    new-instance v7, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Destination node is not in topology: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1661
    .restart local v2    # "e":Ljava/lang/Throwable;
    :cond_6
    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clientFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v4, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1665
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_7
    move-object v3, v6

    goto :goto_1

    .line 1680
    .end local v3    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;>;"
    .end local v6    # "oldFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;>;"
    :cond_8
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->reserve()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1681
    return-object v0

    .line 1684
    :cond_9
    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clients:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private resetNioServer()Lorg/apache/ignite/internal/util/nio/GridNioServer;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer",
            "<",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x5d

    .line 1362
    iget v8, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->boundTcpPort:I

    if-ltz v8, :cond_0

    .line 1363
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tcp NIO server was already created on port "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->boundTcpPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1365
    :cond_0
    const/4 v1, 0x0

    .line 1368
    .local v1, "lastEx":Lorg/apache/ignite/IgniteCheckedException;
    iget v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locPort:I

    .local v5, "port":I
    :goto_0
    iget v8, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locPort:I

    iget v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locPortRange:I

    add-int/2addr v8, v9

    if-ge v5, v8, :cond_3

    .line 1370
    :try_start_0
    new-instance v2, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$5;

    invoke-direct {v2, p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$5;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V

    .line 1383
    .local v2, "messageFactory":Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    new-instance v3, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;

    invoke-direct {v3, p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$6;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V

    .line 1405
    .local v3, "messageFormatter":Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;
    new-instance v4, Lorg/apache/ignite/internal/util/nio/GridDirectParser;

    invoke-direct {v4, v2, v3}, Lorg/apache/ignite/internal/util/nio/GridDirectParser;-><init>(Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;)V

    .line 1407
    .local v4, "parser":Lorg/apache/ignite/internal/util/nio/GridDirectParser;
    new-instance v6, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$7;

    invoke-direct {v6, p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$7;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V

    .line 1413
    .local v6, "skipRecoveryPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/plugin/extensions/communication/Message;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->builder()Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->address(Ljava/net/InetAddress;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->port(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->srvLsnr:Lorg/apache/ignite/internal/util/nio/GridNioServerListener;

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->listener(Lorg/apache/ignite/internal/util/nio/GridNioServerListener;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->logger(Lorg/apache/ignite/IgniteLogger;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    iget v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->selectorsCnt:I

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->selectorCount(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->gridName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->gridName(Ljava/lang/String;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    iget-boolean v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->tcpNoDelay:Z

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->tcpNoDelay(Z)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    iget-boolean v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->directBuf:Z

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->directBuffer(Z)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->byteOrder(Ljava/nio/ByteOrder;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    iget v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockSndBuf:I

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->socketSendBufferSize(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    iget v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockRcvBuf:I

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->socketReceiveBufferSize(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    iget v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->msgQueueLimit:I

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->sendQueueLimit(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->directMode(Z)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->metricsListener(Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    iget-wide v10, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockWriteTimeout:J

    invoke-virtual {v8, v10, v11}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->writeTimeout(J)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    const/4 v10, 0x0

    new-instance v11, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;

    iget-object v12, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v13, 0x1

    invoke-direct {v11, v4, v12, v13}, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioParser;Lorg/apache/ignite/IgniteLogger;Z)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;

    iget-object v12, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {v11, v12}, Lorg/apache/ignite/internal/util/nio/GridConnectionBytesVerifyFilter;-><init>(Lorg/apache/ignite/IgniteLogger;)V

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->filters([Lorg/apache/ignite/internal/util/nio/GridNioFilter;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->messageFormatter(Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->skipRecoveryPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->build()Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-result-object v7

    .line 1436
    .local v7, "srvr":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<Lorg/apache/ignite/plugin/extensions/communication/Message;>;"
    iput v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->boundTcpPort:I

    .line 1439
    iget-object v8, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1440
    iget-object v8, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Successfully bound to TCP port [port="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->boundTcpPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", locHost="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 1443
    :cond_1
    iget-wide v8, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->idleConnTimeout:J

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->idleTimeout(J)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    return-object v7

    .line 1447
    .end local v2    # "messageFactory":Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    .end local v3    # "messageFormatter":Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;
    .end local v4    # "parser":Lorg/apache/ignite/internal/util/nio/GridDirectParser;
    .end local v6    # "skipRecoveryPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/plugin/extensions/communication/Message;>;"
    .end local v7    # "srvr":Lorg/apache/ignite/internal/util/nio/GridNioServer;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<Lorg/apache/ignite/plugin/extensions/communication/Message;>;"
    :catch_0
    move-exception v0

    .line 1448
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object v1, v0

    .line 1450
    iget-object v8, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1451
    iget-object v8, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to bind to local port (will try next port within range) [port="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", locHost="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1454
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to bind to local port (will try next port within range) [port="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", locHost="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1368
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1460
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_3
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to bind to any port within range [startPort="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", portRange="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locPortRange:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", locHost="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method private safeHandshake(Ljava/lang/Object;Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;Ljava/util/UUID;J)J
    .locals 20
    .param p2, "recovery"    # Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "rmtNodeId"    # Ljava/util/UUID;
    .param p4, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;",
            "Ljava/util/UUID;",
            "J)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1928
    .local p1, "client":Ljava/lang/Object;, "TT;"
    new-instance v13, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    add-long v4, v4, p4

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v4, v5, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;-><init>(Ljava/lang/Object;JLorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;)V

    .line 1930
    .local v13, "obj":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;, "Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject<TT;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;

    invoke-virtual {v3, v13}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->addTimeoutObject(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;)V

    .line 1932
    const-wide/16 v14, 0x0

    .line 1935
    .local v14, "rcvCnt":J
    :try_start_0
    move-object/from16 v0, p1

    instance-of v3, v0, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    if-eqz v3, :cond_2

    .line 1936
    check-cast p1, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    .end local p1    # "client":Ljava/lang/Object;, "TT;"
    new-instance v3, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1, v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeClosure;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;Ljava/util/UUID;Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->doHandshake(Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2033
    :cond_0
    :goto_0
    invoke-virtual {v13}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->cancel()Z

    move-result v9

    .line 2035
    .local v9, "cancelled":Z
    if-eqz v9, :cond_1

    .line 2036
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;

    invoke-virtual {v3, v13}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->removeTimeoutObject(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;)V

    .line 2039
    :cond_1
    if-nez v9, :cond_15

    .line 2040
    new-instance v3, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutException;

    const-string v4, "Failed to perform handshake due to timeout (consider increasing \'connectionTimeout\' configuration property)."

    invoke-direct {v3, v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1938
    .end local v9    # "cancelled":Z
    .restart local p1    # "client":Ljava/lang/Object;, "TT;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/nio/channels/SocketChannel;

    move-object v10, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1940
    .local v10, "ch":Ljava/nio/channels/SocketChannel;
    const/16 v18, 0x0

    .line 1943
    .local v18, "success":Z
    const/16 v3, 0x11

    :try_start_2
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 1945
    .local v8, "buf":Ljava/nio/ByteBuffer;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    const/16 v3, 0x11

    if-ge v12, v3, :cond_7

    .line 1946
    invoke-virtual {v10, v8}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 1948
    .local v16, "read":I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_6

    .line 1949
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    const-string v4, "Failed to read remote node ID (connection closed)."

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2020
    .end local v8    # "buf":Ljava/nio/ByteBuffer;
    .end local v12    # "i":I
    .end local v16    # "read":I
    :catch_0
    move-exception v11

    .line 2021
    .local v11, "e":Ljava/io/IOException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2022
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read from channel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2024
    :cond_3
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    const-string v4, "Failed to read from channel."

    invoke-direct {v3, v4, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2027
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-nez v18, :cond_4

    .line 2028
    :try_start_4
    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2033
    .end local v10    # "ch":Ljava/nio/channels/SocketChannel;
    .end local v18    # "success":Z
    .end local p1    # "client":Ljava/lang/Object;, "TT;"
    :catchall_1
    move-exception v3

    invoke-virtual {v13}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->cancel()Z

    move-result v9

    .line 2035
    .restart local v9    # "cancelled":Z
    if-eqz v9, :cond_5

    .line 2036
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;

    invoke-virtual {v4, v13}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->removeTimeoutObject(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;)V

    .line 2039
    :cond_5
    if-nez v9, :cond_14

    .line 2040
    new-instance v3, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutException;

    const-string v4, "Failed to perform handshake due to timeout (consider increasing \'connectionTimeout\' configuration property)."

    invoke-direct {v3, v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1951
    .end local v9    # "cancelled":Z
    .restart local v8    # "buf":Ljava/nio/ByteBuffer;
    .restart local v10    # "ch":Ljava/nio/channels/SocketChannel;
    .restart local v12    # "i":I
    .restart local v16    # "read":I
    .restart local v18    # "success":Z
    .restart local p1    # "client":Ljava/lang/Object;, "TT;"
    :cond_6
    add-int v12, v12, v16

    .line 1952
    goto :goto_1

    .line 1954
    .end local v16    # "read":I
    :cond_7
    :try_start_5
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToUuid([BI)Ljava/util/UUID;

    move-result-object v17

    .line 1956
    .local v17, "rmtNodeId0":Ljava/util/UUID;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1957
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote node ID is not as expected [expected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rcvd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1959
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1960
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received remote node ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1962
    :cond_9
    sget-object v3, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1964
    if-eqz p2, :cond_d

    .line 1965
    new-instance v2, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v3}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->incrementConnectCount()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->receivedCount()J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;-><init>(Ljava/util/UUID;JJ)V

    .line 1969
    .local v2, "msg":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1970
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write handshake message [rmtNode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg="

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

    .line 1972
    :cond_a
    const/16 v3, 0x21

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 1974
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1976
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/spi/IgniteSpiContext;->messageFormatter()Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;->writer()Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v19

    .line 1978
    .local v19, "written":Z
    sget-boolean v3, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->$assertionsDisabled:Z

    if-nez v3, :cond_b

    if-nez v19, :cond_b

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1980
    :cond_b
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1982
    invoke-virtual {v10, v8}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1987
    .end local v2    # "msg":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;
    .end local v19    # "written":Z
    :goto_2
    if-eqz p2, :cond_13

    .line 1988
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1989
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waiting for handshake [rmtNode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1991
    :cond_c
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 1993
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1995
    const/4 v12, 0x0

    :goto_3
    const/16 v3, 0x9

    if-ge v12, v3, :cond_f

    .line 1996
    invoke-virtual {v10, v8}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 1998
    .restart local v16    # "read":I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_e

    .line 1999
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    const-string v4, "Failed to read remote node recovery handshake (connection closed)."

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1985
    .end local v16    # "read":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->nodeIdMsg:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;

    invoke-static {v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->access$3000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_2

    .line 2002
    .restart local v16    # "read":I
    :cond_e
    add-int v12, v12, v16

    .line 2003
    goto :goto_3

    .line 2005
    .end local v16    # "read":I
    :cond_f
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v14

    .line 2007
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2008
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received handshake message [rmtNode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rcvCnt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2010
    :cond_10
    const-wide/16 v4, -0x1

    cmp-long v3, v14, v4

    if-nez v3, :cond_12

    .line 2011
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2012
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection rejected, will retry client creation [rmtNode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2027
    :cond_11
    :goto_4
    if-nez v18, :cond_0

    .line 2028
    :try_start_6
    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 2015
    :cond_12
    const/16 v18, 0x1

    goto :goto_4

    .line 2018
    :cond_13
    const/16 v18, 0x1

    goto :goto_4

    .line 2042
    .end local v8    # "buf":Ljava/nio/ByteBuffer;
    .end local v10    # "ch":Ljava/nio/channels/SocketChannel;
    .end local v12    # "i":I
    .end local v17    # "rmtNodeId0":Ljava/util/UUID;
    .end local v18    # "success":Z
    .end local p1    # "client":Ljava/lang/Object;, "TT;"
    .restart local v9    # "cancelled":Z
    :cond_14
    throw v3

    .line 2044
    :cond_15
    return-wide v14
.end method


# virtual methods
.method protected checkConfigurationConsistency0(Lorg/apache/ignite/spi/IgniteSpiContext;Lorg/apache/ignite/cluster/ClusterNode;Z)V
    .locals 1
    .param p1, "spiCtx"    # Lorg/apache/ignite/spi/IgniteSpiContext;
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p3, "starting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 1539
    const-string v0, "comm.tcp.addrs"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->checkAttributePresence(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)V

    .line 1540
    const-string v0, "comm.tcp.host.names"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->checkAttributePresence(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)V

    .line 1541
    const-string v0, "comm.tcp.port"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->checkAttributePresence(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)V

    .line 1542
    return-void
.end method

.method protected createNioClient(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .locals 2
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1694
    sget-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1696
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/spi/IgniteSpiContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1697
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "Failed to create NIO client (local node is stopping)"

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1699
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->createTcpClient(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    move-result-object v0

    return-object v0
.end method

.method protected createTcpClient(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .locals 32
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1710
    const-string v2, "comm.tcp.addrs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 1711
    .local v23, "rmtAddrs0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v2, "comm.tcp.host.names"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Collection;

    .line 1712
    .local v26, "rmtHostNames0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v2, "comm.tcp.port"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 1713
    .local v11, "boundPort":Ljava/lang/Integer;
    const-string v2, "comm.tcp.ext-addrs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Collection;

    .line 1715
    .local v18, "extAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v11, :cond_0

    const/16 v21, 0x1

    .line 1716
    .local v21, "isRmtAddrsExist":Z
    :goto_0
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v20, 0x1

    .line 1718
    .local v20, "isExtAddrsExist":Z
    :goto_1
    if-nez v21, :cond_2

    if-nez v20, :cond_2

    .line 1719
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Failed to send message to the destination node. Node doesn\'t have any TCP communication addresses or mapped external addresses. Check configuration and make sure that you use the same communication SPI on all nodes. Remote node id: "

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1715
    .end local v20    # "isExtAddrsExist":Z
    .end local v21    # "isRmtAddrsExist":Z
    :cond_0
    const/16 v21, 0x0

    goto :goto_0

    .line 1716
    .restart local v21    # "isRmtAddrsExist":Z
    :cond_1
    const/16 v20, 0x0

    goto :goto_1

    .line 1726
    .restart local v20    # "isExtAddrsExist":Z
    :cond_2
    if-eqz v21, :cond_7

    .line 1727
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toSocketAddresses(Ljava/util/Collection;Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1729
    .local v9, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/spi/IgniteSpiContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sameMacs(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v27

    .line 1731
    .local v27, "sameHost":Z
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/typedef/internal/U;->inetAddressesComparator(Z)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v9, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1737
    .end local v27    # "sameHost":Z
    :goto_2
    if-eqz v20, :cond_3

    .line 1738
    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1740
    :cond_3
    const/4 v14, 0x0

    .line 1741
    .local v14, "conn":Z
    const/4 v12, 0x0

    .line 1742
    .local v12, "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    const/16 v17, 0x0

    .line 1744
    .local v17, "errs":Lorg/apache/ignite/IgniteCheckedException;
    const/4 v15, 0x1

    .line 1746
    .local v15, "connectAttempts":I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    .line 1747
    .local v8, "addr":Ljava/net/InetSocketAddress;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connTimeout:J

    .line 1749
    .local v6, "connTimeout0":J
    const/4 v10, 0x1

    .local v10, "attempt":I
    move-object v13, v12

    .line 1751
    .end local v12    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .local v13, "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    :goto_3
    if-nez v14, :cond_21

    .line 1753
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    .line 1755
    .local v3, "ch":Ljava/nio/channels/SocketChannel;
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 1757
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->tcpNoDelay:Z

    invoke-virtual {v2, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 1758
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 1760
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockRcvBuf:I

    if-lez v2, :cond_5

    .line 1761
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockRcvBuf:I

    invoke-virtual {v2, v5}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 1763
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockSndBuf:I

    if-lez v2, :cond_6

    .line 1764
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockSndBuf:I

    invoke-virtual {v2, v5}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 1766
    :cond_6
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->recoveryDescriptor(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    move-result-object v4

    .line 1768
    .local v4, "recoveryDesc":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->reserve()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1769
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1771
    const/4 v12, 0x0

    move-object v2, v12

    move-object v12, v13

    .line 1908
    .end local v3    # "ch":Ljava/nio/channels/SocketChannel;
    .end local v4    # "recoveryDesc":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .end local v6    # "connTimeout0":J
    .end local v8    # "addr":Ljava/net/InetSocketAddress;
    .end local v10    # "attempt":I
    .end local v13    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .restart local v12    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    :goto_4
    return-object v2

    .line 1734
    .end local v9    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    .end local v12    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .end local v14    # "conn":Z
    .end local v15    # "connectAttempts":I
    .end local v17    # "errs":Lorg/apache/ignite/IgniteCheckedException;
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    goto :goto_2

    .line 1774
    .restart local v3    # "ch":Ljava/nio/channels/SocketChannel;
    .restart local v4    # "recoveryDesc":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .restart local v6    # "connTimeout0":J
    .restart local v8    # "addr":Ljava/net/InetSocketAddress;
    .restart local v10    # "attempt":I
    .restart local v13    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .restart local v14    # "conn":Z
    .restart local v15    # "connectAttempts":I
    .restart local v17    # "errs":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v19    # "i$":Ljava/util/Iterator;
    :cond_8
    const-wide/16 v24, -0x1

    .line 1777
    .local v24, "rcvCnt":J
    :try_start_1
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connTimeout:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    long-to-int v5, v0

    invoke-virtual {v2, v8, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 1779
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->safeHandshake(Ljava/lang/Object;Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;Ljava/util/UUID;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v24

    .line 1781
    const-wide/16 v30, -0x1

    cmp-long v2, v24, v30

    if-nez v2, :cond_a

    .line 1782
    const/4 v12, 0x0

    .line 1785
    if-eqz v4, :cond_9

    const-wide/16 v30, -0x1

    cmp-long v2, v24, v30

    if-nez v2, :cond_9

    .line 1786
    :try_start_2
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->release()V

    :cond_9
    move-object v2, v12

    move-object v12, v13

    .end local v13    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .restart local v12    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    goto :goto_4

    .line 1785
    .end local v12    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .restart local v13    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    :cond_a
    if-eqz v4, :cond_b

    const-wide/16 v30, -0x1

    cmp-long v2, v24, v30

    if-nez v2, :cond_b

    .line 1786
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->release()V
    :try_end_2
    .catch Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1790
    :cond_b
    :try_start_3
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 1792
    .local v22, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget v2, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->NODE_ID_META:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    if-eqz v4, :cond_c

    .line 1795
    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->onHandshake(J)V

    .line 1797
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1800
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->nioSrvr:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->createSession(Ljava/nio/channels/SocketChannel;Ljava/util/Map;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->get()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .line 1802
    .local v28, "ses":Lorg/apache/ignite/internal/util/nio/GridNioSession;
    new-instance v12, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, v28

    invoke-direct {v12, v0, v2}, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteLogger;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1804
    .end local v13    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .restart local v12    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    const/4 v14, 0x1

    .line 1807
    if-nez v14, :cond_d

    .line 1808
    if-eqz v4, :cond_d

    .line 1809
    :try_start_4
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->release()V
    :try_end_4
    .catch Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_d
    move-object v13, v12

    .line 1886
    .end local v12    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .restart local v13    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    goto/16 :goto_3

    .line 1785
    .end local v22    # "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v28    # "ses":Lorg/apache/ignite/internal/util/nio/GridNioSession;
    :catchall_0
    move-exception v2

    if-eqz v4, :cond_e

    const-wide/16 v30, -0x1

    cmp-long v5, v24, v30

    if-nez v5, :cond_e

    .line 1786
    :try_start_5
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->release()V

    :cond_e
    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1813
    .end local v3    # "ch":Ljava/nio/channels/SocketChannel;
    .end local v4    # "recoveryDesc":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .end local v24    # "rcvCnt":J
    :catch_0
    move-exception v16

    move-object v12, v13

    .line 1814
    .end local v13    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .restart local v12    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .local v16, "e":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutException;
    :goto_5
    if-eqz v12, :cond_f

    .line 1815
    invoke-interface {v12}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->forceClose()V

    .line 1817
    const/4 v12, 0x0

    .line 1820
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handshake timedout (will retry with increased timeout) [timeout="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", addr="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x5d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1824
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Handshake timedout (will retry with increased timeout) [timeout="

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v29, ", addr="

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v29, ", err="

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v29, 0x5d

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1828
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->reconCnt:I

    if-eq v10, v2, :cond_11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->maxConnTimeout:J

    move-wide/from16 v30, v0

    cmp-long v2, v6, v30

    if-lez v2, :cond_1c

    .line 1829
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1830
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Handshake timedout (will stop attempts to perform the handshake) [timeout="

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v29, ", maxConnTimeout="

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->maxConnTimeout:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v29, ", attempt="

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v29, ", reconCnt="

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->reconCnt:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v29, ", err="

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v29, ", addr="

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v29, 0x5d

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1835
    :cond_12
    if-nez v17, :cond_13

    .line 1836
    new-instance v17, Lorg/apache/ignite/IgniteCheckedException;

    .end local v17    # "errs":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to connect to node (is node still alive?). Make sure that each GridComputeTask and GridCacheTransaction has a timeout set in order to prevent parties from waiting forever in case of network issues [nodeId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", addrs="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x5d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    .line 1841
    .restart local v17    # "errs":Lorg/apache/ignite/IgniteCheckedException;
    :cond_13
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Failed to connect to address: "

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-direct {v2, v5, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/apache/ignite/IgniteCheckedException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1889
    .end local v16    # "e":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutException;
    :cond_14
    :goto_6
    if-eqz v14, :cond_4

    .line 1893
    .end local v6    # "connTimeout0":J
    .end local v8    # "addr":Ljava/net/InetSocketAddress;
    .end local v10    # "attempt":I
    :cond_15
    if-nez v12, :cond_1f

    .line 1894
    sget-boolean v2, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->$assertionsDisabled:Z

    if-nez v2, :cond_1d

    if-nez v17, :cond_1d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1807
    .end local v12    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .restart local v3    # "ch":Ljava/nio/channels/SocketChannel;
    .restart local v4    # "recoveryDesc":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .restart local v6    # "connTimeout0":J
    .restart local v8    # "addr":Ljava/net/InetSocketAddress;
    .restart local v10    # "attempt":I
    .restart local v13    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .restart local v24    # "rcvCnt":J
    :catchall_1
    move-exception v2

    if-nez v14, :cond_16

    .line 1808
    if-eqz v4, :cond_16

    .line 1809
    :try_start_6
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->release()V

    :cond_16
    throw v2
    :try_end_6
    .catch Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1853
    .end local v3    # "ch":Ljava/nio/channels/SocketChannel;
    .end local v4    # "recoveryDesc":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .end local v24    # "rcvCnt":J
    :catch_1
    move-exception v16

    move-object v12, v13

    .line 1854
    .end local v13    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .restart local v12    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .local v16, "e":Ljava/lang/Exception;
    :goto_7
    if-eqz v12, :cond_17

    .line 1855
    invoke-interface {v12}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->forceClose()V

    .line 1857
    const/4 v12, 0x0

    .line 1860
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client creation failed [addr="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", err="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x5d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1862
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1863
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Client creation failed [addr="

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v29, ", err="

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v29, 0x5d

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1865
    :cond_18
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v29, Ljava/net/SocketTimeoutException;

    aput-object v29, v2, v5

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1866
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v5, 0x0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Connect timed out (consider increasing \'connTimeout\' configuration property) [addr="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x5d

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v2, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1869
    :cond_19
    if-nez v17, :cond_1a

    .line 1870
    new-instance v17, Lorg/apache/ignite/IgniteCheckedException;

    .end local v17    # "errs":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to connect to node (is node still alive?). Make sure that each GridComputeTask and GridCacheTransaction has a timeout set in order to prevent parties from waiting forever in case of network issues [nodeId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", addrs="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x5d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    .line 1875
    .restart local v17    # "errs":Lorg/apache/ignite/IgniteCheckedException;
    :cond_1a
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Failed to connect to address: "

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-direct {v2, v5, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/apache/ignite/IgniteCheckedException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1878
    const/4 v2, 0x2

    if-ge v15, v2, :cond_14

    move-object/from16 v0, v16

    instance-of v2, v0, Ljava/net/ConnectException;

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v29, Ljava/net/ConnectException;

    aput-object v29, v2, v5

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1880
    :cond_1b
    add-int/lit8 v15, v15, 0x1

    move-object v13, v12

    .line 1882
    .end local v12    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .restart local v13    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    goto/16 :goto_3

    .line 1846
    .end local v13    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .restart local v12    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .local v16, "e":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutException;
    :cond_1c
    add-int/lit8 v10, v10, 0x1

    .line 1848
    const-wide/16 v30, 0x2

    mul-long v6, v6, v30

    move-object v13, v12

    .line 1886
    .end local v12    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .restart local v13    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    goto/16 :goto_3

    .line 1896
    .end local v6    # "connTimeout0":J
    .end local v8    # "addr":Ljava/net/InetSocketAddress;
    .end local v10    # "attempt":I
    .end local v13    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .end local v16    # "e":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutException;
    .restart local v12    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    :cond_1d
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v29, Ljava/net/ConnectException;

    aput-object v29, v2, v5

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1897
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v5, 0x0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Failed to connect to a remote node (make sure that destination node is alive and operating system firewall is disabled on local and remote hosts) [addrs="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x5d

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v2, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1902
    :cond_1e
    throw v17

    .line 1905
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1906
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Created client: "

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_20
    move-object v2, v12

    .line 1908
    goto/16 :goto_4

    .line 1853
    .restart local v3    # "ch":Ljava/nio/channels/SocketChannel;
    .restart local v4    # "recoveryDesc":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .restart local v6    # "connTimeout0":J
    .restart local v8    # "addr":Ljava/net/InetSocketAddress;
    .restart local v10    # "attempt":I
    .restart local v22    # "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local v24    # "rcvCnt":J
    .restart local v28    # "ses":Lorg/apache/ignite/internal/util/nio/GridNioSession;
    :catch_2
    move-exception v16

    goto/16 :goto_7

    .line 1813
    :catch_3
    move-exception v16

    goto/16 :goto_5

    .end local v3    # "ch":Ljava/nio/channels/SocketChannel;
    .end local v4    # "recoveryDesc":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .end local v12    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .end local v22    # "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v24    # "rcvCnt":J
    .end local v28    # "ses":Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .restart local v13    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    :cond_21
    move-object v12, v13

    .end local v13    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .restart local v12    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    goto/16 :goto_6
.end method

.method public getAckSendThreshold()I
    .locals 1

    .prologue
    .line 856
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ackSndThreshold:I

    return v0
.end method

.method public getBufferSizeRatio()D
    .locals 2

    .prologue
    .line 1143
    iget-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->bufSizeRatio:D

    return-wide v0
.end method

.method public getConnectTimeout()J
    .locals 2

    .prologue
    .line 934
    iget-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connTimeout:J

    return-wide v0
.end method

.method public getConnectionBufferFlushFrequency()J
    .locals 2

    .prologue
    .line 914
    iget-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connBufFlushFreq:J

    return-wide v0
.end method

.method public getConnectionBufferSize()I
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connBufSize:I

    return v0
.end method

.method public getIdleConnectionTimeout()J
    .locals 2

    .prologue
    .line 833
    iget-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->idleConnTimeout:J

    return-wide v0
.end method

.method public getListener()Lorg/apache/ignite/spi/communication/CommunicationListener;
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->lsnr:Lorg/apache/ignite/spi/communication/CommunicationListener;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locPort:I

    return v0
.end method

.method public getLocalPortRange()I
    .locals 1

    .prologue
    .line 815
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locPortRange:I

    return v0
.end method

.method public getMaxConnectTimeout()J
    .locals 2

    .prologue
    .line 956
    iget-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->maxConnTimeout:J

    return-wide v0
.end method

.method public getMessageQueueLimit()I
    .locals 1

    .prologue
    .line 1105
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->msgQueueLimit:I

    return v0
.end method

.method public getMinimumBufferedMessageCount()I
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->minBufferedMsgCnt:I

    return v0
.end method

.method public getNodeAttributes()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-wide/16 v12, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1195
    new-instance v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;

    iget-object v3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v3}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v0, v3, v7}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;-><init>(Ljava/util/UUID;Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->nodeIdMsg:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;

    .line 1197
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locPort:I

    const/16 v3, 0x3ff

    if-le v0, v3, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "locPort > 1023"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1198
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locPort:I

    const v3, 0xffff

    if-gt v0, v3, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "locPort < 0xffff"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1199
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locPortRange:I

    if-ltz v0, :cond_3

    move v0, v1

    :goto_2
    const-string v3, "locPortRange >= 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1200
    iget-wide v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->idleConnTimeout:J

    cmp-long v0, v4, v12

    if-lez v0, :cond_4

    move v0, v1

    :goto_3
    const-string v3, "idleConnTimeout > 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1201
    iget-wide v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connBufFlushFreq:J

    cmp-long v0, v4, v12

    if-lez v0, :cond_5

    move v0, v1

    :goto_4
    const-string v3, "connBufFlushFreq > 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1202
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connBufSize:I

    if-ltz v0, :cond_6

    move v0, v1

    :goto_5
    const-string v3, "connBufSize >= 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1203
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockRcvBuf:I

    if-ltz v0, :cond_7

    move v0, v1

    :goto_6
    const-string v3, "sockRcvBuf >= 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1204
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockSndBuf:I

    if-ltz v0, :cond_8

    move v0, v1

    :goto_7
    const-string v3, "sockSndBuf >= 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1205
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->msgQueueLimit:I

    if-ltz v0, :cond_9

    move v0, v1

    :goto_8
    const-string v3, "msgQueueLimit >= 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1206
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->reconCnt:I

    if-lez v0, :cond_a

    move v0, v1

    :goto_9
    const-string v3, "reconnectCnt > 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1207
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->selectorsCnt:I

    if-lez v0, :cond_b

    move v0, v1

    :goto_a
    const-string v3, "selectorsCnt > 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1208
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->minBufferedMsgCnt:I

    if-ltz v0, :cond_c

    move v0, v1

    :goto_b
    const-string v3, "minBufferedMsgCnt >= 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1209
    iget-wide v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->bufSizeRatio:D

    const-wide/16 v10, 0x0

    cmpl-double v0, v4, v10

    if-lez v0, :cond_d

    iget-wide v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->bufSizeRatio:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v4, v10

    if-gez v0, :cond_d

    move v0, v1

    :goto_c
    const-string v3, "bufSizeRatio > 0 && bufSizeRatio < 1"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1210
    iget-wide v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connTimeout:J

    cmp-long v0, v4, v12

    if-ltz v0, :cond_e

    move v0, v1

    :goto_d
    const-string v3, "connTimeout >= 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1211
    iget-wide v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->maxConnTimeout:J

    iget-wide v10, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connTimeout:J

    cmp-long v0, v4, v10

    if-ltz v0, :cond_f

    move v0, v1

    :goto_e
    const-string v3, "maxConnTimeout >= connTimeout"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1212
    iget-wide v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockWriteTimeout:J

    cmp-long v0, v4, v12

    if-ltz v0, :cond_10

    move v0, v1

    :goto_f
    const-string v3, "sockWriteTimeout >= 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1213
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ackSndThreshold:I

    if-lez v0, :cond_11

    move v0, v1

    :goto_10
    const-string v3, "ackSndThreshold > 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1214
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->unackedMsgsBufSize:I

    if-ltz v0, :cond_12

    move v0, v1

    :goto_11
    const-string/jumbo v3, "unackedMsgsBufSize >= 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1216
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->unackedMsgsBufSize:I

    if-lez v0, :cond_0

    .line 1217
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->unackedMsgsBufSize:I

    iget v3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->msgQueueLimit:I

    mul-int/lit8 v3, v3, 0x5

    if-lt v0, v3, :cond_13

    move v0, v1

    :goto_12
    const-string v3, "Specified \'unackedMsgsBufSize\' is too low, it should be at least \'msgQueueLimit * 5\'."

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1220
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->unackedMsgsBufSize:I

    iget v3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ackSndThreshold:I

    mul-int/lit8 v3, v3, 0x5

    if-lt v0, v3, :cond_14

    :goto_13
    const-string v0, "Specified \'unackedMsgsBufSize\' is too low, it should be at least \'ackSndThreshold * 5\'."

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->assertParameter(ZLjava/lang/String;)V

    .line 1225
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locAddr:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveLocalHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locHost:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    :try_start_1
    invoke-direct {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->resetNioServer()Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->nioSrvr:Lorg/apache/ignite/internal/util/nio/GridNioServer;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1242
    :try_start_2
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locHost:Ljava/net/InetAddress;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveLocalAddresses(Ljava/net/InetAddress;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v8

    .line 1244
    .local v8, "addrs":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->addrRslvr:Lorg/apache/ignite/configuration/AddressResolver;

    if-nez v0, :cond_15

    .line 1247
    .local v7, "extAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :goto_14
    const-string v0, "comm.tcp.addrs"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "comm.tcp.host.names"

    invoke-virtual {p0, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "comm.tcp.port"

    invoke-virtual {p0, v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->boundTcpPort:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "comm.tcp.ext-addrs"

    invoke-virtual {p0, v6}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/F;->asMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    return-object v0

    .end local v7    # "extAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .end local v8    # "addrs":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :cond_1
    move v0, v2

    .line 1197
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 1198
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 1199
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 1200
    goto/16 :goto_3

    :cond_5
    move v0, v2

    .line 1201
    goto/16 :goto_4

    :cond_6
    move v0, v2

    .line 1202
    goto/16 :goto_5

    :cond_7
    move v0, v2

    .line 1203
    goto/16 :goto_6

    :cond_8
    move v0, v2

    .line 1204
    goto/16 :goto_7

    :cond_9
    move v0, v2

    .line 1205
    goto/16 :goto_8

    :cond_a
    move v0, v2

    .line 1206
    goto/16 :goto_9

    :cond_b
    move v0, v2

    .line 1207
    goto/16 :goto_a

    :cond_c
    move v0, v2

    .line 1208
    goto/16 :goto_b

    :cond_d
    move v0, v2

    .line 1209
    goto/16 :goto_c

    :cond_e
    move v0, v2

    .line 1210
    goto/16 :goto_d

    :cond_f
    move v0, v2

    .line 1211
    goto/16 :goto_e

    :cond_10
    move v0, v2

    .line 1212
    goto/16 :goto_f

    :cond_11
    move v0, v2

    .line 1213
    goto/16 :goto_10

    :cond_12
    move v0, v2

    .line 1214
    goto/16 :goto_11

    :cond_13
    move v0, v2

    .line 1217
    goto/16 :goto_12

    :cond_14
    move v1, v2

    .line 1220
    goto/16 :goto_13

    .line 1227
    :catch_0
    move-exception v9

    .line 1228
    .local v9, "e":Ljava/io/IOException;
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initialize local address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1236
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 1237
    .local v9, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initialize TCP server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1244
    .end local v9    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v8    # "addrs":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :cond_15
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->addrRslvr:Lorg/apache/ignite/configuration/AddressResolver;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/util/Collection;

    const/4 v3, 0x0

    invoke-virtual {v8}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v8}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->flat(Ljava/lang/Iterable;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    iget v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->boundTcpPort:I

    invoke-static {v1, v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveAddresses(Lorg/apache/ignite/configuration/AddressResolver;Ljava/lang/Iterable;I)Ljava/util/Collection;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v7

    goto/16 :goto_14

    .line 1253
    .end local v8    # "addrs":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :catch_2
    move-exception v9

    .line 1254
    .local v9, "e":Ljava/lang/Exception;
    :goto_15
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve local host to addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1253
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    goto :goto_15
.end method

.method public getOutboundMessagesQueueSize()I
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->nioSrvr:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->outboundMessagesQueueSize()I

    move-result v0

    return v0
.end method

.method public getReceivedBytesCount()J
    .locals 2

    .prologue
    .line 1175
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->rcvdBytesCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReceivedMessagesCount()I
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->rcvdMsgsCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->intValue()I

    move-result v0

    return v0
.end method

.method public getReconnectCount()I
    .locals 1

    .prologue
    .line 974
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->reconCnt:I

    return v0
.end method

.method public getSelectorsCount()I
    .locals 1

    .prologue
    .line 1027
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->selectorsCnt:I

    return v0
.end method

.method public getSentBytesCount()J
    .locals 2

    .prologue
    .line 1165
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sentBytesCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSentMessagesCount()I
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sentMsgsCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->intValue()I

    move-result v0

    return v0
.end method

.method public getSocketReceiveBuffer()I
    .locals 1

    .prologue
    .line 1068
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockRcvBuf:I

    return v0
.end method

.method public getSocketSendBuffer()I
    .locals 1

    .prologue
    .line 1085
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockSndBuf:I

    return v0
.end method

.method public getSocketWriteTimeout()J
    .locals 2

    .prologue
    .line 838
    iget-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockWriteTimeout:J

    return-wide v0
.end method

.method public getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;
    .locals 6

    .prologue
    .line 1337
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ctxInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1338
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1339
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Waiting for context initialization."

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1342
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ctxInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/CountDownLatch;)V

    .line 1344
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1345
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Context has been initialized."

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    :cond_1
    :goto_0
    invoke-super {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v1

    return-object v1

    .line 1347
    :catch_0
    move-exception v0

    .line 1348
    .local v0, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Thread has been interrupted while waiting for SPI context initialization."

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getUnacknowledgedMessagesBufferSize()I
    .locals 1

    .prologue
    .line 873
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->unackedMsgsBufSize:I

    return v0
.end method

.method protected injectResources(Lorg/apache/ignite/Ignite;)V
    .locals 1
    .param p1, "ignite"    # Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation

    .prologue
    .line 748
    if-eqz p1, :cond_0

    .line 749
    invoke-interface {p1}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getAddressResolver()Lorg/apache/ignite/configuration/AddressResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->setAddressResolver(Lorg/apache/ignite/configuration/AddressResolver;)V

    .line 750
    invoke-interface {p1}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->setLocalAddress(Ljava/lang/String;)V

    .line 751
    invoke-interface {p1}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->gridName:Ljava/lang/String;

    .line 753
    :cond_0
    return-void
.end method

.method public isDirectBuffer()Z
    .locals 1

    .prologue
    .line 993
    iget-boolean v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->directBuf:Z

    return v0
.end method

.method public isDirectSendBuffer()Z
    .locals 1

    .prologue
    .line 998
    iget-boolean v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->directSndBuf:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    .prologue
    .line 1051
    iget-boolean v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->tcpNoDelay:Z

    return v0
.end method

.method protected notifyListener(Ljava/util/UUID;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/lang/IgniteRunnable;)V
    .locals 4
    .param p1, "sndId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p3, "msgC"    # Lorg/apache/ignite/lang/IgniteRunnable;

    .prologue
    .line 2053
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->lsnr:Lorg/apache/ignite/spi/communication/CommunicationListener;

    .line 2055
    .local v0, "lsnr":Lorg/apache/ignite/spi/communication/CommunicationListener;, "Lorg/apache/ignite/spi/communication/CommunicationListener<Lorg/apache/ignite/plugin/extensions/communication/Message;>;"
    if-eqz v0, :cond_1

    .line 2057
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ignite/spi/communication/CommunicationListener;->onMessage(Ljava/util/UUID;Ljava/io/Serializable;Lorg/apache/ignite/lang/IgniteRunnable;)V

    .line 2061
    :cond_0
    :goto_0
    return-void

    .line 2058
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2059
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received communication message without any registered listeners (will ignore, is node stopping?) [senderNodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onContextDestroyed0()V
    .locals 6

    .prologue
    .line 1501
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->stopping:Z

    .line 1503
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ctxInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1505
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ctxInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1508
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clients:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    .line 1509
    .local v0, "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->forceClose()V

    goto :goto_0

    .line 1511
    .end local v0    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/spi/IgniteSpiContext;->deregisterPorts()V

    .line 1513
    invoke-virtual {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    invoke-interface {v2, v3}, Lorg/apache/ignite/spi/IgniteSpiContext;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;)Z

    .line 1514
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
    .line 1328
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->boundTcpPort:I

    sget-object v1, Lorg/apache/ignite/spi/IgnitePortProtocol;->TCP:Lorg/apache/ignite/spi/IgnitePortProtocol;

    invoke-interface {p1, v0, v1}, Lorg/apache/ignite/spi/IgniteSpiContext;->registerPort(ILorg/apache/ignite/spi/IgnitePortProtocol;)V

    .line 1330
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {p1, v0, v1}, Lorg/apache/ignite/spi/IgniteSpiContext;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 1332
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ctxInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1333
    return-void

    .line 1330
    :array_0
    .array-data 4
        0xb
        0xc
    .end array-data
.end method

.method onNodeLeft(Ljava/util/UUID;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 1520
    sget-boolean v1, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1522
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clients:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    .line 1524
    .local v0, "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    if-eqz v0, :cond_2

    .line 1525
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1526
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forcing NIO client close since node has left [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1529
    :cond_1
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->forceClose()V

    .line 1531
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clients:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1533
    :cond_2
    return-void
.end method

.method public resetMetrics()V
    .locals 4

    .prologue
    .line 1187
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sentMsgsCnt:Lorg/jsr166/LongAdder8;

    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sentMsgsCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v1}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 1188
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->rcvdMsgsCnt:Lorg/jsr166/LongAdder8;

    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->rcvdMsgsCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v1}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 1189
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sentBytesCnt:Lorg/jsr166/LongAdder8;

    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sentBytesCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v1}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 1190
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->rcvdBytesCnt:Lorg/jsr166/LongAdder8;

    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->rcvdBytesCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v1}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 1191
    return-void
.end method

.method public bridge synthetic sendMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/io/Serializable;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x1"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 139
    check-cast p2, Lorg/apache/ignite/plugin/extensions/communication/Message;

    .end local p2    # "x1":Ljava/io/Serializable;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sendMessage(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/plugin/extensions/communication/Message;)V

    return-void
.end method

.method public sendMessage(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/plugin/extensions/communication/Message;)V
    .locals 9
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 1559
    sget-boolean v6, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1560
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez p2, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1562
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isTraceEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1563
    iget-object v6, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending message to node [node="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", msg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->trace(Ljava/lang/String;)V

    .line 1565
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v6}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v2

    .line 1567
    .local v2, "locNodeId":Ljava/util/UUID;
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1568
    sget-object v6, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->NOOP:Lorg/apache/ignite/lang/IgniteRunnable;

    invoke-virtual {p0, v2, p2, v6}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->notifyListener(Ljava/util/UUID;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/lang/IgniteRunnable;)V

    .line 1609
    :cond_3
    :goto_0
    return-void

    .line 1570
    :cond_4
    const/4 v0, 0x0

    .line 1576
    .local v0, "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    :cond_5
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->reserveClient(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    move-result-object v0

    .line 1578
    const/4 v4, 0x0

    .line 1580
    .local v4, "nodeId":Ljava/util/UUID;
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->async()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/spi/IgniteSpiContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->version()Lorg/apache/ignite/lang/IgniteProductVersion;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->version()Lorg/apache/ignite/lang/IgniteProductVersion;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/lang/IgniteProductVersion;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1581
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    .line 1583
    :cond_6
    invoke-interface {v0, v4, p2}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->sendMessage(Ljava/util/UUID;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v5

    .line 1585
    .local v5, "retry":Z
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->release()V

    .line 1587
    const/4 v0, 0x0

    .line 1589
    if-nez v5, :cond_8

    .line 1590
    iget-object v6, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sentMsgsCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v6}, Lorg/jsr166/LongAdder8;->increment()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    :cond_7
    if-nez v5, :cond_5

    .line 1605
    if-eqz v0, :cond_3

    iget-object v6, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clients:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1606
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->forceClose()V

    goto :goto_0

    .line 1592
    :cond_8
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    .line 1594
    .local v3, "node0":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v3, :cond_7

    .line 1595
    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send message to remote node (node has left the grid): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1601
    .end local v3    # "node0":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v4    # "nodeId":Ljava/util/UUID;
    .end local v5    # "retry":Z
    :catch_0
    move-exception v1

    .line 1602
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    new-instance v6, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send message to remote node: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1605
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_9

    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clients:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1606
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->forceClose()V

    :cond_9
    throw v6
.end method

.method public setAckSendThreshold(I)V
    .locals 0
    .param p1, "ackSndThreshold"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 868
    iput p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ackSndThreshold:I

    .line 869
    return-void
.end method

.method public setAddressResolver(Lorg/apache/ignite/configuration/AddressResolver;)V
    .locals 1
    .param p1, "addrRslvr"    # Lorg/apache/ignite/configuration/AddressResolver;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 737
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->addrRslvr:Lorg/apache/ignite/configuration/AddressResolver;

    if-nez v0, :cond_0

    .line 738
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->addrRslvr:Lorg/apache/ignite/configuration/AddressResolver;

    .line 739
    :cond_0
    return-void
.end method

.method public setBufferSizeRatio(D)V
    .locals 1
    .param p1, "bufSizeRatio"    # D
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 1138
    iput-wide p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->bufSizeRatio:D

    .line 1139
    return-void
.end method

.method public setConnectTimeout(J)V
    .locals 1
    .param p1, "connTimeout"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 929
    iput-wide p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connTimeout:J

    .line 930
    return-void
.end method

.method public setConnectionBufferFlushFrequency(J)V
    .locals 1
    .param p1, "connBufFlushFreq"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 909
    iput-wide p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connBufFlushFreq:J

    .line 910
    return-void
.end method

.method public setConnectionBufferSize(I)V
    .locals 0
    .param p1, "connBufSize"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 898
    iput p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connBufSize:I

    .line 899
    return-void
.end method

.method public setDirectBuffer(Z)V
    .locals 0
    .param p1, "directBuf"    # Z
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 988
    iput-boolean p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->directBuf:Z

    .line 989
    return-void
.end method

.method public setDirectSendBuffer(Z)V
    .locals 0
    .param p1, "directSndBuf"    # Z
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 1010
    iput-boolean p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->directSndBuf:Z

    .line 1011
    return-void
.end method

.method public setIdleConnectionTimeout(J)V
    .locals 1
    .param p1, "idleConnTimeout"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 828
    iput-wide p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->idleConnTimeout:J

    .line 829
    return-void
.end method

.method public setListener(Lorg/apache/ignite/spi/communication/CommunicationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/spi/communication/CommunicationListener",
            "<",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1148
    .local p1, "lsnr":Lorg/apache/ignite/spi/communication/CommunicationListener;, "Lorg/apache/ignite/spi/communication/CommunicationListener<Lorg/apache/ignite/plugin/extensions/communication/Message;>;"
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->lsnr:Lorg/apache/ignite/spi/communication/CommunicationListener;

    .line 1149
    return-void
.end method

.method public setLocalAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "locAddr"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 766
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locAddr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 767
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locAddr:Ljava/lang/String;

    .line 768
    :cond_0
    return-void
.end method

.method public setLocalPort(I)V
    .locals 0
    .param p1, "locPort"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 784
    iput p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locPort:I

    .line 785
    return-void
.end method

.method public setLocalPortRange(I)V
    .locals 0
    .param p1, "locPortRange"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 810
    iput p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locPortRange:I

    .line 811
    return-void
.end method

.method public setMaxConnectTimeout(J)V
    .locals 1
    .param p1, "maxConnTimeout"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 951
    iput-wide p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->maxConnTimeout:J

    .line 952
    return-void
.end method

.method public setMessageQueueLimit(I)V
    .locals 0
    .param p1, "msgQueueLimit"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 1100
    iput p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->msgQueueLimit:I

    .line 1101
    return-void
.end method

.method public setMinimumBufferedMessageCount(I)V
    .locals 0
    .param p1, "minBufferedMsgCnt"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 1119
    iput p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->minBufferedMsgCnt:I

    .line 1120
    return-void
.end method

.method public setReconnectCount(I)V
    .locals 0
    .param p1, "reconCnt"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 969
    iput p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->reconCnt:I

    .line 970
    return-void
.end method

.method public setSelectorsCount(I)V
    .locals 0
    .param p1, "selectorsCnt"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 1022
    iput p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->selectorsCnt:I

    .line 1023
    return-void
.end method

.method public setSocketReceiveBuffer(I)V
    .locals 0
    .param p1, "sockRcvBuf"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 1063
    iput p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockRcvBuf:I

    .line 1064
    return-void
.end method

.method public setSocketSendBuffer(I)V
    .locals 0
    .param p1, "sockSndBuf"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 1080
    iput p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockSndBuf:I

    .line 1081
    return-void
.end method

.method public setSocketWriteTimeout(J)V
    .locals 1
    .param p1, "sockWriteTimeout"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 851
    iput-wide p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockWriteTimeout:J

    .line 852
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 0
    .param p1, "tcpNoDelay"    # Z
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 1046
    iput-boolean p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->tcpNoDelay:Z

    .line 1047
    return-void
.end method

.method public setUnacknowledgedMessagesBufferSize(I)V
    .locals 0
    .param p1, "unackedMsgsBufSize"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 885
    iput p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->unackedMsgsBufSize:I

    .line 886
    return-void
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 4
    .param p1, "gridName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 1260
    sget-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locHost:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1263
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->startStopwatch()V

    .line 1266
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1267
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "locAddr"

    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locAddr:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1268
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "locPort"

    iget v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1269
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "locPortRange"

    iget v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->locPortRange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "idleConnTimeout"

    iget-wide v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->idleConnTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "directBuf"

    iget-boolean v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->directBuf:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "directSendBuf"

    iget-boolean v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->directSndBuf:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "connBufSize"

    iget v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connBufSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "connBufFlushFreq"

    iget-wide v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connBufFlushFreq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1275
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "selectorsCnt"

    iget v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->selectorsCnt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string/jumbo v1, "tcpNoDelay"

    iget-boolean v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->tcpNoDelay:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "sockSndBuf"

    iget v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockSndBuf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "sockRcvBuf"

    iget v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockRcvBuf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "msgQueueLimit"

    iget v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->msgQueueLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1280
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "minBufferedMsgCnt"

    iget v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->minBufferedMsgCnt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1281
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "bufSizeRatio"

    iget-wide v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->bufSizeRatio:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "connTimeout"

    iget-wide v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1283
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "maxConnTimeout"

    iget-wide v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->maxConnTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1284
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "reconCnt"

    iget v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->reconCnt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1285
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "sockWriteTimeout"

    iget-wide v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockWriteTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "ackSndThreshold"

    iget v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->ackSndThreshold:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string/jumbo v1, "unackedMsgsBufSize"

    iget v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->unackedMsgsBufSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1290
    :cond_1
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connBufSize:I

    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 1291
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Specified communication IO buffer size is larger than recommended (ignore if done intentionally) [specified="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connBufSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", recommended=8192]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Specified communication IO buffer size is larger than recommended (ignore if done intentionally)."

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1295
    :cond_2
    iget-boolean v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->tcpNoDelay:Z

    if-nez v0, :cond_3

    .line 1296
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "\'TCP_NO_DELAY\' for communication is off, which should be used with caution since may produce significant delays with some scenarios."

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndWarn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1299
    :cond_3
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpiMBean;

    invoke-virtual {p0, p1, p0, v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 1301
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->nioSrvr:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->start()V

    .line 1303
    new-instance v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;

    invoke-direct {v0, p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->idleClientWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;

    .line 1305
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->idleClientWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->start()V

    .line 1307
    new-instance v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->recoveryWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;

    .line 1309
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->recoveryWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->start()V

    .line 1311
    iget v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->connBufSize:I

    if-lez v0, :cond_4

    .line 1312
    new-instance v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;

    invoke-direct {v0, p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clientFlushWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;

    .line 1314
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clientFlushWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;->start()V

    .line 1317
    :cond_4
    new-instance v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;

    invoke-direct {v0, p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;

    .line 1319
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->start()V

    .line 1322
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1323
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1324
    :cond_5
    return-void
.end method

.method public spiStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1466
    sget-boolean v2, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->stopping:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1468
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->unregisterMBean()V

    .line 1471
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->nioSrvr:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    if-eqz v2, :cond_1

    .line 1472
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->nioSrvr:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->stop()V

    .line 1474
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->idleClientWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 1475
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clientFlushWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 1476
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 1477
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->recoveryWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 1479
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->idleClientWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;

    iget-object v3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 1480
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clientFlushWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;

    iget-object v3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 1481
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->sockTimeoutWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;

    iget-object v3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 1482
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->recoveryWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;

    iget-object v3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 1485
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->clients:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    .line 1486
    .local v0, "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->forceClose()V

    goto :goto_0

    .line 1489
    .end local v0    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    :cond_2
    iput-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->nioSrvr:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .line 1490
    iput-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->idleClientWorker:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;

    .line 1492
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->boundTcpPort:I

    .line 1495
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1496
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->stopInfo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1497
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2097
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
