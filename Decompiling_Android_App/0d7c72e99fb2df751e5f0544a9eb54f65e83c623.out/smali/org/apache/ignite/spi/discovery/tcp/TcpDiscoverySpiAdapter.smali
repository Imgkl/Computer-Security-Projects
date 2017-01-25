.class abstract Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "TcpDiscoverySpiAdapter.java"

# interfaces
.implements Lorg/apache/ignite/spi/discovery/DiscoverySpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;,
        Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;,
        Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;,
        Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_ACK_TIMEOUT:J = 0x1388L

.field public static final DFLT_HEARTBEAT_FREQ:J = 0x7d0L

.field public static final DFLT_NETWORK_TIMEOUT:J = 0x1388L

.field public static final DFLT_PORT:I = 0xb98c

.field public static final DFLT_SOCK_TIMEOUT:J = 0x7d0L

.field public static final DFLT_THREAD_PRI:I = 0xa

.field public static final DFLT_TOP_HISTORY_SIZE:I = 0x3e8

.field protected static final RES_CONTINUE_JOIN:I = 0x64

.field protected static final RES_OK:I = 0x1

.field protected static final RES_WAIT:I = 0xc8


# instance fields
.field protected ackTimeout:J

.field protected exchange:Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;

.field protected volatile gridStartTime:J

.field protected hbFreq:J

.field protected ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

.field protected locAddr:Ljava/lang/String;

.field protected locHost:Ljava/net/InetAddress;

.field protected locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

.field protected locNodeAddrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field protected locNodeAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected locNodeVer:Lorg/apache/ignite/lang/IgniteProductVersion;

.field protected log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field protected volatile lsnr:Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;

.field protected final marsh:Lorg/apache/ignite/marshaller/Marshaller;

.field protected metricsProvider:Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;

.field protected netTimeout:J

.field protected sockTimeout:J

.field protected sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

.field protected spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

.field protected final stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

.field protected threadPri:I

