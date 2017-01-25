.class public Lorg/apache/ignite/internal/client/GridClientConfiguration;
.super Ljava/lang/Object;
.source "GridClientConfiguration.java"


# static fields
.field public static final DFLT_CLIENT_PROTOCOL:Lorg/apache/ignite/internal/client/GridClientProtocol;

.field public static final DFLT_CONNECT_TIMEOUT:I = 0x2710

.field public static final DFLT_MAX_CONN_IDLE_TIME:J = 0x7530L

.field public static final DFLT_PING_INTERVAL:J = 0x1388L

.field public static final DFLT_PING_TIMEOUT:J = 0x1b58L

.field public static final DFLT_TCP_NODELAY:Z = true

.field public static final DFLT_TOP_REFRESH_FREQ:I = 0x7d0


# instance fields
.field private autoFetchAttrs:Z

.field private autoFetchMetrics:Z

.field private balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

.field private connectTimeout:I

.field private credProvider:Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;

.field private daemon:Z

.field private dataCfgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/client/GridClientDataConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private enableAttrsCache:Z

.field private enableMetricsCache:Z

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private marshaller:Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

.field private maxConnIdleTime:J

.field private pingInterval:J

.field private pingTimeout:J

.field private proto:Lorg/apache/ignite/internal/client/GridClientProtocol;

.field private routers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private srvs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sslCtxFactory:Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

.field private tcpNoDelay:Z

