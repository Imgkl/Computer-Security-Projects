.class public Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;
.super Ljava/lang/Object;
.source "GridTcpRouterImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/router/GridTcpRouter;
.implements Lorg/apache/ignite/internal/client/router/GridTcpRouterMBean;
.implements Lorg/apache/ignite/lifecycle/LifecycleAware;


# static fields
.field private static final ENT_NIO_LSNR_CLS:Ljava/lang/String; = "org.apache.ignite.client.router.impl.GridTcpRouterNioListenerEntImpl"


# instance fields
.field private volatile bindHost:Ljava/lang/String;

.field private volatile bindPort:I

.field private final cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

.field private client:Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;

.field private final id:Ljava/util/UUID;

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private mbeanName:Ljavax/management/ObjectName;

.field private volatile parser:Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;

.field private srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/nio/GridNioServer",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->id:Ljava/util/UUID;

    .line 80
    iput-object p1, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    .line 82
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    .line 84
    return-void

    .line 82
    :cond_0
    new-instance v0, Lorg/apache/ignite/logger/java/JavaLogger;

    invoke-direct {v0}, Lorg/apache/ignite/logger/java/JavaLogger;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/logger/java/JavaLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    goto :goto_0
.end method

.method private createClient(Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;)Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;
    .locals 2
    .param p1, "routerCfg"    # Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 283
    .local v0, "clientId":Ljava/util/UUID;
    new-instance v1, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;

    invoke-direct {v1, v0, p1}, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;-><init>(Ljava/util/UUID;Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;)V

    return-object v1
.end method