.field protected topHistSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v0, 0x1388

    const-wide/16 v2, 0x7d0

    .line 50
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    .line 88
    iput-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeout:J

    .line 91
    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->ackTimeout:J

    .line 94
    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->netTimeout:J

    .line 97
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->threadPri:I

    .line 100
    iput-wide v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->hbFreq:J

    .line 103
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->topHistSize:I

    .line 133
    sget-object v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->DISCONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 139
    new-instance v0, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

    invoke-direct {v0}, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    .line 142
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-direct {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    .line 1016
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method private static versionCheckFailed(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;)Z
    .locals 2
    .param p0, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 741
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;->error()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "versions are not compatible"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected authenticationFailedError(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;)Lorg/apache/ignite/spi/IgniteSpiException;
    .locals 4
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;

    .prologue
    .line 708
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 710
    :cond_0
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Lorg/apache/ignite/IgniteAuthenticationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication failed [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;->address()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected checkFailedError(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;)Lorg/apache/ignite/spi/IgniteSpiException;
    .locals 2
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;

    .prologue
    .line 719
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 721
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->versionCheckFailed(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiVersionCheckException;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;->error()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiVersionCheckException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;->error()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected duplicateIdError(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;)Lorg/apache/ignite/spi/IgniteSpiException;
    .locals 3
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;

    .prologue
    .line 696
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 698
    :cond_0
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local node has the same ID as existing node in topology (fix configuration and restart local node) [localNode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", existingNode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;->node()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected ensured(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)Z
    .locals 2
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    .line 730
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryEnsureDelivery;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGridStartTime()J
    .locals 4

    .prologue
    .line 351
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->gridStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 353
    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->gridStartTime:J

    return-wide v0
.end method

.method public getIpFinder()Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->locAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    return-object v0
.end method

.method public getTopHistorySize()J
    .locals 2

    .prologue
    .line 278
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->topHistSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected injectResources(Lorg/apache/ignite/Ignite;)V
    .locals 1
    .param p1, "ignite"    # Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-interface {p1}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->setLocalAddress(Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void
.end method

.method protected onContextDestroyed0()V
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->onContextDestroyed0()V

    .line 325
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-interface {v0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->onSpiContextDestroyed()V

    .line 327
    :cond_0
    return-void
.end method

.method protected onContextInitialized0(Lorg/apache/ignite/spi/IgniteSpiContext;)V
    .locals 1
    .param p1, "spiCtx"    # Lorg/apache/ignite/spi/IgniteSpiContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->onContextInitialized0(Lorg/apache/ignite/spi/IgniteSpiContext;)V

    .line 318
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-interface {v0, p1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->onSpiContextInitialized(Lorg/apache/ignite/spi/IgniteSpiContext;)V

    .line 319
    return-void
.end method

.method protected openSocket(Ljava/net/InetSocketAddress;)Ljava/net/Socket;
    .locals 6
    .param p1, "sockAddr"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 364
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-direct {v1, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 367
    .local v1, "resolved":Ljava/net/InetSocketAddress;
    :goto_0
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 369
    .local v0, "addr":Ljava/net/InetAddress;
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "resolved":Ljava/net/InetSocketAddress;
    :cond_1
    move-object v1, p1

    .line 364
    goto :goto_0

    .line 371
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "resolved":Ljava/net/InetSocketAddress;
    :cond_2
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 373
    .local v2, "sock":Ljava/net/Socket;
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->locHost:Ljava/net/InetAddress;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 375
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 377
    iget-wide v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeout:J

    long-to-int v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 379
    sget-object v3, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->writeToSocket(Ljava/net/Socket;[B)V

    .line 381
    return-object v2
.end method

.method protected readMessage(Ljava/net/Socket;Ljava/io/InputStream;J)Ljava/lang/Object;
    .locals 7
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "in"    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/Socket;",
            "Ljava/io/InputStream;",
            "J)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 542
    sget-boolean v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 544
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    .line 547
    .local v1, "oldTimeout":I
    long-to-int v2, p3

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 549
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .end local p2    # "in":Ljava/io/InputStream;
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal(Ljava/io/InputStream;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 561
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2

    .line 565
    :goto_0
    return-object v2

    .line 551
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/net/SocketTimeoutException;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 553
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timed out waiting for message to be read (most probably, the reason is in long GC pauses on remote node. Current timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 556
    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 560
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 561
    :try_start_3
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3

    .line 565
    :goto_2
    throw v2

    .line 551
    :catch_1
    move-exception v2

    move-object v0, v2

    goto :goto_1

    .line 563
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method protected readReceipt(Ljava/net/Socket;J)I
    .locals 8
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    sget-boolean v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 580
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    .line 583
    .local v1, "oldTimeout":I
    long-to-int v3, p2

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 585
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 587
    .local v2, "res":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 588
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    .end local v2    # "res":I
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/net/SocketTimeoutException;
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timed out waiting for message delivery receipt (most probably, the reason is in long GC pauses on remote node; consider tuning GC and increasing \'ackTimeout\' configuration property). Will retry to send message with increased timeout. Current timeout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 598
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onAckTimeout()V

    .line 600
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catchall_0
    move-exception v3

    .line 605
    :try_start_2
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2

    .line 609
    :goto_0
    throw v3

    .line 605
    .restart local v2    # "res":I
    :cond_1
    :try_start_3
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1

    .line 609
    :goto_1
    return v2

    .line 607
    :catch_1
    move-exception v3

    goto :goto_1

    .end local v2    # "res":I
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method protected registeredAddresses()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const v5, 0xb98c

    .line 678
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v2, "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-interface {v3}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->getRegisteredAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 681
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    if-nez v3, :cond_0

    .line 682
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v0, v3

    .line 685
    :cond_0
    :goto_1
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 682
    :cond_1
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v0, v3

    goto :goto_1

    .line 688
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_2
    return-object v2
.end method

.method protected resolvedAddresses()Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 622
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v5, "res":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->registeredAddresses()Ljava/util/Collection;
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 646
    .local v1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 647
    .local v0, "addr":Ljava/net/InetSocketAddress;
    sget-boolean v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    if-nez v0, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 633
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v1    # "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 634
    .local v2, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v8, "Failed to get registered addresses from IP finder on start (retrying every 2000 ms)."

    invoke-static {v7, v2, v8}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 639
    const-wide/16 v8, 0x7d0

    :try_start_1
    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 641
    :catch_1
    move-exception v2

    .line 642
    .local v2, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    new-instance v7, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v8, "Thread has been interrupted."

    invoke-direct {v7, v8, v2}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 650
    .end local v2    # "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    .restart local v1    # "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 653
    .local v6, "resolved":Ljava/net/InetSocketAddress;
    :goto_2
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->locNodeAddrs:Ljava/util/Collection;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->locNodeAddrs:Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 654
    :cond_2
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 656
    .end local v6    # "resolved":Ljava/net/InetSocketAddress;
    :catch_2
    move-exception v4

    .line 657
    .local v4, "ignored":Ljava/net/UnknownHostException;
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to resolve address from IP finder (host is unknown): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 660
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v4    # "ignored":Ljava/net/UnknownHostException;
    :cond_3
    move-object v6, v0

    .line 650
    goto :goto_2

    .line 664
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 665
    invoke-static {v5}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 667
    :cond_5
    return-object v5
.end method

.method public setAckTimeout(J)V
    .locals 1
    .param p1, "ackTimeout"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 234
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->ackTimeout:J

    .line 235
    return-void
.end method

.method public setDataExchange(Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;)V
    .locals 0
    .param p1, "exchange"    # Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;

    .prologue
    .line 341
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->exchange:Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;

    .line 342
    return-void
.end method

.method public setHeartbeatFrequency(J)V
    .locals 1
    .param p1, "hbFreq"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 271
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->hbFreq:J

    .line 272
    return-void
.end method

.method public setIpFinder(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;)V
    .locals 0
    .param p1, "ipFinder"    # Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 203
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    .line 204
    return-void
.end method

.method public setListener(Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;)V
    .locals 0
    .param p1, "lsnr"    # Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 336
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->lsnr:Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;

    .line 337
    return-void
.end method

.method public setLocalAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "locAddr"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->locAddr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 173
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->locAddr:Ljava/lang/String;

    .line 174
    :cond_0
    return-void
.end method

.method public setMetricsProvider(Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;)V
    .locals 0
    .param p1, "metricsProvider"    # Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;

    .prologue
    .line 346
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->metricsProvider:Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;

    .line 347
    return-void
.end method

.method public setNetworkTimeout(J)V
    .locals 1
    .param p1, "netTimeout"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 246
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->netTimeout:J

    .line 247
    return-void
.end method

.method public setNodeAttributes(Ljava/util/Map;Lorg/apache/ignite/lang/IgniteProductVersion;)V
    .locals 3
    .param p2, "ver"    # Lorg/apache/ignite/lang/IgniteProductVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteProductVersion;",
            ")V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->locNodeAttrs:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 303
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->locNodeVer:Lorg/apache/ignite/lang/IgniteProductVersion;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 305
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node attributes to set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node version to set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 310
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->locNodeAttrs:Ljava/util/Map;

    .line 311
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->locNodeVer:Lorg/apache/ignite/lang/IgniteProductVersion;

    .line 312
    return-void
.end method

.method public setSocketTimeout(J)V
    .locals 1
    .param p1, "sockTimeout"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 219
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeout:J

    .line 220
    return-void
.end method

.method public setThreadPriority(I)V
    .locals 0
    .param p1, "threadPri"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 258
    iput p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->threadPri:I

    .line 259
    return-void
.end method

.method public setTopHistorySize(I)V
    .locals 4
    .param p1, "topHistSize"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    const/16 v3, 0x3e8

    .line 289
    if-ge p1, v3, :cond_0

    .line 290
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Topology history size should be greater than or equal to default size. Specified size will not be set [curSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->topHistSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", specifiedSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", defaultSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    iput p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->topHistSize:I

    goto :goto_0
.end method

.method protected writeToSocket(Ljava/net/Socket;I)V
    .locals 10
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "res"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    sget-boolean v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 500
    :cond_0
    new-instance v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeout:J

    add-long/2addr v6, v8

    invoke-direct {v3, p1, v6, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;-><init>(Ljava/net/Socket;J)V

    .line 502
    .local v3, "obj":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->addTimeoutObject(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;)V

    .line 504
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 506
    .local v4, "out":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 509
    .local v2, "err":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {v4, p2}, Ljava/io/OutputStream;->write(I)V

    .line 511
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->cancel()Z

    move-result v0

    .line 519
    .local v0, "cancelled":Z
    if-eqz v0, :cond_1

    .line 520
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->removeTimeoutObject(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;)V

    .line 523
    :cond_1
    if-eqz v2, :cond_2

    .line 524
    throw v2

    .line 526
    :cond_2
    if-nez v0, :cond_8

    .line 527
    new-instance v5, Ljava/net/SocketTimeoutException;

    const-string v6, "Write timed out (socket was concurrently closed)."

    invoke-direct {v5, v6}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 513
    .end local v0    # "cancelled":Z
    :catch_0
    move-exception v1

    .line 514
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v1

    .line 517
    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->cancel()Z

    move-result v0

    .line 519
    .restart local v0    # "cancelled":Z
    if-eqz v0, :cond_3

    .line 520
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->removeTimeoutObject(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;)V

    .line 523
    :cond_3
    if-eqz v2, :cond_4

    .line 524
    throw v2

    .line 526
    :cond_4
    if-nez v0, :cond_8

    .line 527
    new-instance v5, Ljava/net/SocketTimeoutException;

    const-string v6, "Write timed out (socket was concurrently closed)."

    invoke-direct {v5, v6}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 517
    .end local v0    # "cancelled":Z
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->cancel()Z

    move-result v0

    .line 519
    .restart local v0    # "cancelled":Z
    if-eqz v0, :cond_5

    .line 520
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-virtual {v6, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->removeTimeoutObject(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;)V

    .line 523
    :cond_5
    if-eqz v2, :cond_6

    .line 524
    throw v2

    .line 526
    :cond_6
    if-nez v0, :cond_7

    .line 527
    new-instance v5, Ljava/net/SocketTimeoutException;

    const-string v6, "Write timed out (socket was concurrently closed)."

    invoke-direct {v5, v6}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 528
    :cond_7
    throw v5

    .line 529
    :cond_8
    return-void
.end method

.method protected writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;)V

    .line 437
    return-void
.end method

.method protected writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;)V
    .locals 10
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .param p3, "bout"    # Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 451
    sget-boolean v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 452
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez p2, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 453
    :cond_1
    sget-boolean v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    if-nez p3, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 456
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-interface {v5, p2, p3}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 458
    new-instance v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeout:J

    add-long/2addr v6, v8

    invoke-direct {v3, p1, v6, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;-><init>(Ljava/net/Socket;J)V

    .line 460
    .local v3, "obj":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->addTimeoutObject(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;)V

    .line 462
    const/4 v2, 0x0

    .line 465
    .local v2, "err":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 467
    .local v4, "out":Ljava/io/OutputStream;
    invoke-virtual {p3, v4}, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 469
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->cancel()Z

    move-result v0

    .line 477
    .local v0, "cancelled":Z
    if-eqz v0, :cond_3

    .line 478
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->removeTimeoutObject(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;)V

    .line 481
    :cond_3
    if-eqz v2, :cond_4

    .line 482
    throw v2

    .line 484
    :cond_4
    if-nez v0, :cond_a

    .line 485
    new-instance v5, Ljava/net/SocketTimeoutException;

    const-string v6, "Write timed out (socket was concurrently closed)."

    invoke-direct {v5, v6}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 471
    .end local v0    # "cancelled":Z
    .end local v4    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v1

    .line 475
    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->cancel()Z

    move-result v0

    .line 477
    .restart local v0    # "cancelled":Z
    if-eqz v0, :cond_5

    .line 478
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->removeTimeoutObject(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;)V

    .line 481
    :cond_5
    if-eqz v2, :cond_6

    .line 482
    throw v2

    .line 484
    :cond_6
    if-nez v0, :cond_a

    .line 485
    new-instance v5, Ljava/net/SocketTimeoutException;

    const-string v6, "Write timed out (socket was concurrently closed)."

    invoke-direct {v5, v6}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 475
    .end local v0    # "cancelled":Z
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->cancel()Z

    move-result v0

    .line 477
    .restart local v0    # "cancelled":Z
    if-eqz v0, :cond_7

    .line 478
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-virtual {v6, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->removeTimeoutObject(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;)V

    .line 481
    :cond_7
    if-eqz v2, :cond_8

    .line 482
    throw v2

    .line 484
    :cond_8
    if-nez v0, :cond_9

    .line 485
    new-instance v5, Ljava/net/SocketTimeoutException;

    const-string v6, "Write timed out (socket was concurrently closed)."

    invoke-direct {v5, v6}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 486
    :cond_9
    throw v5

    .line 487
    :cond_a
    return-void
.end method

.method protected writeToSocket(Ljava/net/Socket;[B)V
    .locals 10
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    sget-boolean v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 394
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez p2, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 396
    :cond_1
    new-instance v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeout:J

    add-long/2addr v6, v8

    invoke-direct {v3, p1, v6, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;-><init>(Ljava/net/Socket;J)V

    .line 398
    .local v3, "obj":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->addTimeoutObject(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;)V

    .line 400
    const/4 v2, 0x0

    .line 403
    .local v2, "err":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 405
    .local v4, "out":Ljava/io/OutputStream;
    invoke-virtual {v4, p2}, Ljava/io/OutputStream;->write([B)V

    .line 407
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->cancel()Z

    move-result v0

    .line 415
    .local v0, "cancelled":Z
    if-eqz v0, :cond_2

    .line 416
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->removeTimeoutObject(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;)V

    .line 419
    :cond_2
    if-eqz v2, :cond_3

    .line 420
    throw v2

    .line 422
    :cond_3
    if-nez v0, :cond_9

    .line 423
    new-instance v5, Ljava/net/SocketTimeoutException;

    const-string v6, "Write timed out (socket was concurrently closed)."

    invoke-direct {v5, v6}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 409
    .end local v0    # "cancelled":Z
    .end local v4    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v1

    .line 413
    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->cancel()Z

    move-result v0

    .line 415
    .restart local v0    # "cancelled":Z
    if-eqz v0, :cond_4

    .line 416
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->removeTimeoutObject(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;)V

    .line 419
    :cond_4
    if-eqz v2, :cond_5

    .line 420
    throw v2

    .line 422
    :cond_5
    if-nez v0, :cond_9

    .line 423
    new-instance v5, Ljava/net/SocketTimeoutException;

    const-string v6, "Write timed out (socket was concurrently closed)."

    invoke-direct {v5, v6}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 413
    .end local v0    # "cancelled":Z
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->cancel()Z

    move-result v0

    .line 415
    .restart local v0    # "cancelled":Z
    if-eqz v0, :cond_6

    .line 416
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeoutWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;

    invoke-virtual {v6, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->removeTimeoutObject(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;)V

    .line 419
    :cond_6
    if-eqz v2, :cond_7

    .line 420
    throw v2

    .line 422
    :cond_7
    if-nez v0, :cond_8

    .line 423
    new-instance v5, Ljava/net/SocketTimeoutException;

    const-string v6, "Write timed out (socket was concurrently closed)."

    invoke-direct {v5, v6}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 424
    :cond_8
    throw v5

    .line 425
    :cond_9
    return-void
.end method
