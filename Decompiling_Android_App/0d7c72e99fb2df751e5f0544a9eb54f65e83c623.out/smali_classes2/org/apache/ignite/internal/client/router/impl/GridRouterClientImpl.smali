.class public Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;
.super Ljava/lang/Object;
.source "GridRouterClientImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClient;


# instance fields
.field private final cliCfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

.field private final clientImpl:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

.field private final connMgrMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Byte;",
            "Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/UUID;Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;)V
    .locals 4
    .param p1, "id"    # Ljava/util/UUID;
    .param p2, "routerCfg"    # Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v1}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->connMgrMap:Ljava/util/concurrent/ConcurrentMap;

    .line 55
    new-instance v0, Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/GridClientConfiguration;-><init>()V

    .line 57
    .local v0, "cliCfg":Lorg/apache/ignite/internal/client/GridClientConfiguration;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getServers()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setServers(Ljava/util/Collection;)V

    .line 58
    invoke-virtual {p2}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getSslContextFactory()Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setSslContextFactory(Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;)V

    .line 59
    invoke-virtual {p2}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getSecurityCredentialsProvider()Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->setSecurityCredentialsProvider(Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;)V

    .line 61
    iput-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->cliCfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    .line 63
    new-instance v1, Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;-><init>(Ljava/util/UUID;Lorg/apache/ignite/internal/client/GridClientConfiguration;Z)V

    iput-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->clientImpl:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    .line 65
    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getProtocol()Lorg/apache/ignite/internal/client/GridClientProtocol;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/client/GridClientProtocol;->TCP:Lorg/apache/ignite/internal/client/GridClientProtocol;

    if-eq v1, v2, :cond_0

    .line 66
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getProtocol()Lorg/apache/ignite/internal/client/GridClientProtocol;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 67
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;)Lorg/apache/ignite/internal/client/GridClientConfiguration;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->cliCfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    return-object v0
.end method

.method private connectionManager(B)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;
    .locals 7
    .param p1, "marshId"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v2, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->connMgrMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    .line 137
    .local v0, "mgr":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;
    if-nez v0, :cond_0

    .line 138
    iget-object v2, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->connMgrMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->clientImpl:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->newConnectionManager(Ljava/lang/Byte;Z)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    .line 141
    .local v1, "old":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;
    if-eqz v1, :cond_0

    .line 142
    move-object v0, v1

    .line 145
    .end local v1    # "old":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addTopologyListener(Lorg/apache/ignite/internal/client/GridClientTopologyListener;)V
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/client/GridClientTopologyListener;

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->clientImpl:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->addTopologyListener(Lorg/apache/ignite/internal/client/GridClientTopologyListener;)V

    .line 179
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->clientImpl:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->close()V

    .line 199
    return-void
.end method

.method public compute()Lorg/apache/ignite/internal/client/GridClientCompute;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->clientImpl:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->compute()Lorg/apache/ignite/internal/client/GridClientCompute;

    move-result-object v0

    return-object v0
.end method

.method public connected()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->clientImpl:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->connected()Z

    move-result v0

    return v0
.end method

.method public data()Lorg/apache/ignite/internal/client/GridClientData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->clientImpl:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->data()Lorg/apache/ignite/internal/client/GridClientData;

    move-result-object v0

    return-object v0
.end method

.method public data(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientData;
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->clientImpl:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->data(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientData;

    move-result-object v0

    return-object v0
.end method

.method forwardMessage(Ljava/lang/Object;Ljava/util/UUID;B)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 12
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "destId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "marshId"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/UUID;",
            "B)",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v7, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->clientImpl:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->topology()Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    move-result-object v6

    .line 87
    .local v6, "top":Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;
    if-eqz p2, :cond_0

    invoke-virtual {v6, p2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->node(Ljava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientNode;

    move-result-object v3

    .line 95
    .local v3, "dest":Lorg/apache/ignite/internal/client/GridClientNode;
    :goto_0
    if-nez v3, :cond_1

    .line 96
    new-instance v7, Lorg/apache/ignite/internal/client/GridServerUnreachableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to resolve node for specified destination ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/ignite/internal/client/GridServerUnreachableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 87
    .end local v3    # "dest":Lorg/apache/ignite/internal/client/GridClientNode;
    :cond_0
    iget-object v7, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->cliCfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getBalancer()Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;

    move-result-object v7

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes()Ljava/util/Collection;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Lorg/apache/ignite/internal/client/GridClientPredicate;

    const/4 v10, 0x0

    new-instance v11, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl$1;

    invoke-direct {v11, p0}, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl$1;-><init>(Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;)V

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->applyFilter(Ljava/lang/Iterable;[Lorg/apache/ignite/internal/client/GridClientPredicate;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;->balancedNode(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientNode;

    move-result-object v3

    goto :goto_0

    .line 98
    .restart local v3    # "dest":Lorg/apache/ignite/internal/client/GridClientNode;
    :cond_1
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->connectionManager(B)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    move-result-object v2

    .line 100
    .local v2, "connMgr":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;
    const/4 v1, 0x0

    .line 106
    .local v1, "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    :try_start_0
    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;->connection(Lorg/apache/ignite/internal/client/GridClientNode;)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    move-result-object v1

    .line 108
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->forwardMessage(Ljava/lang/Object;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    :try_end_0
    .catch Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 126
    :goto_1
    return-object v5

    .line 110
    :catch_0
    move-exception v4

    .line 111
    .local v4, "e":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;
    if-eqz p2, :cond_2

    .line 112
    invoke-virtual {v6, p2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->node(Ljava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientNode;

    move-result-object v7

    invoke-interface {v2, v1, v7, v4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;->terminateConnection(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;Lorg/apache/ignite/internal/client/GridClientNode;Ljava/lang/Throwable;)V

    .line 116
    :goto_2
    move-object v0, v4

    .line 122
    .end local v4    # "e":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;
    .local v0, "cause":Lorg/apache/ignite/internal/client/GridClientException;
    :goto_3
    new-instance v5, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    invoke-direct {v5}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;-><init>()V

    .line 124
    .local v5, "fail":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<Ljava/lang/Object;>;"
    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->onDone(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 114
    .end local v0    # "cause":Lorg/apache/ignite/internal/client/GridClientException;
    .end local v5    # "fail":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<Ljava/lang/Object;>;"
    .restart local v4    # "e":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;
    :cond_2
    const/4 v7, 0x0

    invoke-interface {v2, v1, v7, v4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;->terminateConnection(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;Lorg/apache/ignite/internal/client/GridClientNode;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 118
    .end local v4    # "e":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;
    :catch_1
    move-exception v4

    .line 119
    .local v4, "e":Lorg/apache/ignite/internal/client/GridClientException;
    move-object v0, v4

    .restart local v0    # "cause":Lorg/apache/ignite/internal/client/GridClientException;
    goto :goto_3
.end method

.method public id()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->clientImpl:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->id()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public removeTopologyListener(Lorg/apache/ignite/internal/client/GridClientTopologyListener;)V
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/client/GridClientTopologyListener;

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->clientImpl:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->removeTopologyListener(Lorg/apache/ignite/internal/client/GridClientTopologyListener;)V

    .line 184
    return-void
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "wait"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->clientImpl:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->stop(Z)V

    .line 154
    return-void
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
    .line 188
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->clientImpl:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->topologyListeners()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
