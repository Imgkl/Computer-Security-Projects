.class public abstract Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;
.super Ljava/lang/Object;
.source "GridClientConnectionManagerAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$1;,
        Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INIT_RETRY_CNT:I = 0x3

.field private static final INIT_RETRY_INTERVAL:I = 0x3e8


# instance fields
.field protected final cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

.field private final clientId:Ljava/util/UUID;

.field private volatile closed:Z

.field private final conns:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/net/InetSocketAddress;",
            "Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final endpointStripedLock:Lorg/apache/ignite/internal/client/util/GridClientStripedLock;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final log:Ljava/util/logging/Logger;

.field private final marshId:Ljava/lang/Byte;

.field private final nodeConns:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final pingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

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

.field private srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;

.field private final sslCtx:Ljavax/net/ssl/SSLContext;

.field private final top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/util/UUID;Ljavax/net/ssl/SSLContext;Lorg/apache/ignite/internal/client/GridClientConfiguration;Ljava/util/Collection;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;Ljava/lang/Byte;Z)V
    .locals 11
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
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 115
    .local p4, "routers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v7, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->conns:Ljava/util/concurrent/ConcurrentMap;

    .line 66
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v7, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->nodeConns:Ljava/util/concurrent/ConcurrentMap;

    .line 90
    new-instance v7, Lorg/apache/ignite/internal/client/util/GridClientStripedLock;

    const/16 v8, 0x10

    invoke-direct {v7, v8}, Lorg/apache/ignite/internal/client/util/GridClientStripedLock;-><init>(I)V

    iput-object v7, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->endpointStripedLock:Lorg/apache/ignite/internal/client/util/GridClientStripedLock;

    .line 116
    sget-boolean v7, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "clientId != null"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 117
    :cond_0
    sget-boolean v7, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    if-nez p3, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "cfg != null"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 118
    :cond_1
    sget-boolean v7, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    if-nez p4, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "routers != null"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 119
    :cond_2
    sget-boolean v7, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    if-nez p5, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "top != null"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 121
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->clientId:Ljava/util/UUID;

    .line 122
    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->sslCtx:Ljavax/net/ssl/SSLContext;

    .line 123
    iput-object p3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    .line 124
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->routers:Ljava/util/Collection;

    .line 125
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->log:Ljava/util/logging/Logger;

    .line 129
    invoke-virtual {p3}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {p3}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    :goto_0
    iput-object v7, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->executor:Ljava/util/concurrent/ExecutorService;

    .line 132
    invoke-virtual {p3}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getProtocol()Lorg/apache/ignite/internal/client/GridClientProtocol;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/client/GridClientProtocol;->TCP:Lorg/apache/ignite/internal/client/GridClientProtocol;

    if-ne v7, v8, :cond_5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    new-instance v8, Lorg/apache/ignite/internal/client/impl/GridClientThreadFactory;

    const-string v9, "exec"

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Lorg/apache/ignite/internal/client/impl/GridClientThreadFactory;-><init>(Ljava/lang/String;Z)V

    invoke-static {v7, v8}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    :goto_1
    iput-object v7, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->pingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 135
    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->marshId:Ljava/lang/Byte;

    .line 137
    if-nez p6, :cond_6

    invoke-virtual {p3}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getMarshaller()Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    move-result-object v7

    if-nez v7, :cond_6

    .line 138
    new-instance v7, Lorg/apache/ignite/internal/client/GridClientException;

    const-string v8, "Failed to start client (marshaller is not configured)."

    invoke-direct {v7, v8}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 129
    :cond_4
    new-instance v7, Lorg/apache/ignite/internal/client/impl/GridClientThreadFactory;

    const-string v8, "exec"

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientThreadFactory;-><init>(Ljava/lang/String;Z)V

    invoke-static {v7}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    goto :goto_0

    .line 132
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 140
    :cond_6
    invoke-virtual {p3}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getProtocol()Lorg/apache/ignite/internal/client/GridClientProtocol;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/client/GridClientProtocol;->TCP:Lorg/apache/ignite/internal/client/GridClientProtocol;

    if-ne v7, v8, :cond_7

    .line 142
    :try_start_0
    new-instance v5, Lorg/apache/ignite/logger/java/JavaLogger;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lorg/apache/ignite/logger/java/JavaLogger;-><init>(Z)V

    .line 146
    .local v5, "gridLog":Lorg/apache/ignite/IgniteLogger;
    new-instance v2, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;

    new-instance v7, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;

    move/from16 v0, p7

    invoke-direct {v7, v0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;-><init>(Z)V

    const/4 v8, 0x0

    invoke-direct {v2, v7, v5, v8}, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioParser;Lorg/apache/ignite/IgniteLogger;Z)V

    .line 148
    .local v2, "codecFilter":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    if-eqz p2, :cond_8

    .line 149
    new-instance v6, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    invoke-direct {v6, p2, v5}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;-><init>(Ljavax/net/ssl/SSLContext;Lorg/apache/ignite/IgniteLogger;)V

    .line 151
    .local v6, "sslFilter":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->directMode(Z)V

    .line 152
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->clientMode(Z)V

    .line 154
    const/4 v7, 0x2

    new-array v4, v7, [Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    const/4 v7, 0x0

    aput-object v2, v4, v7

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 159
    .end local v6    # "sslFilter":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;
    .local v4, "filters":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    :goto_2
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->builder()Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->address(Ljava/net/InetAddress;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->port(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    new-instance v8, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;

    iget-object v9, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->log:Ljava/util/logging/Logger;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;-><init>(Ljava/util/logging/Logger;Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$1;)V

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->listener(Lorg/apache/ignite/internal/util/nio/GridNioServerListener;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->filters([Lorg/apache/ignite/internal/util/nio/GridNioFilter;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->logger(Lorg/apache/ignite/IgniteLogger;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->selectorCount(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->sendQueueLimit(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->byteOrder(Ljava/nio/ByteOrder;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-virtual {p3}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isTcpNoDelay()Z

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->tcpNoDelay(Z)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->directBuffer(Z)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->directMode(Z)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->socketReceiveBufferSize(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->socketSendBufferSize(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->idleTimeout(J)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v8

    if-eqz p7, :cond_9

    const-string v7, "routerClient"

    :goto_3
    invoke-virtual {v8, v7}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->gridName(Ljava/lang/String;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-virtual {p3}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isDaemon()Z

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->daemon(Z)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->build()Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .line 177
    iget-object v7, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->start()V

    .line 183
    .end local v2    # "codecFilter":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .end local v4    # "filters":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .end local v5    # "gridLog":Lorg/apache/ignite/IgniteLogger;
    :cond_7
    return-void

    .line 157
    .restart local v2    # "codecFilter":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .restart local v5    # "gridLog":Lorg/apache/ignite/IgniteLogger;
    :cond_8
    const/4 v7, 0x1

    new-array v4, v7, [Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    const/4 v7, 0x0

    aput-object v2, v4, v7

    .restart local v4    # "filters":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    goto/16 :goto_2

    .line 159
    :cond_9
    const-string v7, "gridClient"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 179
    .end local v2    # "codecFilter":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .end local v4    # "filters":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .end local v5    # "gridLog":Lorg/apache/ignite/IgniteLogger;
    :catch_0
    move-exception v3

    .line 180
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    new-instance v7, Lorg/apache/ignite/internal/client/GridClientException;

    const-string v8, "Failed to start connection server."

    invoke-direct {v7, v8, v3}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 179
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_4
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 540
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->closed:Z

    if-eqz v0, :cond_0

    .line 541
    new-instance v0, Lorg/apache/ignite/internal/client/GridClientClosedException;

    const-string v1, "Client was closed (no public methods of client can be used anymore)."

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/client/GridClientClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_0
    return-void
.end method

.method private closeIdle()V
    .locals 6

    .prologue
    .line 517
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->nodeConns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 518
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 520
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    .line 522
    .local v0, "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getMaxConnectionIdleTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->closeIfIdle(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 523
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->conns:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 525
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->nodeConns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 529
    .end local v0    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;>;"
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->conns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    .line 530
    .restart local v0    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getMaxConnectionIdleTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->closeIfIdle(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 531
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->conns:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 532
    .end local v0    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    :cond_3
    return-void
.end method


# virtual methods
.method protected connect(Ljava/util/UUID;Ljava/net/InetSocketAddress;)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .locals 21
    .param p1, "nodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "addr"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/internal/client/GridClientException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->endpointStripedLock:Lorg/apache/ignite/internal/client/util/GridClientStripedLock;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/client/util/GridClientStripedLock;->lock(Ljava/lang/Object;)V

    .line 406
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->conns:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    .line 408
    .local v20, "old":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    if-eqz v20, :cond_0

    .line 409
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->conns:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 412
    if-eqz p1, :cond_0

    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->nodeConns:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :cond_0
    const/16 v18, 0x0

    .line 426
    .local v18, "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getSecurityCredentialsProvider()Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 427
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getSecurityCredentialsProvider()Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;->credentials()Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    .line 435
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getProtocol()Lorg/apache/ignite/internal/client/GridClientProtocol;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/client/GridClientProtocol;->TCP:Lorg/apache/ignite/internal/client/GridClientProtocol;

    if-ne v4, v5, :cond_4

    .line 436
    new-instance v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->clientId:Ljava/util/UUID;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->sslCtx:Ljavax/net/ssl/SSLContext;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->pingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getConnectTimeout()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getPingInterval()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getPingTimeout()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isTcpNoDelay()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getMarshaller()Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->marshId:Ljava/lang/Byte;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->keepPortablesThreadLocal()Ljava/lang/ThreadLocal;

    move-result-object v19

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v19}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioServer;Ljava/util/UUID;Ljava/net/InetSocketAddress;Ljavax/net/ssl/SSLContext;Ljava/util/concurrent/ScheduledExecutorService;IJJZLorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;Ljava/lang/Byte;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    .line 444
    .local v3, "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->conns:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v4, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "old":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    check-cast v20, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    .line 446
    .restart local v20    # "old":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    sget-boolean v4, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    if-eqz v20, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    .end local v3    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .end local v18    # "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    .end local v20    # "old":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->endpointStripedLock:Lorg/apache/ignite/internal/client/util/GridClientStripedLock;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/client/util/GridClientStripedLock;->unlock(Ljava/lang/Object;)V

    throw v4

    .line 416
    .restart local v20    # "old":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    :cond_2
    if-eqz p1, :cond_3

    .line 417
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->nodeConns:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->endpointStripedLock:Lorg/apache/ignite/internal/client/util/GridClientStripedLock;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/client/util/GridClientStripedLock;->unlock(Ljava/lang/Object;)V

    move-object/from16 v3, v20

    :goto_0
    return-object v3

    .line 429
    .restart local v18    # "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    :catch_0
    move-exception v2

    .line 430
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_4
    new-instance v4, Lorg/apache/ignite/internal/client/GridClientException;

    const-string v5, "Failed to obtain client credentials."

    invoke-direct {v4, v5, v2}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 441
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_4
    new-instance v4, Lorg/apache/ignite/internal/client/GridServerUnreachableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create client (protocol is not supported): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getProtocol()Lorg/apache/ignite/internal/client/GridClientProtocol;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/client/GridServerUnreachableException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 448
    .restart local v3    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    :cond_5
    if-eqz p1, :cond_6

    .line 449
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->nodeConns:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 454
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->endpointStripedLock:Lorg/apache/ignite/internal/client/util/GridClientStripedLock;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/client/util/GridClientStripedLock;->unlock(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected connect(Ljava/util/UUID;Ljava/util/Collection;)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;)",
            "Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridServerUnreachableException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 364
    .local p2, "srvs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 365
    new-instance v4, Lorg/apache/ignite/internal/client/GridServerUnreachableException;

    const-string v5, "Failed to establish connection to the grid node (address list is empty)."

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/client/GridServerUnreachableException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 368
    :cond_0
    const/4 v0, 0x0

    .line 370
    .local v0, "cause":Ljava/lang/Exception;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 372
    .local v3, "srv":Ljava/net/InetSocketAddress;
    :try_start_0
    invoke-virtual {p0, p1, v3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->connect(Ljava/util/UUID;Ljava/net/InetSocketAddress;)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/InterruptedException;
    throw v1

    .line 377
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/Exception;
    if-nez v0, :cond_2

    .line 379
    move-object v0, v1

    goto :goto_0

    .line 380
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 381
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to connect to grid node [srvAddr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "srv":Ljava/net/InetSocketAddress;
    :cond_3
    sget-boolean v4, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 387
    :cond_4
    new-instance v4, Lorg/apache/ignite/internal/client/GridServerUnreachableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to connect to any of the servers in list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/ignite/internal/client/GridServerUnreachableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public connection(Ljava/util/UUID;Ljava/util/Collection;)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;)",
            "Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridServerUnreachableException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 320
    .local p2, "srvs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 321
    :cond_0
    new-instance v3, Lorg/apache/ignite/internal/client/GridServerUnreachableException;

    const-string v4, "Failed to establish connection to the grid (address list is empty)."

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/client/GridServerUnreachableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 324
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->checkClosed()V

    .line 327
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 328
    .local v1, "endPoint":Ljava/net/InetSocketAddress;
    sget-boolean v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez v1, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 330
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->conns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    .line 332
    .local v0, "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    if-eqz v0, :cond_2

    .line 336
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getMaxConnectionIdleTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->closeIfIdle(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 337
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->closeIdle()V

    goto :goto_0

    .line 342
    :cond_4
    if-eqz p1, :cond_5

    .line 343
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->nodeConns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .end local v0    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .end local v1    # "endPoint":Ljava/net/InetSocketAddress;
    :cond_5
    :goto_1
    return-object v0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->connect(Ljava/util/UUID;Ljava/util/Collection;)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    move-result-object v0

    goto :goto_1
.end method

.method public connection(Lorg/apache/ignite/internal/client/GridClientNode;)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .locals 11
    .param p1, "node"    # Lorg/apache/ignite/internal/client/GridClientNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientClosedException;,
            Lorg/apache/ignite/internal/client/GridServerUnreachableException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 258
    sget-boolean v8, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 261
    :cond_0
    iget-object v8, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->routers:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 262
    const/4 v7, 0x0

    iget-object v8, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->routers:Ljava/util/Collection;

    invoke-virtual {p0, v7, v8}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->connection(Ljava/util/UUID;Ljava/util/Collection;)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    move-result-object v0

    .line 304
    :cond_1
    :goto_0
    return-object v0

    .line 264
    :cond_2
    iget-object v8, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->nodeConns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/internal/client/GridClientNode;->nodeId()Ljava/util/UUID;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    .line 266
    .local v0, "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    if-eqz v0, :cond_3

    .line 268
    iget-object v8, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getMaxConnectionIdleTime()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->closeIfIdle(J)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 269
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->closeIdle()V

    .line 275
    :cond_3
    iget-object v8, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getProtocol()Lorg/apache/ignite/internal/client/GridClientProtocol;

    move-result-object v8

    invoke-interface {p1, v8, v7}, Lorg/apache/ignite/internal/client/GridClientNode;->availableAddresses(Lorg/apache/ignite/internal/client/GridClientProtocol;Z)Ljava/util/Collection;

    move-result-object v2

    .line 277
    .local v2, "endpoints":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    .local v4, "resolvedEndpoints":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 280
    .local v1, "endpoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v8

    if-nez v8, :cond_4

    .line 281
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 283
    .end local v1    # "endpoint":Ljava/net/InetSocketAddress;
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 284
    new-instance v7, Lorg/apache/ignite/internal/client/GridServerUnreachableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No available endpoints to connect (is rest enabled for this node?): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/ignite/internal/client/GridServerUnreachableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 288
    :cond_6
    invoke-interface {p1}, Lorg/apache/ignite/internal/client/GridClientNode;->attributes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->allLocalMACs()Ljava/util/Collection;

    move-result-object v8

    const-string v9, "org.apache.ignite.macs"

    invoke-interface {p1, v9}, Lorg/apache/ignite/internal/client/GridClientNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/F;->containsAny(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_7
    move v5, v7

    .line 291
    .local v5, "sameHost":Z
    :goto_2
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 293
    .local v6, "srvs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    if-eqz v5, :cond_a

    .line 294
    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->inetAddressesComparator(Z)Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 296
    invoke-interface {v6, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 304
    :cond_8
    invoke-interface {p1}, Lorg/apache/ignite/internal/client/GridClientNode;->nodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->connection(Ljava/util/UUID;Ljava/util/Collection;)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    move-result-object v0

    goto/16 :goto_0

    .line 288
    .end local v5    # "sameHost":Z
    .end local v6    # "srvs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 299
    .restart local v5    # "sameHost":Z
    .restart local v6    # "srvs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 300
    .restart local v1    # "endpoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_b

    .line 301
    invoke-interface {v6, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public init(Ljava/util/Collection;)V
    .locals 10
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
            Lorg/apache/ignite/internal/client/GridClientException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "srvs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->init0()V

    .line 190
    const/4 v3, 0x0

    .line 192
    .local v3, "firstEx":Lorg/apache/ignite/internal/client/GridClientException;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v7, 0x3

    if-ge v4, v7, :cond_5

    .line 193
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    .local v6, "srvsCp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :cond_0
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 196
    const/4 v1, 0x0

    .line 199
    .local v1, "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, v7, v6}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->connect(Ljava/util/UUID;Ljava/util/Collection;)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    move-result-object v1

    .line 201
    iget-object v7, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isAutoFetchAttributes()Z

    move-result v7

    iget-object v8, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isAutoFetchMetrics()Z

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v8, v9}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->topology(ZZLjava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/client/GridServerUnreachableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    return-void

    .line 205
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Lorg/apache/ignite/internal/client/GridServerUnreachableException;
    sget-boolean v7, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    if-eqz v1, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "GridClientConnectionResetException was thrown from GridClientConnection#topology"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 210
    :cond_1
    if-nez v3, :cond_2

    .line 211
    move-object v3, v2

    .line 229
    .end local v1    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .end local v2    # "e":Lorg/apache/ignite/internal/client/GridServerUnreachableException;
    :cond_2
    :goto_1
    const-wide/16 v8, 0x3e8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 192
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 215
    .restart local v1    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    :catch_1
    move-exception v2

    .line 218
    .local v2, "e":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;
    sget-boolean v7, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    if-nez v1, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "GridClientConnectionResetException was thrown from connect()"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 220
    :cond_3
    if-nez v3, :cond_4

    .line 221
    move-object v3, v2

    .line 223
    :cond_4
    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 232
    .end local v1    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .end local v2    # "e":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;
    .end local v6    # "srvsCp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :cond_5
    iget-object v7, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->conns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    .line 233
    .local v0, "c":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    iget-object v7, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->conns:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    sget-object v7, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->FAILED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->close(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;Z)V

    goto :goto_2

    .line 238
    .end local v0    # "c":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    :cond_6
    throw v3
.end method

.method protected abstract init0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method protected keepPortablesThreadLocal()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    const/4 v0, 0x0

    return-object v0
.end method

.method public stop(Z)V
    .locals 6
    .param p1, "waitCompletion"    # Z

    .prologue
    .line 485
    iget-boolean v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->closed:Z

    if-eqz v3, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->closed:Z

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->conns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 494
    .local v0, "closeConns":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->conns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 496
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->nodeConns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 499
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    .line 500
    .local v1, "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    sget-object v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->CLIENT_CLOSED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    invoke-virtual {v1, v3, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->close(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;Z)V

    goto :goto_1

    .line 502
    .end local v1    # "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->pingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_3

    .line 503
    const-class v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->pingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->log:Ljava/util/logging/Logger;

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Ljava/util/logging/Logger;)V

    .line 505
    :cond_3
    const-class v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;

    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->executor:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->log:Ljava/util/logging/Logger;

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Ljava/util/logging/Logger;)V

    .line 507
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    if-eqz v3, :cond_0

    .line 508
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->stop()V

    goto :goto_0
.end method

.method public terminateConnection(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;Lorg/apache/ignite/internal/client/GridClientNode;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "conn"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .param p2, "node"    # Lorg/apache/ignite/internal/client/GridClientNode;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 467
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection with remote node was terminated [node="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", srvAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 471
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;->closeIdle()V

    .line 473
    sget-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->FAILED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->close(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;Z)V

    .line 474
    return-void
.end method