.field private topRefreshFreq:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/apache/ignite/internal/client/GridClientProtocol;->TCP:Lorg/apache/ignite/internal/client/GridClientProtocol;

    sput-object v0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->DFLT_CLIENT_PROTOCOL:Lorg/apache/ignite/internal/client/GridClientProtocol;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->srvs:Ljava/util/Collection;

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->routers:Ljava/util/Collection;

    .line 65
    sget-object v0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->DFLT_CLIENT_PROTOCOL:Lorg/apache/ignite/internal/client/GridClientProtocol;

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->proto:Lorg/apache/ignite/internal/client/GridClientProtocol;

    .line 68
    const/16 v0, 0x2710

    iput v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->connectTimeout:I

    .line 71
    iput-boolean v1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->tcpNoDelay:Z

    .line 77
    iput-boolean v1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->enableMetricsCache:Z

    .line 80
    iput-boolean v1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->enableAttrsCache:Z

    .line 83
    iput-boolean v1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->autoFetchMetrics:Z

    .line 86
    iput-boolean v1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->autoFetchAttrs:Z

    .line 89
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->topRefreshFreq:J

    .line 92
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->maxConnIdleTime:J

    .line 95
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->pingInterval:J

    .line 98
    const-wide/16 v0, 0x1b58

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->pingTimeout:J

    .line 101
    new-instance v0, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->dataCfgs:Ljava/util/Map;

    .line 113
    new-instance v0, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->marshaller:Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->srvs:Ljava/util/Collection;

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->routers:Ljava/util/Collection;

    .line 65
    sget-object v0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->DFLT_CLIENT_PROTOCOL:Lorg/apache/ignite/internal/client/GridClientProtocol;

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->proto:Lorg/apache/ignite/internal/client/GridClientProtocol;

    .line 68
    const/16 v0, 0x2710

    iput v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->connectTimeout:I

    .line 71
    iput-boolean v1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->tcpNoDelay:Z

    .line 77
    iput-boolean v1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->enableMetricsCache:Z

    .line 80
    iput-boolean v1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->enableAttrsCache:Z

    .line 83
    iput-boolean v1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->autoFetchMetrics:Z

    .line 86
    iput-boolean v1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->autoFetchAttrs:Z

    .line 89
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->topRefreshFreq:J

    .line 92
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->maxConnIdleTime:J

    .line 95
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->pingInterval:J

    .line 98
    const-wide/16 v0, 0x1b58

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->pingTimeout:J

    .line 101
    new-instance v0, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->dataCfgs:Ljava/util/Map;

    .line 113
    new-instance v0, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->marshaller:Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    .line 174
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->load(Ljava/lang/String;Ljava/util/Properties;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .param p1, "in"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 163
    const-string v0, "gg.client"

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/client/GridClientConfiguration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/apache/ignite/internal/client/GridClientConfiguration;

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->srvs:Ljava/util/Collection;

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->routers:Ljava/util/Collection;

    .line 65
    sget-object v0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->DFLT_CLIENT_PROTOCOL:Lorg/apache/ignite/internal/client/GridClientProtocol;

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->proto:Lorg/apache/ignite/internal/client/GridClientProtocol;

    .line 68
    const/16 v0, 0x2710

    iput v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->connectTimeout:I

    .line 71
    iput-boolean v1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->tcpNoDelay:Z

    .line 77
    iput-boolean v1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->enableMetricsCache:Z

    .line 80
    iput-boolean v1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->enableAttrsCache:Z

    .line 83
    iput-boolean v1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->autoFetchMetrics:Z

    .line 86
    iput-boolean v1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->autoFetchAttrs:Z

    .line 89
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->topRefreshFreq:J

    .line 92
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->maxConnIdleTime:J

    .line 95
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->pingInterval:J

    .line 98
    const-wide/16 v0, 0x1b58

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->pingTimeout:J

    .line 101
    new-instance v0, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->dataCfgs:Ljava/util/Map;

    .line 113
    new-instance v0, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->marshaller:Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    .line 132
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isAutoFetchAttributes()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->autoFetchAttrs:Z

    .line 133
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isAutoFetchMetrics()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->autoFetchMetrics:Z

    .line 134
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getBalancer()Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    .line 135
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getConnectTimeout()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->connectTimeout:I

    .line 136
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getSecurityCredentialsProvider()Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->credProvider:Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;

    .line 137
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isEnableAttributesCache()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->enableAttrsCache:Z

    .line 138
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isEnableMetricsCache()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->enableMetricsCache:Z

    .line 139
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->executor:Ljava/util/concurrent/ExecutorService;

    .line 140
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getMarshaller()Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->marshaller:Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    .line 141
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getMaxConnectionIdleTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->maxConnIdleTime:J

    .line 142
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getPingInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->pingInterval:J

    .line 143
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getPingTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->pingTimeout:J

    .line 144
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getProtocol()Lorg/apache/ignite/internal/client/GridClientProtocol;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->proto:Lorg/apache/ignite/internal/client/GridClientProtocol;

    .line 145
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getRouters()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->routers:Ljava/util/Collection;

    .line 146
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getServers()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->srvs:Ljava/util/Collection;

    .line 147
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getSslContextFactory()Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->sslCtxFactory:Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    .line 148
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isTcpNoDelay()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->tcpNoDelay:Z

    .line 149
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getTopologyRefreshFrequency()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->topRefreshFreq:J

    .line 150
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isDaemon()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->daemon:Z

    .line 151
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getMarshaller()Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->marshaller:Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    .line 153
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getDataConfigurations()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setDataConfigurations(Ljava/util/Collection;)V

    .line 154
    return-void
.end method

.method private static newInstance(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 817
    .local p0, "exp":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 824
    .local v1, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 820
    .end local v1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 821
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/ignite/internal/client/GridClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create class instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static resolveAffinity(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientDataAffinity;
    .locals 1
    .param p0, "affinity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 795
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    const/4 v0, 0x0

    .line 801
    :goto_0
    return-object v0

    .line 798
    :cond_0
    const-string v0, "partitioned"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    new-instance v0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;-><init>()V

    goto :goto_0

    .line 801
    :cond_1
    const-class v0, Lorg/apache/ignite/internal/client/GridClientDataAffinity;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->newInstance(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/GridClientDataAffinity;

    goto :goto_0
.end method

.method private static resolveBalancer(Ljava/lang/String;)Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;
    .locals 1
    .param p0, "balancer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 778
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "random"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;-><init>()V

    .line 784
    :goto_0
    return-object v0

    .line 781
    :cond_1
    const-string v0, "roundrobin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 782
    new-instance v0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;-><init>()V

    goto :goto_0

    .line 784
    :cond_2
    const-class v0, Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->newInstance(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    goto :goto_0
.end method


# virtual methods
.method public getBalancer()Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->connectTimeout:I

    return v0
.end method

.method public getDataConfiguration(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientDataConfiguration;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 391
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->dataCfgs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;

    return-object v0
.end method

.method public getDataConfigurations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientDataConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->dataCfgs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getMarshaller()Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->marshaller:Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    return-object v0
.end method

.method public getMaxConnectionIdleTime()J
    .locals 2

    .prologue
    .line 523
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->maxConnIdleTime:J

    return-wide v0
.end method

.method public getPingInterval()J
    .locals 2

    .prologue
    .line 545
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->pingInterval:J

    return-wide v0
.end method

.method public getPingTimeout()J
    .locals 2

    .prologue
    .line 568
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->pingTimeout:J

    return-wide v0
.end method

.method public getProtocol()Lorg/apache/ignite/internal/client/GridClientProtocol;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->proto:Lorg/apache/ignite/internal/client/GridClientProtocol;

    return-object v0
.end method

.method public getRouters()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->routers:Ljava/util/Collection;

    return-object v0
.end method

.method public getSecurityCredentialsProvider()Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->credProvider:Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;

    return-object v0
.end method

.method public getServers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->srvs:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSslContextFactory()Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->sslCtxFactory:Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    return-object v0
.end method

.method public getTopologyRefreshFrequency()J
    .locals 2

    .prologue
    .line 503
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->topRefreshFreq:J

    return-wide v0
.end method

.method public isAutoFetchAttributes()Z
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->autoFetchAttrs:Z

    return v0
.end method

.method public isAutoFetchMetrics()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->autoFetchMetrics:Z

    return v0
.end method

.method public isDaemon()Z
    .locals 1

    .prologue
    .line 842
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->daemon:Z

    return v0
.end method

.method public isEnableAttributesCache()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->enableAttrsCache:Z

    return v0
.end method

.method public isEnableMetricsCache()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->enableMetricsCache:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->tcpNoDelay:Z

    return v0
.end method

.method public load(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 40
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 636
    :goto_0
    const-string v36, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 637
    const/16 v36, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v37

    add-int/lit8 v37, v37, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_1

    .line 640
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 642
    :cond_1
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "balancer"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 643
    .local v9, "balancer":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "connectTimeout"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 644
    .local v11, "connectTimeout":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "credentials"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 645
    .local v12, "cred":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "autoFetchMetrics"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 646
    .local v7, "autoFetchMetrics":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "autoFetchAttributes"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 647
    .local v6, "autoFetchAttrs":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "idleTimeout"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 648
    .local v23, "maxConnIdleTime":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "protocol"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 649
    .local v26, "proto":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "servers"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 650
    .local v27, "srvrs":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "tcp.noDelay"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 651
    .local v31, "tcpNoDelay":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "topology.refresh"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 653
    .local v32, "topRefreshFreq":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "ssl.enabled"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 655
    .local v28, "sslEnabled":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "ssl.protocol"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    const-string v37, "TLS"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 656
    .local v30, "sslProto":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "ssl.key.algorithm"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    const-string v37, "SunX509"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 658
    .local v29, "sslKeyAlg":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "ssl.keystore.location"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 659
    .local v18, "keyStorePath":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "ssl.keystore.password"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 660
    .local v19, "keyStorePwd":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "ssl.keystore.type"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 662
    .local v20, "keyStoreType":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "ssl.truststore.location"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 663
    .local v33, "trustStorePath":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "ssl.truststore.password"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 664
    .local v34, "trustStorePwd":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "ssl.truststore.type"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 666
    .local v35, "trustStoreType":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "data.configurations"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 668
    .local v14, "dataCfgs":Ljava/lang/String;
    invoke-static {v9}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->resolveBalancer(Ljava/lang/String;)Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setBalancer(Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)V

    .line 670
    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_2

    .line 671
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setConnectTimeout(I)V

    .line 673
    :cond_2
    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_3

    .line 674
    const/16 v36, 0x3a

    move/from16 v0, v36

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 676
    .local v17, "idx":I
    if-ltz v17, :cond_d

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v17

    move/from16 v1, v36

    if-ge v0, v1, :cond_d

    .line 677
    new-instance v36, Lorg/apache/ignite/plugin/security/GridSecurityCredentialsBasicProvider;

    new-instance v37, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    const/16 v38, 0x0

    move/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    add-int/lit8 v39, v17, 0x1

    move/from16 v0, v39

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v37 .. v39}, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {v36 .. v37}, Lorg/apache/ignite/plugin/security/GridSecurityCredentialsBasicProvider;-><init>(Lorg/apache/ignite/plugin/security/GridSecurityCredentials;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setSecurityCredentialsProvider(Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;)V

    .line 686
    .end local v17    # "idx":I
    :cond_3
    :goto_1
    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_4

    .line 687
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setAutoFetchMetrics(Z)V

    .line 689
    :cond_4
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 690
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setAutoFetchAttributes(Z)V

    .line 692
    :cond_5
    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_6

    .line 693
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setMaxConnectionIdleTime(J)V

    .line 695
    :cond_6
    invoke-static/range {v26 .. v26}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_7

    .line 696
    invoke-static/range {v26 .. v26}, Lorg/apache/ignite/internal/client/GridClientProtocol;->valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientProtocol;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setProtocol(Lorg/apache/ignite/internal/client/GridClientProtocol;)V

    .line 698
    :cond_7
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_8

    .line 699
    const-string v36, "\\s+"

    const-string v37, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v37, ","

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setServers(Ljava/util/Collection;)V

    .line 701
    :cond_8
    invoke-static/range {v31 .. v31}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_9

    .line 702
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setTcpNoDelay(Z)V

    .line 704
    :cond_9
    invoke-static/range {v32 .. v32}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_a

    .line 705
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v36

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setTopologyRefreshFrequency(J)V

    .line 711
    :cond_a
    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_11

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_11

    .line 712
    new-instance v15, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;

    invoke-direct {v15}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;-><init>()V

    .line 714
    .local v15, "factory":Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;
    invoke-static/range {v30 .. v30}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_b

    const-string v30, "TLS"

    .end local v30    # "sslProto":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->setProtocol(Ljava/lang/String;)V

    .line 715
    invoke-static/range {v29 .. v29}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_c

    const-string v29, "SunX509"

    .end local v29    # "sslKeyAlg":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->setKeyAlgorithm(Ljava/lang/String;)V

    .line 717
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_e

    .line 718
    new-instance v36, Ljava/lang/IllegalArgumentException;

    const-string v37, "SSL key store location is not specified."

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 681
    .end local v15    # "factory":Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;
    .restart local v17    # "idx":I
    .restart local v29    # "sslKeyAlg":Ljava/lang/String;
    .restart local v30    # "sslProto":Ljava/lang/String;
    :cond_d
    new-instance v36, Lorg/apache/ignite/plugin/security/GridSecurityCredentialsBasicProvider;

    new-instance v37, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2, v12}, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {v36 .. v37}, Lorg/apache/ignite/plugin/security/GridSecurityCredentialsBasicProvider;-><init>(Lorg/apache/ignite/plugin/security/GridSecurityCredentials;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setSecurityCredentialsProvider(Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;)V

    goto/16 :goto_1

    .line 720
    .end local v17    # "idx":I
    .end local v29    # "sslKeyAlg":Ljava/lang/String;
    .end local v30    # "sslProto":Ljava/lang/String;
    .restart local v15    # "factory":Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;
    :cond_e
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->setKeyStoreFilePath(Ljava/lang/String;)V

    .line 722
    if-eqz v19, :cond_f

    .line 723
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toCharArray()[C

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->setKeyStorePassword([C)V

    .line 725
    :cond_f
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_10

    const-string v20, "jks"

    .end local v20    # "keyStoreType":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->setKeyStoreType(Ljava/lang/String;)V

    .line 727
    invoke-static/range {v33 .. v33}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_12

    .line 728
    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->getDisabledTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object v38

    aput-object v38, v36, v37

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    .line 738
    .end local v35    # "trustStoreType":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setSslContextFactory(Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;)V

    .line 745
    .end local v15    # "factory":Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;
    :cond_11
    invoke-static {v14}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_18

    .line 746
    const-string v36, "\\s+"

    const-string v37, ""

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v37, ","

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 747
    .local v25, "names":[Ljava/lang/String;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .local v22, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientDataConfiguration;>;"
    move-object/from16 v5, v25

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_17

    aget-object v10, v5, v16

    .line 750
    .local v10, "cfgName":Ljava/lang/String;
    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_15

    .line 749
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 730
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "cfgName":Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v21    # "len$":I
    .end local v22    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientDataConfiguration;>;"
    .end local v25    # "names":[Ljava/lang/String;
    .restart local v15    # "factory":Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;
    .restart local v35    # "trustStoreType":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->setTrustStoreFilePath(Ljava/lang/String;)V

    .line 732
    if-eqz v34, :cond_13

    .line 733
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toCharArray()[C

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->setTrustStorePassword([C)V

    .line 735
    :cond_13
    invoke-static/range {v35 .. v35}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_14

    const-string v35, "jks"

    .end local v35    # "trustStoreType":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;->setTrustStoreType(Ljava/lang/String;)V

    goto :goto_2

    .line 753
    .end local v15    # "factory":Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v10    # "cfgName":Ljava/lang/String;
    .restart local v16    # "i$":I
    .restart local v21    # "len$":I
    .restart local v22    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientDataConfiguration;>;"
    .restart local v25    # "names":[Ljava/lang/String;
    :cond_15
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "data."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ".name"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 754
    .local v24, "name":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "data."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ".balancer"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 755
    .local v8, "bal":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "data."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ".affinity"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 757
    .local v4, "aff":Ljava/lang/String;
    new-instance v13, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;

    invoke-direct {v13}, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;-><init>()V

    .line 759
    .local v13, "dataCfg":Lorg/apache/ignite/internal/client/GridClientDataConfiguration;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_16

    const/16 v24, 0x0

    .end local v24    # "name":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->setName(Ljava/lang/String;)V

    .line 760
    invoke-static {v8}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->resolveBalancer(Ljava/lang/String;)Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->setBalancer(Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)V

    .line 761
    invoke-static {v4}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->resolveAffinity(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientDataAffinity;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->setAffinity(Lorg/apache/ignite/internal/client/GridClientDataAffinity;)V

    .line 763
    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 766
    .end local v4    # "aff":Ljava/lang/String;
    .end local v8    # "bal":Ljava/lang/String;
    .end local v10    # "cfgName":Ljava/lang/String;
    .end local v13    # "dataCfg":Lorg/apache/ignite/internal/client/GridClientDataConfiguration;
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setDataConfigurations(Ljava/util/Collection;)V

    .line 768
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v21    # "len$":I
    .end local v22    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientDataConfiguration;>;"
    .end local v25    # "names":[Ljava/lang/String;
    :cond_18
    return-void
.end method

.method public setAutoFetchAttributes(Z)V
    .locals 0
    .param p1, "autoFetchAttrs"    # Z

    .prologue
    .line 480
    iput-boolean p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->autoFetchAttrs:Z

    .line 481
    return-void
.end method

.method public setAutoFetchMetrics(Z)V
    .locals 0
    .param p1, "autoFetchMetrics"    # Z

    .prologue
    .line 454
    iput-boolean p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->autoFetchMetrics:Z

    .line 455
    return-void
.end method

.method public setBalancer(Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)V
    .locals 0
    .param p1, "balancer"    # Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    .prologue
    .line 342
    iput-object p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->balancer:Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    .line 343
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    .line 302
    iput p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->connectTimeout:I

    .line 303
    return-void
.end method

.method public setDaemon(Z)V
    .locals 0
    .param p1, "daemon"    # Z

    .prologue
    .line 833
    iput-boolean p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->daemon:Z

    .line 834
    return-void
.end method

.method public setDataConfigurations(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/client/GridClientDataConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "dataCfgs":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientDataConfiguration;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->dataCfgs:Ljava/util/Map;

    .line 380
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;

    .line 381
    .local v0, "dataCfg":Lorg/apache/ignite/internal/client/GridClientDataConfiguration;
    iget-object v2, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->dataCfgs:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;

    invoke-direct {v4, v0}, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;-><init>(Lorg/apache/ignite/internal/client/GridClientDataConfiguration;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 382
    .end local v0    # "dataCfg":Lorg/apache/ignite/internal/client/GridClientDataConfiguration;
    :cond_0
    return-void
.end method

.method public setEnableAttributesCache(Z)V
    .locals 0
    .param p1, "enableAttrsCache"    # Z

    .prologue
    .line 427
    iput-boolean p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->enableAttrsCache:Z

    .line 428
    return-void
.end method

.method public setEnableMetricsCache(Z)V
    .locals 0
    .param p1, "enableMetricsCache"    # Z

    .prologue
    .line 400
    iput-boolean p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->enableMetricsCache:Z

    .line 401
    return-void
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 600
    iput-object p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->executor:Ljava/util/concurrent/ExecutorService;

    .line 601
    return-void
.end method

.method public setMarshaller(Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;)V
    .locals 0
    .param p1, "marshaller"    # Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    .prologue
    .line 625
    iput-object p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->marshaller:Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    .line 626
    return-void
.end method

.method public setMaxConnectionIdleTime(J)V
    .locals 1
    .param p1, "maxConnIdleTime"    # J

    .prologue
    .line 532
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->maxConnIdleTime:J

    .line 533
    return-void
.end method

.method public setPingInterval(J)V
    .locals 1
    .param p1, "pingInterval"    # J

    .prologue
    .line 554
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->pingInterval:J

    .line 555
    return-void
.end method

.method public setPingTimeout(J)V
    .locals 1
    .param p1, "pingTimeout"    # J

    .prologue
    .line 577
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->pingTimeout:J

    .line 578
    return-void
.end method

.method public setProtocol(Lorg/apache/ignite/internal/client/GridClientProtocol;)V
    .locals 0
    .param p1, "proto"    # Lorg/apache/ignite/internal/client/GridClientProtocol;

    .prologue
    .line 261
    iput-object p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->proto:Lorg/apache/ignite/internal/client/GridClientProtocol;

    .line 262
    return-void
.end method

.method public setRouters(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "routers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .end local p1    # "routers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    iput-object p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->routers:Ljava/util/Collection;

    .line 241
    return-void

    .line 240
    .restart local p1    # "routers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0
.end method

.method public setSecurityCredentialsProvider(Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;)V
    .locals 0
    .param p1, "credProvider"    # Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;

    .prologue
    .line 360
    iput-object p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->credProvider:Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;

    .line 361
    return-void
.end method

.method public setServers(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "srvs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .end local p1    # "srvs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    iput-object p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->srvs:Ljava/util/Collection;

    .line 232
    return-void

    .line 231
    .restart local p1    # "srvs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0
.end method

.method public setSslContextFactory(Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;)V
    .locals 0
    .param p1, "sslCtxFactory"    # Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    .prologue
    .line 322
    iput-object p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->sslCtxFactory:Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    .line 323
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 0
    .param p1, "tcpNoDelay"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->tcpNoDelay:Z

    .line 294
    return-void
.end method

.method public setTopologyRefreshFrequency(J)V
    .locals 1
    .param p1, "topRefreshFreq"    # J

    .prologue
    .line 513
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/GridClientConfiguration;->topRefreshFreq:J

    .line 514
    return-void
.end method
