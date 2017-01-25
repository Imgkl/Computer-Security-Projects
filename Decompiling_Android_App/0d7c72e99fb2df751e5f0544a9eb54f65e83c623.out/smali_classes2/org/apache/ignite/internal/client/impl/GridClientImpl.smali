.class public Lorg/apache/ignite/internal/client/impl/GridClientImpl;
.super Ljava/lang/Object;
.source "GridClientImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/client/impl/GridClientImpl$TopologyUpdaterThread;
    }
.end annotation


# static fields
.field private static final ENT_CONN_MGR_CLS:Ljava/lang/String; = "org.apache.ignite.internal.client.impl.connection.GridClientConnectionManagerEntImpl"

.field private static final NULL_MASK:Ljava/lang/Object;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

.field private closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final compute:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;

.field protected connMgr:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

.field private dataMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/util/UUID;

.field private final routers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final srvs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private sslCtx:Ljavax/net/ssl/SSLContext;

.field protected top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

.field private final topUpdateThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->NULL_MASK:Ljava/lang/Object;

    .line 51
    const-class v1, Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->log:Ljava/util/logging/Logger;

    .line 55
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "org/apache/log4j/Appender.class"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 58
    .local v0, "isLog4jUsed":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 59
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addLog4jNoOpLogger()Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 66
    :goto_1
    return-void

    .line 55
    .end local v0    # "isLog4jUsed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    .restart local v0    # "isLog4jUsed":Z
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addJavaNoOpLogger()Ljava/util/Collection;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 63
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/UUID;Lorg/apache/ignite/internal/client/GridClientConfiguration;Z)V
    .locals 15
    .param p1, "id"    # Ljava/util/UUID;
    .param p2, "cfg0"    # Lorg/apache/ignite/internal/client/GridClientConfiguration;
    .param p3, "routerClient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->dataMap:Ljava/util/concurrent/ConcurrentMap;

    .line 90
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    move-object/from16 v0, p1

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->id:Ljava/util/UUID;

    .line 115
    new-instance v1, Lorg/apache/ignite/internal/client/GridClientConfiguration;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/client/GridClientConfiguration;-><init>(Lorg/apache/ignite/internal/client/GridClientConfiguration;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    .line 117
    const/4 v14, 0x0

    .line 120
    .local v14, "success":Z
    :try_start_0
    new-instance v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;-><init>(Lorg/apache/ignite/internal/client/GridClientConfiguration;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    .line 122
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getDataConfigurations()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;

    .line 123
    .local v10, "dataCfg":Lorg/apache/ignite/internal/client/GridClientDataConfiguration;
    invoke-virtual {v10}, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->getAffinity()Lorg/apache/ignite/internal/client/GridClientDataAffinity;

    move-result-object v9

    .line 125
    .local v9, "aff":Lorg/apache/ignite/internal/client/GridClientDataAffinity;
    instance-of v1, v9, Lorg/apache/ignite/internal/client/GridClientTopologyListener;

    if-eqz v1, :cond_0

    .line 126
    check-cast v9, Lorg/apache/ignite/internal/client/GridClientTopologyListener;

    .end local v9    # "aff":Lorg/apache/ignite/internal/client/GridClientDataAffinity;
    invoke-virtual {p0, v9}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->addTopologyListener(Lorg/apache/ignite/internal/client/GridClientTopologyListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 193
    .end local v10    # "dataCfg":Lorg/apache/ignite/internal/client/GridClientDataConfiguration;
    .end local v13    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    if-nez v14, :cond_1

    .line 194
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->stop(Z)V

    :cond_1
    throw v1

    .line 129
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getBalancer()Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/ignite/internal/client/GridClientTopologyListener;

    if-eqz v1, :cond_3

    .line 130
    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getBalancer()Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/client/GridClientTopologyListener;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->addTopologyListener(Lorg/apache/ignite/internal/client/GridClientTopologyListener;)V

    .line 132
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getSslContextFactory()Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 134
    .local v12, "factory":Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;
    if-eqz v12, :cond_4

    .line 136
    :try_start_2
    invoke-interface {v12}, Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;->createSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->sslCtx:Ljavax/net/ssl/SSLContext;
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :cond_4
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isAutoFetchMetrics()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isEnableMetricsCache()Z

    move-result v1

    if-nez v1, :cond_5

    .line 145
    sget-object v1, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->log:Ljava/util/logging/Logger;

    const-string v2, "Auto-fetch for metrics is enabled without enabling caching for them."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 147
    :cond_5
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isAutoFetchAttributes()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isEnableAttributesCache()Z

    move-result v1

    if-nez v1, :cond_6

    .line 148
    sget-object v1, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->log:Ljava/util/logging/Logger;

    const-string v2, "Auto-fetch for node attributes is enabled without enabling caching for them."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 151
    :cond_6
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getServers()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->parseAddresses(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->srvs:Ljava/util/Collection;

    .line 152
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getRouters()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->parseAddresses(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->routers:Ljava/util/Collection;

    .line 154
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->srvs:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->routers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 155
    new-instance v1, Lorg/apache/ignite/internal/client/GridClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Servers addresses and routers addresses cannot both be empty for client (please fix configuration and restart): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :catch_0
    move-exception v11

    .line 139
    .local v11, "e":Ljavax/net/ssl/SSLException;
    new-instance v1, Lorg/apache/ignite/internal/client/GridClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create client (unable to create SSL context, check ssl context factory configuration): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v11}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 158
    .end local v11    # "e":Ljavax/net/ssl/SSLException;
    :cond_7
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->srvs:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->routers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 159
    new-instance v1, Lorg/apache/ignite/internal/client/GridClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Servers addresses and routers addresses cannot both be provided for client (please fix configuration and restart): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_8
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->sslCtx:Ljavax/net/ssl/SSLContext;

    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    iget-object v5, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->routers:Ljava/util/Collection;

    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->createConnectionManager(Ljava/util/UUID;Ljavax/net/ssl/SSLContext;Lorg/apache/ignite/internal/client/GridClientConfiguration;Ljava/util/Collection;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;Ljava/lang/Byte;Z)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->connMgr:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    :try_start_4
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->tryInitTopology()V
    :try_end_4
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    :goto_1
    :try_start_5
    new-instance v1, Lorg/apache/ignite/internal/client/impl/GridClientImpl$TopologyUpdaterThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/ignite/internal/client/impl/GridClientImpl$TopologyUpdaterThread;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientImpl;Lorg/apache/ignite/internal/client/impl/GridClientImpl$1;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->topUpdateThread:Ljava/lang/Thread;

    .line 181
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->topUpdateThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 183
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->topUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 185
    new-instance v1, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getBalancer()Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientImpl;Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->compute:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;

    .line 187
    sget-object v1, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 188
    sget-object v1, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client started [id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", protocol="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getProtocol()Lorg/apache/ignite/internal/client/GridClientProtocol;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    :cond_9
    const/4 v14, 0x1

    .line 193
    if-nez v14, :cond_a

    .line 194
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->stop(Z)V

    .line 196
    :cond_a
    return-void

    .line 168
    :catch_1
    move-exception v11

    .line 169
    .local v11, "e":Lorg/apache/ignite/internal/client/GridClientException;
    :try_start_6
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    invoke-virtual {v1, v11}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->fail(Lorg/apache/ignite/internal/client/GridClientException;)V

    .line 171
    sget-object v1, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->log:Ljava/util/logging/Logger;

    const-string v2, "Failed to initialize topology on client start. Will retry in background."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 173
    .end local v11    # "e":Lorg/apache/ignite/internal/client/GridClientException;
    :catch_2
    move-exception v11

    .line 174
    .local v11, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 176
    new-instance v1, Lorg/apache/ignite/internal/client/GridClientException;

    const-string v2, "Client startup was interrupted."

    invoke-direct {v1, v2, v11}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/client/impl/GridClientImpl;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->id:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/client/impl/GridClientImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->tryInitTopology()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    new-instance v0, Lorg/apache/ignite/internal/client/GridClientClosedException;

    const-string v1, "Client was closed (no public methods of client can be used anymore)."

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/client/GridClientClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    return-void
.end method

.method private createConnectionManager(Ljava/util/UUID;Ljavax/net/ssl/SSLContext;Lorg/apache/ignite/internal/client/GridClientConfiguration;Ljava/util/Collection;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;Ljava/lang/Byte;Z)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;
    .locals 12
    .param p1, "clientId"    # Ljava/util/UUID;
    .param p2, "sslCtx"    # Ljavax/net/ssl/SSLContext;
    .param p3, "cfg"    # Lorg/apache/ignite/internal/client/GridClientConfiguration;
    .param p5, "top"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;
    .param p6, "marshId"    # Ljava/lang/Byte;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "routerClient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljavax/net/ssl/SSLContext;",
            "Lorg/apache/ignite/internal/client/GridClientConfiguration;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;",
            "Ljava/lang/Byte;",
            "Z)",
            "Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 409
    .local p4, "routers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :try_start_0
    const-string v1, "org.apache.ignite.internal.client.impl.connection.GridClientConnectionManagerEntImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 411
    .local v8, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/util/UUID;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljavax/net/ssl/SSLContext;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/apache/ignite/internal/client/GridClientConfiguration;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/util/Collection;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v8, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 414
    .local v9, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x6

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 424
    .end local v8    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v0, "mgr":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;
    :goto_0
    return-object v0

    .line 417
    .end local v0    # "mgr":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;
    :catch_0
    move-exception v11

    .line 418
    .local v11, "ignored":Ljava/lang/ClassNotFoundException;
    new-instance v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerOsImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerOsImpl;-><init>(Ljava/util/UUID;Ljavax/net/ssl/SSLContext;Lorg/apache/ignite/internal/client/GridClientConfiguration;Ljava/util/Collection;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;Ljava/lang/Byte;Z)V

    .line 422
    .restart local v0    # "mgr":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;
    goto :goto_0

    .line 420
    .end local v0    # "mgr":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;
    .end local v11    # "ignored":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v10

    .line 421
    .local v10, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    new-instance v1, Lorg/apache/ignite/internal/client/GridClientException;

    const-string v2, "Failed to create client connection manager."

    invoke-direct {v1, v2, v10}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 420
    .end local v10    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v10

    goto :goto_1

    :catch_3
    move-exception v10

    goto :goto_1

    :catch_4
    move-exception v10

    goto :goto_1
.end method

.method private maskNull(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 354
    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->NULL_MASK:Ljava/lang/Object;

    .end local p1    # "cacheName":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private static parseAddresses(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "cfgAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    .local v1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 370
    .local v5, "srvStr":Ljava/lang/String;
    :try_start_0
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, "split":[Ljava/lang/String;
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v0, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 374
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v4    # "split":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 377
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v6, Lorg/apache/ignite/internal/client/GridClientException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create client (invalid server address specified): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 382
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v5    # "srvStr":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    return-object v6
.end method

.method private tryInitTopology()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v12, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->routers:Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    .line 436
    .local v5, "hasSrvs":Z
    if-eqz v5, :cond_3

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v12, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->srvs:Ljava/util/Collection;

    invoke-direct {v1, v12}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 438
    .local v1, "connSrvs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :goto_0
    if-eqz v5, :cond_2

    .line 441
    :try_start_0
    iget-object v12, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    invoke-virtual {v12}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    .line 442
    .local v8, "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    iget-object v12, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v12}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getProtocol()Lorg/apache/ignite/internal/client/GridClientProtocol;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v13}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->availableAddresses(Lorg/apache/ignite/internal/client/GridClientProtocol;Z)Ljava/util/Collection;

    move-result-object v3

    .line 444
    .local v3, "endpoints":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 446
    .local v10, "resolvedEndpoints":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 447
    .local v2, "endpoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v12

    if-nez v12, :cond_1

    .line 448
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/client/GridClientDisconnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 465
    .end local v2    # "endpoint":Ljava/net/InetSocketAddress;
    .end local v3    # "endpoints":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .end local v10    # "resolvedEndpoints":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    :catch_0
    move-exception v12

    .line 470
    :cond_2
    iget-object v12, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->connMgr:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    invoke-interface {v12, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;->init(Ljava/util/Collection;)V

    .line 472
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 474
    .local v9, "overallCaches":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/client/GridClientCacheMode;>;"
    iget-object v12, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    invoke-virtual {v12}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    .line 475
    .restart local v8    # "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    invoke-virtual {v8}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->caches()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_3

    .line 436
    .end local v1    # "connSrvs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .end local v9    # "overallCaches":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/client/GridClientCacheMode;>;"
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->routers:Ljava/util/Collection;

    goto :goto_0

    .line 450
    .restart local v1    # "connSrvs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .restart local v3    # "endpoints":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .restart local v10    # "resolvedEndpoints":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->attributes()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->allLocalMACs()Ljava/util/Collection;

    move-result-object v12

    const-string v13, "org.apache.ignite.macs"

    invoke-virtual {v8, v13}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/apache/ignite/internal/util/typedef/F;->containsAny(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_5
    const/4 v11, 0x1

    .line 453
    .local v11, "sameHost":Z
    :goto_4
    if-eqz v11, :cond_7

    .line 454
    const/4 v12, 0x1

    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->inetAddressesComparator(Z)Ljava/util/Comparator;

    move-result-object v12

    invoke-static {v10, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 456
    invoke-interface {v1, v10}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 450
    .end local v11    # "sameHost":Z
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 459
    .restart local v11    # "sameHost":Z
    :cond_7
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 460
    .restart local v2    # "endpoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v12

    if-nez v12, :cond_8

    .line 461
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/ignite/internal/client/GridClientDisconnectedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 477
    .end local v2    # "endpoint":Ljava/net/InetSocketAddress;
    .end local v3    # "endpoints":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .end local v10    # "resolvedEndpoints":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    .end local v11    # "sameHost":Z
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "overallCaches":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/client/GridClientCacheMode;>;"
    :cond_9
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 478
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/client/GridClientCacheMode;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {p0, v12}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->affinity(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientDataAffinity;

    move-result-object v0

    .line 480
    .local v0, "affinity":Lorg/apache/ignite/internal/client/GridClientDataAffinity;
    instance-of v12, v0, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;

    if-eqz v12, :cond_a

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lorg/apache/ignite/internal/client/GridClientCacheMode;->PARTITIONED:Lorg/apache/ignite/internal/client/GridClientCacheMode;

    if-eq v12, v13, :cond_a

    .line 482
    sget-object v13, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-class v14, Lorg/apache/ignite/internal/client/GridClientPartitionAffinity;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " is used for a cache configured "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "for non-partitioned mode [cacheName="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", cacheMode="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_6

    .line 485
    .end local v0    # "affinity":Lorg/apache/ignite/internal/client/GridClientDataAffinity;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/client/GridClientCacheMode;>;"
    :cond_b
    return-void
.end method


# virtual methods
.method public addTopologyListener(Lorg/apache/ignite/internal/client/GridClientTopologyListener;)V
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/client/GridClientTopologyListener;

    .prologue
    .line 284
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->addTopologyListener(Lorg/apache/ignite/internal/client/GridClientTopologyListener;)V

    .line 285
    return-void
.end method

.method affinity(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientDataAffinity;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getDataConfiguration(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientDataConfiguration;

    move-result-object v0

    .line 334
    .local v0, "dataCfg":Lorg/apache/ignite/internal/client/GridClientDataConfiguration;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->getAffinity()Lorg/apache/ignite/internal/client/GridClientDataAffinity;

    move-result-object v1

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->id:Ljava/util/UUID;

    invoke-static {v0}, Lorg/apache/ignite/internal/client/GridClientFactory;->stop(Ljava/util/UUID;)V

    .line 305
    return-void
.end method

.method public compute()Lorg/apache/ignite/internal/client/GridClientCompute;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->compute:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;

    return-object v0
.end method

.method public connected()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->failed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connectionManager()Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->connMgr:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    return-object v0
.end method

.method public data()Lorg/apache/ignite/internal/client/GridClientData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->data(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientData;

    move-result-object v0

    return-object v0
.end method

.method public data(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientData;
    .locals 11
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 239
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->checkClosed()V

    .line 241
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->maskNull(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 243
    .local v9, "key":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->dataMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v9}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    .line 245
    .local v0, "data":Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;
    if-nez v0, :cond_1

    .line 246
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getDataConfiguration(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientDataConfiguration;

    move-result-object v8

    .line 248
    .local v8, "dataCfg":Lorg/apache/ignite/internal/client/GridClientDataConfiguration;
    if-nez v8, :cond_0

    if-eqz p1, :cond_0

    .line 249
    new-instance v1, Lorg/apache/ignite/internal/client/GridClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data configuration for given cache name was not provided: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_0
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->getPinnedBalancer()Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    move-result-object v5

    .line 255
    .local v5, "balancer":Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;
    :goto_0
    new-instance v4, Lorg/apache/ignite/internal/client/impl/GridClientImpl$1;

    invoke-direct {v4, p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientImpl$1;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientImpl;Ljava/lang/String;)V

    .line 265
    .local v4, "cacheNodes":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    .end local v0    # "data":Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isEnableMetricsCache()Z

    move-result v7

    move-object v1, p1

    move-object v2, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/client/impl/GridClientImpl;Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;Ljava/util/Set;Z)V

    .line 268
    .restart local v0    # "data":Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->dataMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v9, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    .line 270
    .local v10, "old":Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;
    if-eqz v10, :cond_1

    .line 271
    move-object v0, v10

    .line 274
    .end local v4    # "cacheNodes":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    .end local v5    # "balancer":Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;
    .end local v8    # "dataCfg":Lorg/apache/ignite/internal/client/GridClientDataConfiguration;
    .end local v10    # "old":Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;
    :cond_1
    return-object v0

    .line 252
    .restart local v8    # "dataCfg":Lorg/apache/ignite/internal/client/GridClientDataConfiguration;
    :cond_2
    new-instance v5, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;

    invoke-direct {v5}, Lorg/apache/ignite/internal/client/balancer/GridClientRandomBalancer;-><init>()V

    goto :goto_0
.end method

.method public id()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public newConnectionManager(Ljava/lang/Byte;Z)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;
    .locals 8
    .param p1, "marshId"    # Ljava/lang/Byte;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "routerClient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->id:Ljava/util/UUID;

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->sslCtx:Ljavax/net/ssl/SSLContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->routers:Ljava/util/Collection;

    iget-object v5, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    move-object v0, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->createConnectionManager(Ljava/util/UUID;Ljavax/net/ssl/SSLContext;Lorg/apache/ignite/internal/client/GridClientConfiguration;Ljava/util/Collection;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;Ljava/lang/Byte;Z)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public removeTopologyListener(Lorg/apache/ignite/internal/client/GridClientTopologyListener;)V
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/client/GridClientTopologyListener;

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->removeTopologyListener(Lorg/apache/ignite/internal/client/GridClientTopologyListener;)V

    .line 290
    return-void
.end method

.method public stop(Z)V
    .locals 6
    .param p1, "waitCompletion"    # Z

    .prologue
    .line 208
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 210
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->topUpdateThread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->topUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 214
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    if-eqz v3, :cond_1

    .line 215
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->shutdown()V

    .line 217
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->connMgr:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    if-eqz v3, :cond_2

    .line 218
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->connMgr:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;->stop(Z)V

    .line 220
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getDataConfigurations()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;

    .line 221
    .local v1, "dataCfg":Lorg/apache/ignite/internal/client/GridClientDataConfiguration;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/GridClientDataConfiguration;->getAffinity()Lorg/apache/ignite/internal/client/GridClientDataAffinity;

    move-result-object v0

    .line 223
    .local v0, "aff":Lorg/apache/ignite/internal/client/GridClientDataAffinity;
    instance-of v3, v0, Lorg/apache/ignite/internal/client/GridClientTopologyListener;

    if-eqz v3, :cond_3

    .line 224
    check-cast v0, Lorg/apache/ignite/internal/client/GridClientTopologyListener;

    .end local v0    # "aff":Lorg/apache/ignite/internal/client/GridClientDataAffinity;
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->removeTopologyListener(Lorg/apache/ignite/internal/client/GridClientTopologyListener;)V

    goto :goto_0

    .line 227
    .end local v1    # "dataCfg":Lorg/apache/ignite/internal/client/GridClientDataConfiguration;
    :cond_4
    sget-object v3, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 228
    sget-object v3, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client stopped [id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->id:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", waitCompletion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 230
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridClientImpl [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->id:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topology()Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    return-object v0
.end method

.method public topologyListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientTopologyListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->topologyListeners()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