.method private startTcpServer(Ljava/net/InetAddress;ILorg/apache/ignite/internal/util/nio/GridNioServerListener;Lorg/apache/ignite/internal/util/nio/GridNioParser;ZLjavax/net/ssl/SSLContext;ZZ)Z
    .locals 10
    .param p1, "hostAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p4, "parser"    # Lorg/apache/ignite/internal/util/nio/GridNioParser;
    .param p5, "tcpNoDelay"    # Z
    .param p6, "sslCtx"    # Ljavax/net/ssl/SSLContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "wantClientAuth"    # Z
    .param p8, "needClientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "I",
            "Lorg/apache/ignite/internal/util/nio/GridNioServerListener",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;",
            ">;",
            "Lorg/apache/ignite/internal/util/nio/GridNioParser;",
            "Z",
            "Ljavax/net/ssl/SSLContext;",
            "ZZ)Z"
        }
    .end annotation

    .prologue
    .line 222
    .local p3, "lsnr":Lorg/apache/ignite/internal/util/nio/GridNioServerListener;, "Lorg/apache/ignite/internal/util/nio/GridNioServerListener<Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;>;"
    :try_start_0
    new-instance v2, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;

    iget-object v7, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v8, 0x0

    invoke-direct {v2, p4, v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioParser;Lorg/apache/ignite/IgniteLogger;Z)V

    .line 226
    .local v2, "codec":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "router-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->id:Ljava/util/UUID;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "gridName":Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 231
    new-instance v6, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    iget-object v7, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, p6

    invoke-direct {v6, v0, v7}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;-><init>(Ljavax/net/ssl/SSLContext;Lorg/apache/ignite/IgniteLogger;)V

    .line 233
    .local v6, "sslFilter":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;
    move/from16 v0, p7

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->wantClientAuth(Z)V

    .line 235
    move/from16 v0, p8

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->needClientAuth(Z)V

    .line 237
    const/4 v7, 0x2

    new-array v4, v7, [Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    const/4 v7, 0x0

    aput-object v2, v4, v7

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 242
    .end local v6    # "sslFilter":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;
    .local v4, "filters":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    :goto_0
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->builder()Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->address(Ljava/net/InetAddress;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-virtual {v7, p2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->port(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-virtual {v7, p3}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->listener(Lorg/apache/ignite/internal/util/nio/GridNioServerListener;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->logger(Lorg/apache/ignite/IgniteLogger;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->selectorCount(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->gridName(Ljava/lang/String;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-virtual {v7, p5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->tcpNoDelay(Z)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->directBuffer(Z)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->byteOrder(Ljava/nio/ByteOrder;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->socketSendBufferSize(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->socketReceiveBufferSize(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->sendQueueLimit(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->filters([Lorg/apache/ignite/internal/util/nio/GridNioFilter;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getIdleTimeout()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->idleTimeout(J)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->build()Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .line 259
    iget-object v7, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->start()V

    .line 261
    const/4 v7, 0x1

    .line 269
    .end local v2    # "codec":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .end local v4    # "filters":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .end local v5    # "gridName":Ljava/lang/String;
    :goto_1
    return v7

    .line 240
    .restart local v2    # "codec":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .restart local v5    # "gridName":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x1

    new-array v4, v7, [Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    const/4 v7, 0x0

    aput-object v2, v4, v7
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "filters":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    goto :goto_0

    .line 263
    .end local v2    # "codec":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .end local v4    # "filters":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .end local v5    # "gridName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 264
    .local v3, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v7, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 265
    iget-object v7, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to start TCP router protocol on port "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 267
    :cond_1
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .line 269
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method public configuration()Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 338
    if-ne p1, p0, :cond_0

    .line 339
    const/4 v1, 0x1

    .line 346
    :goto_0
    return v1

    .line 341
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 342
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 344
    check-cast v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;

    .line 346
    .local v0, "that":Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;
    iget-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->id:Ljava/util/UUID;

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->id:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->bindHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->bindPort:I

    return v0
.end method

.method public getReceivedCount()J
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->parser:Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->parser:Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;->getReceivedCount()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getSendCount()J
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->parser:Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->parser:Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;->getSendCount()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
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
    .line 308
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getServers()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->id:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method

.method public id()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public isSslClientAuth()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->isSslClientAuth()Z

    move-result v0

    return v0
.end method

.method public isSslEnabled()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getSslContextFactory()Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->createClient(Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;)Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->client:Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;
    :try_end_0
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :try_start_1
    const-string v2, "org.apache.ignite.client.router.impl.GridTcpRouterNioListenerEntImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    .line 104
    .local v15, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lorg/apache/ignite/IgniteLogger;

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-class v7, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;

    aput-object v7, v2, v6

    invoke-virtual {v15, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v16

    .line 106
    .local v16, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 108
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    aput-object v7, v2, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->client:Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;

    aput-object v7, v2, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/util/nio/GridNioServerListener;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_8

    .line 117
    .end local v15    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v5, "lsnr":Lorg/apache/ignite/internal/util/nio/GridNioServerListener;, "Lorg/apache/ignite/internal/util/nio/GridNioServerListener<Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;>;"
    :goto_0
    new-instance v2, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;

    invoke-direct {v2}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->parser:Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;

    .line 122
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v3

    .line 131
    .local v3, "hostAddr":Ljava/net/InetAddress;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getSslContextFactory()Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v21

    .line 133
    .local v21, "sslCtxFactory":Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;
    if-nez v21, :cond_2

    const/4 v8, 0x0

    .line 139
    .local v8, "sslCtx":Ljavax/net/ssl/SSLContext;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getPort()I

    move-result v4

    .local v4, "port":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getPortRange()I

    move-result v2

    add-int v19, v4, v2

    .local v19, "last":I
    :goto_2
    move/from16 v0, v19

    if-gt v4, v0, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->parser:Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->isNoDelay()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->isSslClientAuth()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->isSslClientAuth()Z

    move-result v10

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->startTcpServer(Ljava/net/InetAddress;ILorg/apache/ignite/internal/util/nio/GridNioServerListener;Lorg/apache/ignite/internal/util/nio/GridNioParser;ZLjavax/net/ssl/SSLContext;ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TCP router successfully started for endpoint: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 145
    :cond_0
    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->bindPort:I

    .line 146
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->bindHost:Ljava/lang/String;

    .line 155
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->bindPort:I

    if-nez v2, :cond_4

    .line 156
    new-instance v2, Lorg/apache/ignite/IgniteException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to bind TCP router server (possibly all ports in range are in use) [firstPort="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lastPort="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getPort()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getPortRange()I

    move-result v9

    add-int/2addr v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", addr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    .end local v3    # "hostAddr":Ljava/net/InetAddress;
    .end local v4    # "port":I
    .end local v5    # "lsnr":Lorg/apache/ignite/internal/util/nio/GridNioServerListener;, "Lorg/apache/ignite/internal/util/nio/GridNioServerListener<Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;>;"
    .end local v8    # "sslCtx":Ljavax/net/ssl/SSLContext;
    .end local v19    # "last":I
    .end local v21    # "sslCtxFactory":Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;
    :catch_0
    move-exception v17

    .line 96
    .local v17, "e":Lorg/apache/ignite/internal/client/GridClientException;
    new-instance v2, Lorg/apache/ignite/IgniteException;

    const-string v6, "Failed to initialise embedded client."

    move-object/from16 v0, v17

    invoke-direct {v2, v6, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 110
    .end local v17    # "e":Lorg/apache/ignite/internal/client/GridClientException;
    :catch_1
    move-exception v18

    .line 111
    .local v18, "ignored":Ljava/lang/ClassNotFoundException;
    new-instance v5, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerOsImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->client:Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;

    invoke-direct {v5, v2, v6}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerOsImpl;-><init>(Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;)V

    .line 115
    .restart local v5    # "lsnr":Lorg/apache/ignite/internal/util/nio/GridNioServerListener;, "Lorg/apache/ignite/internal/util/nio/GridNioServerListener<Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;>;"
    goto/16 :goto_0

    .line 113
    .end local v5    # "lsnr":Lorg/apache/ignite/internal/util/nio/GridNioServerListener;, "Lorg/apache/ignite/internal/util/nio/GridNioServerListener<Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;>;"
    .end local v18    # "ignored":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v17

    .line 114
    .local v17, "e":Ljava/lang/ReflectiveOperationException;
    :goto_3
    new-instance v2, Lorg/apache/ignite/IgniteException;

    const-string v6, "Failed to create NIO listener."

    move-object/from16 v0, v17

    invoke-direct {v2, v6, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 124
    .end local v17    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local v5    # "lsnr":Lorg/apache/ignite/internal/util/nio/GridNioServerListener;, "Lorg/apache/ignite/internal/util/nio/GridNioServerListener<Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;>;"
    :catch_3
    move-exception v17

    .line 125
    .local v17, "e":Ljava/net/UnknownHostException;
    new-instance v2, Lorg/apache/ignite/IgniteException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve grid address for configured host: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->cfg:Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-direct {v2, v6, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 133
    .end local v17    # "e":Ljava/net/UnknownHostException;
    .restart local v3    # "hostAddr":Ljava/net/InetAddress;
    .restart local v21    # "sslCtxFactory":Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;
    :cond_2
    :try_start_4
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;->createSslContext()Ljavax/net/ssl/SSLContext;
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v8

    goto/16 :goto_1

    .line 135
    .end local v21    # "sslCtxFactory":Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;
    :catch_4
    move-exception v17

    .line 136
    .local v17, "e":Ljavax/net/ssl/SSLException;
    new-instance v2, Lorg/apache/ignite/IgniteException;

    const-string v6, "Failed to create SSL context."

    move-object/from16 v0, v17

    invoke-direct {v2, v6, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 151
    .end local v17    # "e":Ljavax/net/ssl/SSLException;
    .restart local v4    # "port":I
    .restart local v8    # "sslCtx":Ljavax/net/ssl/SSLContext;
    .restart local v19    # "last":I
    .restart local v21    # "sslCtxFactory":Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TCP REST router failed to start on endpoint: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Will try next port within allowed port range."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 161
    :cond_4
    :try_start_5
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v9

    const-string v10, "Router"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TCP Router "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->id:Ljava/util/UUID;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    const-class v14, Lorg/apache/ignite/internal/client/router/GridTcpRouterMBean;

    move-object/from16 v13, p0

    invoke-static/range {v9 .. v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->registerMBean(Ljavax/management/MBeanServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljavax/management/ObjectName;

    move-result-object v20

    .line 169
    .local v20, "objName":Ljavax/management/ObjectName;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Registered MBean: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 172
    :cond_5
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->mbeanName:Ljavax/management/ObjectName;
    :try_end_5
    .catch Ljavax/management/JMException; {:try_start_5 .. :try_end_5} :catch_5

    .line 177
    .end local v20    # "objName":Ljavax/management/ObjectName;
    :goto_4
    return-void

    .line 174
    :catch_5
    move-exception v17

    .line 175
    .local v17, "e":Ljavax/management/JMException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Failed to register MBean."

    move-object/from16 v0, v17

    invoke-static {v2, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 113
    .end local v3    # "hostAddr":Ljava/net/InetAddress;
    .end local v4    # "port":I
    .end local v5    # "lsnr":Lorg/apache/ignite/internal/util/nio/GridNioServerListener;, "Lorg/apache/ignite/internal/util/nio/GridNioServerListener<Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;>;"
    .end local v8    # "sslCtx":Ljavax/net/ssl/SSLContext;
    .end local v17    # "e":Ljavax/management/JMException;
    .end local v19    # "last":I
    .end local v21    # "sslCtxFactory":Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;
    :catch_6
    move-exception v17

    goto/16 :goto_3

    :catch_7
    move-exception v17

    goto/16 :goto_3

    :catch_8
    move-exception v17

    goto/16 :goto_3
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 183
    iget-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->stop()V

    .line 186
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->client:Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->client:Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->stop(Z)V

    .line 189
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->mbeanName:Ljavax/management/ObjectName;

    if-eqz v1, :cond_2

    .line 191
    :try_start_0
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->mbeanName:Ljavax/management/ObjectName;

    invoke-interface {v1, v2}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V

    .line 193
    iget-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregistered MBean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->mbeanName:Ljavax/management/ObjectName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    iget-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "TCP router successfully stopped."

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 202
    :cond_3
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljavax/management/JMException;
    iget-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Failed to unregister MBean."

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
