.class public Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;
.super Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
.source "GridClientNioTcpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final SES_META_CONN:I

.field static final SES_META_HANDSHAKE:I

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final closedLatch:Ljava/util/concurrent/CountDownLatch;

.field private createTs:J

.field private final keepPortablesMode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile lastMsgRcvTime:J

.field private volatile lastMsgSndTime:J

.field private volatile lastPingRcvTime:J

.field private volatile lastPingSndTime:J

.field private final marsh:Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

.field private pendingReqs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final pingInterval:J

.field private pingTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final pingTimeout:J

.field private refreshNodeReqs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;",
            ">;"
        }
    .end annotation
.end field

.field private reqIdCntr:Ljava/util/concurrent/atomic/AtomicLong;

.field private ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

.field private volatile sesTok:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    .line 54
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->nextUniqueKey()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->SES_META_HANDSHAKE:I

    .line 57
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->nextUniqueKey()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->SES_META_CONN:I

    .line 60
    const-class v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->log:Ljava/util/logging/Logger;

    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioServer;Ljava/util/UUID;Ljava/net/InetSocketAddress;Ljavax/net/ssl/SSLContext;Ljava/util/concurrent/ScheduledExecutorService;IJJZLorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;Ljava/lang/Byte;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;Ljava/lang/Object;Ljava/lang/ThreadLocal;)V
    .locals 19
    .param p1, "srv"    # Lorg/apache/ignite/internal/util/nio/GridNioServer;
    .param p2, "clientId"    # Ljava/util/UUID;
    .param p3, "srvAddr"    # Ljava/net/InetSocketAddress;
    .param p4, "sslCtx"    # Ljavax/net/ssl/SSLContext;
    .param p5, "pingExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p6, "connectTimeout"    # I
    .param p7, "pingInterval"    # J
    .param p9, "pingTimeout"    # J
    .param p11, "tcpNoDelay"    # Z
    .param p12, "marsh"    # Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;
    .param p13, "marshId"    # Ljava/lang/Byte;
    .param p14, "top"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;
    .param p15, "cred"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer;",
            "Ljava/util/UUID;",
            "Ljava/net/InetSocketAddress;",
            "Ljavax/net/ssl/SSLContext;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "IJJZ",
            "Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;",
            "Ljava/lang/Byte;",
            "Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;",
            "Ljava/lang/Object;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 147
    .local p16, "keepPortablesMode":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Boolean;>;"
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p14

    move-object/from16 v9, p15

    invoke-direct/range {v4 .. v9}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;-><init>(Ljava/util/UUID;Ljava/net/InetSocketAddress;Ljavax/net/ssl/SSLContext;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;Ljava/lang/Object;)V

    .line 69
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->pendingReqs:Ljava/util/concurrent/ConcurrentMap;

    .line 72
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->refreshNodeReqs:Ljava/util/concurrent/ConcurrentMap;

    .line 75
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->closedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 78
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x1

    invoke-direct {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->reqIdCntr:Ljava/util/concurrent/atomic/AtomicLong;

    .line 149
    sget-boolean v4, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p12, :cond_0

    if-nez p13, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 151
    :cond_0
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->marsh:Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    .line 152
    move-wide/from16 v0, p7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->pingInterval:J

    .line 153
    move-wide/from16 v0, p9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->pingTimeout:J

    .line 154
    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->keepPortablesMode:Ljava/lang/ThreadLocal;

    .line 156
    const/4 v11, 0x0

    .line 157
    .local v11, "ch":Ljava/nio/channels/SocketChannel;
    const/16 v17, 0x0

    .line 158
    .local v17, "sock":Ljava/net/Socket;
    const/4 v12, 0x1

    .line 161
    .local v12, "cleanup":Z
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v11

    .line 162
    invoke-virtual {v11}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v17

    .line 164
    move-object/from16 v0, v17

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 165
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 167
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 169
    new-instance v14, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    invoke-direct {v14}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;-><init>()V

    .line 171
    .local v14, "handshakeFut":Lorg/apache/ignite/internal/client/GridClientFuture;, "Lorg/apache/ignite/internal/client/GridClientFuture<*>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v15, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget v4, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->SES_META_HANDSHAKE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const/16 v18, 0x0

    .line 177
    .local v18, "sslHandshakeFut":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    if-eqz p4, :cond_1

    .line 178
    new-instance v18, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;

    .end local v18    # "sslHandshakeFut":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    invoke-direct/range {v18 .. v18}, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;-><init>()V

    .line 180
    .restart local v18    # "sslHandshakeFut":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    sget v4, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->HANDSHAKE_FUT_META_KEY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v15, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v15}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->createSession(Ljava/nio/channels/SocketChannel;Ljava/util/Map;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/util/nio/GridNioSession;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .line 185
    if-eqz v18, :cond_2

    .line 186
    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->get()Ljava/lang/Object;

    .line 188
    :cond_2
    new-instance v16, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;

    invoke-direct/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;-><init>()V

    .line 190
    .local v16, "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;
    if-eqz p13, :cond_8

    .line 191
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->marshallerId(B)V

    .line 198
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    sget-object v5, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MARSHALLER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v5

    move-object/from16 v0, p12

    invoke-interface {v4, v5, v0}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    .line 200
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 202
    invoke-interface {v14}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    .line 204
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    sget v5, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->SES_META_CONN:I

    move-object/from16 v0, p0

    invoke-interface {v4, v5, v0}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v4, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 207
    sget-object v4, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Client TCP connection established: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 209
    :cond_4
    new-instance v5, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$1;-><init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;)V

    const-wide/16 v6, 0x1f4

    const-wide/16 v8, 0x1f4

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v4, p5

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->pingTask:Ljava/util/concurrent/ScheduledFuture;

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->createTs:J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    const/4 v12, 0x0

    .line 228
    if-eqz v12, :cond_7

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    if-eqz v4, :cond_5

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->close(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 232
    :cond_5
    if-eqz v17, :cond_6

    .line 233
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V

    .line 235
    :cond_6
    if-eqz v11, :cond_7

    .line 236
    invoke-virtual {v11}, Ljava/nio/channels/SocketChannel;->close()V

    .line 239
    :cond_7
    return-void

    .line 193
    :cond_8
    :try_start_1
    move-object/from16 v0, p12

    instance-of v4, v0, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;

    if-eqz v4, :cond_c

    .line 194
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->marshallerId(B)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 224
    .end local v14    # "handshakeFut":Lorg/apache/ignite/internal/client/GridClientFuture;, "Lorg/apache/ignite/internal/client/GridClientFuture<*>;"
    .end local v15    # "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v16    # "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;
    .end local v18    # "sslHandshakeFut":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    :catch_0
    move-exception v13

    .line 225
    .local v13, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    new-instance v4, Lorg/apache/ignite/internal/client/GridClientException;

    invoke-direct {v4, v13}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    .end local v13    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_b

    .line 229
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    if-eqz v5, :cond_9

    .line 230
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->close(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 232
    :cond_9
    if-eqz v17, :cond_a

    .line 233
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V

    .line 235
    :cond_a
    if-eqz v11, :cond_b

    .line 236
    invoke-virtual {v11}, Ljava/nio/channels/SocketChannel;->close()V

    :cond_b
    throw v4

    .line 195
    .restart local v14    # "handshakeFut":Lorg/apache/ignite/internal/client/GridClientFuture;, "Lorg/apache/ignite/internal/client/GridClientFuture<*>;"
    .restart local v15    # "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local v16    # "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;
    .restart local v18    # "sslHandshakeFut":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    :cond_c
    :try_start_3
    move-object/from16 v0, p12

    instance-of v4, v0, Lorg/apache/ignite/internal/client/marshaller/jdk/GridClientJdkMarshaller;

    if-eqz v4, :cond_3

    .line 196
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->marshallerId(B)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;Z)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .param p2, "x2"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;Z)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;ZLjava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;
    .param p1, "x1"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->close(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;ZLjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->refreshNodeReqs:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->nodeBeanToNode(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    move-result-object v0

    return-object v0
.end method

.method private buildAuthRequest()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;
    .locals 2

    .prologue
    .line 582
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;-><init>()V

    .line 584
    .local v0, "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->clientId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;->clientId(Ljava/util/UUID;)V

    .line 586
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->credentials()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;->credentials(Ljava/lang/Object;)V

    .line 588
    return-object v0
.end method

.method private close(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;ZLjava/lang/Throwable;)V
    .locals 8
    .param p1, "reason"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;
    .param p2, "waitCompletion"    # Z
    .param p3, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 255
    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->closeReason:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    if-eqz v3, :cond_1

    .line 257
    monitor-exit p0

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->closeReason:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    .line 260
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    if-eqz p2, :cond_2

    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->pendingReqs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-interface {v3}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->closeTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 265
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->closedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 274
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->pingTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_3

    .line 275
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->pingTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 277
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    if-eqz v3, :cond_4

    .line 278
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-interface {v3}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 280
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->pendingReqs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 281
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    .line 283
    .local v0, "fut":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->closeReason:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    invoke-virtual {p0, v3, p3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->getCloseReasonAsException(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;Ljava/lang/Throwable;)Lorg/apache/ignite/internal/client/GridClientException;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->onDone(Ljava/lang/Throwable;)V

    .line 285
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 260
    .end local v0    # "fut":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "ignored":Ljava/lang/InterruptedException;
    sget-object v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupted while waiting for all requests to be processed (all pending requests will be failed): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 288
    .end local v1    # "ignored":Ljava/lang/InterruptedException;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;>;"
    :cond_5
    sget-object v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    sget-object v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client TCP connection closed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleClientResponse(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;)V
    .locals 6
    .param p1, "fut"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;
    .param p2, "resp"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;

    .prologue
    const/16 v5, 0x5d

    const/4 v4, 0x2

    .line 508
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->sessionToken()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 509
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->sessionToken()[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->sesTok:[B

    .line 511
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->pendingMessage()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    move-result-object v1

    .line 513
    .local v1, "src":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->retryState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 553
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->requestId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->removePending(J)V

    .line 555
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->successStatus()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 556
    new-instance v2, Lorg/apache/ignite/internal/client/GridClientAuthenticationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client authentication failed [clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->clientId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", srvAddr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errMsg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->errorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/client/GridClientAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->onDone(Ljava/lang/Throwable;)V

    .line 562
    :goto_0
    return-void

    .line 515
    :pswitch_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->successStatus()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 516
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->credentials()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 517
    new-instance v2, Lorg/apache/ignite/internal/client/GridClientAuthenticationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authentication failed on server (client has no credentials) [clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->clientId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", srvAddr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errMsg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->errorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/client/GridClientAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->onDone(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 524
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->retryState(I)V

    .line 526
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->buildAuthRequest()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;

    move-result-object v0

    .line 528
    .local v0, "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->requestId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;->requestId(J)V

    .line 530
    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-interface {v2, v0}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto :goto_0

    .line 539
    .end local v0    # "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;
    :pswitch_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->successStatus()I

    move-result v2

    if-nez v2, :cond_1

    .line 540
    invoke-virtual {p1, v4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->retryState(I)V

    .line 542
    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->sesTok:[B

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->sessionToken([B)V

    .line 544
    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-interface {v2, v1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto :goto_0

    .line 558
    :cond_3
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->errorMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 559
    new-instance v2, Lorg/apache/ignite/internal/client/GridClientException;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->errorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->onDone(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 561
    :cond_4
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->result()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->onDone(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 1
    .param p1, "msg"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .param p2, "destId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Ljava/util/UUID;Z)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v0

    return-object v0
.end method

.method private makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Ljava/util/UUID;Z)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 3
    .param p1, "msg"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .param p2, "destId"    # Ljava/util/UUID;
    .param p3, "keepPortables"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;",
            "Ljava/util/UUID;",
            "Z)",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 343
    sget-boolean v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 345
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;-><init>(ZZLorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$1;)V

    .line 347
    .local v0, "res":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;, "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture<TR;>;"
    invoke-interface {p1, p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->destinationId(Ljava/util/UUID;)V

    .line 349
    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v1

    return-object v1
.end method

.method private makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 1
    .param p1, "msg"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;",
            "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture",
            "<TR;>;)",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 363
    .local p2, "fut":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;, "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture<TR;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;Z)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v0

    return-object v0
.end method

.method private makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;Z)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 16
    .param p1, "msg"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .param p3, "routeMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;",
            "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture",
            "<TR;>;Z)",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 379
    .local p2, "fut":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;, "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture<TR;>;"
    sget-boolean v9, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 381
    :cond_0
    move-object/from16 v0, p1

    instance-of v9, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPingPacket;

    if-eqz v9, :cond_3

    .line 382
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    .line 384
    .local v4, "now":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->lastPingRcvTime:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->lastPingSndTime:J

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->pingTimeout:J

    cmp-long v9, v10, v12

    if-ltz v9, :cond_2

    .line 385
    sget-object v9, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->FAILED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    const/4 v10, 0x0

    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Did not receive any packets within ping response interval (connection is considered to be half-opened) [lastPingReceiveTime="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->lastPingRcvTime:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", lastPingSendTime="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->lastPingSndTime:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", now="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", timeout="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->pingTimeout:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", addr="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->close(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;ZLjava/lang/Throwable;)V

    .line 448
    .end local v4    # "now":J
    :cond_1
    :goto_0
    return-object p2

    .line 393
    .restart local v4    # "now":J
    :cond_2
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->lastPingSndTime:J

    sub-long v10, v4, v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->pingInterval:J

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->lastPingRcvTime:J

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    .line 394
    const-wide v10, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->lastPingRcvTime:J

    .line 396
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    sget-object v10, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPingPacket;->PING_MESSAGE:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    invoke-interface {v9, v10}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 398
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->lastPingSndTime:J

    goto :goto_0

    .line 402
    .end local v4    # "now":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->reqIdCntr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v6

    .line 404
    .local v6, "reqId":J
    move-object/from16 v0, p1

    invoke-interface {v0, v6, v7}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->requestId(J)V

    .line 406
    if-nez p3, :cond_4

    .line 407
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->clientId:Ljava/util/UUID;

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->clientId(Ljava/util/UUID;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->sesTok:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->sessionToken([B)V

    .line 411
    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->pendingMessage(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->closeReason:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->checkClosed(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->pendingReqs:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-interface {v9, v10, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    .line 417
    .local v3, "old":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    sget-boolean v9, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    if-nez v9, :cond_5

    if-eqz v3, :cond_5

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 419
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    move-object/from16 v0, p1

    invoke-interface {v9, v0}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v8

    .line 421
    .local v8, "sndFut":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->lastMsgSndTime:J

    .line 423
    if-eqz p3, :cond_6

    .line 424
    new-instance v9, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v9, v0, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$2;-><init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;)V

    invoke-interface {v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto/16 :goto_0

    .line 439
    :cond_6
    :try_start_0
    invoke-interface {v8}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 441
    :catch_0
    move-exception v2

    .line 442
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to send message over connection (will try to reconnect): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method private nodeBeanToNode(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .locals 11
    .param p1, "nodeBean"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0x5d

    .line 865
    if-nez p1, :cond_0

    .line 966
    :goto_0
    return-object v7

    .line 868
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->builder()Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->getNodeId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->nodeId(Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->getConsistentId()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->consistentId(Ljava/lang/Object;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->getTcpAddresses()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->tcpAddresses(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->getTcpPort()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->tcpPort(I)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    move-result-object v6

    .line 874
    .local v6, "nodeBuilder":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 876
    .local v0, "caches":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/client/GridClientCacheMode;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->getCaches()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 877
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->getCaches()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 879
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lorg/apache/ignite/internal/client/GridClientCacheMode;->valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientCacheMode;

    move-result-object v7

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 881
    :catch_0
    move-exception v3

    .line 882
    .local v3, "ignored":Ljava/lang/IllegalArgumentException;
    sget-object v8, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid cache mode received from remote node (will ignore) [srv="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", cacheName="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", cacheMode="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 888
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ignored":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->getDefaultCacheMode()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 890
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->getDefaultCacheMode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/ignite/internal/client/GridClientCacheMode;->valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientCacheMode;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 898
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 899
    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->caches(Ljava/util/Map;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    .line 901
    :cond_3
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->getAttributes()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 902
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->getAttributes()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->attributes(Ljava/util/Map;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    .line 904
    :cond_4
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->getMetrics()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;

    move-result-object v5

    .line 906
    .local v5, "metricsBean":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;
    if-eqz v5, :cond_5

    .line 907
    new-instance v4, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;

    invoke-direct {v4}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;-><init>()V

    .line 909
    .local v4, "metrics":Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getStartTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setStartTime(J)V

    .line 910
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getAverageActiveJobs()F

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setAverageActiveJobs(F)V

    .line 911
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getAverageCancelledJobs()F

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setAverageCancelledJobs(F)V

    .line 912
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getAverageCpuLoad()D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setAverageCpuLoad(D)V

    .line 913
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getAverageJobExecuteTime()D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setAverageJobExecuteTime(D)V

    .line 914
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getAverageJobWaitTime()D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setAverageJobWaitTime(D)V

    .line 915
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getAverageRejectedJobs()F

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setAverageRejectedJobs(F)V

    .line 916
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getAverageWaitingJobs()F

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setAverageWaitingJobs(F)V

    .line 917
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getCurrentActiveJobs()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setCurrentActiveJobs(I)V

    .line 918
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getCurrentCancelledJobs()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setCurrentCancelledJobs(I)V

    .line 919
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getCurrentCpuLoad()D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setCurrentCpuLoad(D)V

    .line 920
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getCurrentGcCpuLoad()D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setCurrentGcCpuLoad(D)V

    .line 921
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getCurrentDaemonThreadCount()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setCurrentDaemonThreadCount(I)V

    .line 922
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getCurrentIdleTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setCurrentIdleTime(J)V

    .line 923
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getCurrentJobExecuteTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setCurrentJobExecuteTime(J)V

    .line 924
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getCurrentJobWaitTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setCurrentJobWaitTime(J)V

    .line 925
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getCurrentRejectedJobs()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setCurrentRejectedJobs(I)V

    .line 926
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getCurrentThreadCount()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setCurrentThreadCount(I)V

    .line 927
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getCurrentWaitingJobs()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setCurrentWaitingJobs(I)V

    .line 928
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getFileSystemFreeSpace()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setFileSystemFreeSpace(J)V

    .line 929
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getFileSystemTotalSpace()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setFileSystemTotalSpace(J)V

    .line 930
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getFileSystemUsableSpace()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setFileSystemUsableSpace(J)V

    .line 931
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getHeapMemoryCommitted()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setHeapMemoryCommitted(J)V

    .line 932
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getHeapMemoryInitialized()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setHeapMemoryInitialized(J)V

    .line 933
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getHeapMemoryMaximum()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setHeapMemoryMaximum(J)V

    .line 934
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getHeapMemoryUsed()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setHeapMemoryUsed(J)V

    .line 935
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getLastDataVersion()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setLastDataVersion(J)V

    .line 936
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getLastUpdateTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setLastUpdateTime(J)V

    .line 937
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getMaximumActiveJobs()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setMaximumActiveJobs(I)V

    .line 938
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getMaximumCancelledJobs()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setMaximumCancelledJobs(I)V

    .line 939
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getMaximumJobExecuteTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setMaximumJobExecuteTime(J)V

    .line 940
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getMaximumJobWaitTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setMaximumJobWaitTime(J)V

    .line 941
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getMaximumRejectedJobs()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setMaximumRejectedJobs(I)V

    .line 942
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getMaximumThreadCount()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setMaximumThreadCount(I)V

    .line 943
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getMaximumWaitingJobs()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setMaximumWaitingJobs(I)V

    .line 944
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getNodeStartTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setNodeStartTime(J)V

    .line 945
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getNonHeapMemoryCommitted()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setNonHeapMemoryCommitted(J)V

    .line 946
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getNonHeapMemoryInitialized()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setNonHeapMemoryInitialized(J)V

    .line 947
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getNonHeapMemoryMaximum()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setNonHeapMemoryMaximum(J)V

    .line 948
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getNonHeapMemoryUsed()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setNonHeapMemoryUsed(J)V

    .line 949
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getStartTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setStartTime(J)V

    .line 950
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getTotalCancelledJobs()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setTotalCancelledJobs(I)V

    .line 951
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getTotalCpus()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setTotalCpus(I)V

    .line 952
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getTotalExecutedJobs()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setTotalExecutedJobs(I)V

    .line 953
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getTotalIdleTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setTotalIdleTime(J)V

    .line 954
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getTotalRejectedJobs()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setTotalRejectedJobs(I)V

    .line 955
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getTotalStartedThreadCount()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setTotalStartedThreadCount(J)V

    .line 956
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getTotalExecutedTasks()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setTotalExecutedTasks(I)V

    .line 957
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getSentMessagesCount()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setSentMessagesCount(I)V

    .line 958
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getSentBytesCount()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setSentBytesCount(J)V

    .line 959
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getReceivedMessagesCount()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setReceivedMessagesCount(I)V

    .line 960
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getReceivedBytesCount()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setReceivedBytesCount(J)V

    .line 961
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;->getUpTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;->setUpTime(J)V

    .line 963
    invoke-virtual {v6, v4}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->metrics(Lorg/apache/ignite/internal/client/GridClientNodeMetrics;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    .line 966
    .end local v4    # "metrics":Lorg/apache/ignite/internal/client/impl/GridClientNodeMetricsAdapter;
    :cond_5
    invoke-virtual {v6}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->build()Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    move-result-object v7

    goto/16 :goto_0

    .line 892
    .end local v5    # "metricsBean":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeMetricsBean;
    :catch_1
    move-exception v3

    .line 893
    .restart local v3    # "ignored":Ljava/lang/IllegalArgumentException;
    sget-object v7, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid cache mode received for default cache from remote node (will ignore) [srv="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", cacheMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;->getDefaultCacheMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private removePending(J)V
    .locals 3
    .param p1, "reqId"    # J

    .prologue
    .line 570
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->pendingReqs:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->pendingReqs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->closeReason:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->closedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 574
    :cond_0
    return-void
.end method


# virtual methods
.method public cacheAppend(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p5, "destNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;TV;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
            ">;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 705
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    .local p4, "flags":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/client/GridClientCacheFlag;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 706
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 708
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->APPEND:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;-><init>(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;)V

    .line 710
    .local v0, "append":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheName(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->key(Ljava/lang/Object;)V

    .line 712
    invoke-virtual {v0, p3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->value(Ljava/lang/Object;)V

    .line 713
    invoke-static {p4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->encodeCacheFlags(Ljava/util/Collection;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheFlagsOn(I)V

    .line 715
    invoke-direct {p0, v0, p5}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v1

    return-object v1
.end method

.method public cacheCompareAndSet(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p6, "destNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;TV;TV;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
            ">;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 670
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    .local p4, "oldVal":Ljava/lang/Object;, "TV;"
    .local p5, "flags":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/client/GridClientCacheFlag;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 672
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->CAS:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;-><init>(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;)V

    .line 674
    .local v0, "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheName(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->key(Ljava/lang/Object;)V

    .line 676
    invoke-virtual {v0, p3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->value(Ljava/lang/Object;)V

    .line 677
    invoke-virtual {v0, p4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->value2(Ljava/lang/Object;)V

    .line 678
    invoke-static {p5}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->encodeCacheFlags(Ljava/util/Collection;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheFlagsOn(I)V

    .line 680
    invoke-direct {p0, v0, p6}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v1

    return-object v1
.end method

.method public cacheGetAll(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p4, "destNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<TK;>;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
            ">;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 610
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    .local p3, "flags":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/client/GridClientCacheFlag;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 612
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->GET_ALL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;-><init>(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;)V

    .line 614
    .local v0, "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheName(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->keys(Ljava/lang/Iterable;)V

    .line 616
    invoke-static {p3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->encodeCacheFlags(Ljava/util/Collection;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheFlagsOn(I)V

    .line 618
    sget-object v1, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->KEEP_PORTABLES:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v0, p4, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Ljava/util/UUID;Z)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v1

    return-object v1
.end method

.method public cacheMetrics(Ljava/lang/String;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 3
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "destNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientDataMetrics;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 687
    new-instance v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->METRICS:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;-><init>(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;)V

    .line 689
    .local v1, "metrics":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheName(Ljava/lang/String;)V

    .line 690
    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->destinationId(Ljava/util/UUID;)V

    .line 692
    new-instance v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$3;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$3;-><init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;)V

    .line 698
    .local v0, "fut":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;
    invoke-direct {p0, v1, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v2

    return-object v2
.end method

.method public cachePrepend(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p5, "destNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;TV;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
            ">;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 722
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    .local p4, "flags":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/client/GridClientCacheFlag;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 723
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 725
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->PREPEND:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;-><init>(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;)V

    .line 727
    .local v0, "prepend":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheName(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->key(Ljava/lang/Object;)V

    .line 729
    invoke-virtual {v0, p3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->value(Ljava/lang/Object;)V

    .line 730
    invoke-static {p4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->encodeCacheFlags(Ljava/util/Collection;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheFlagsOn(I)V

    .line 732
    invoke-direct {p0, v0, p5}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v1

    return-object v1
.end method

.method public cachePutAll(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p4, "destNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
            ">;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 595
    .local p2, "entries":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p3, "flags":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/client/GridClientCacheFlag;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 597
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->PUT_ALL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;-><init>(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;)V

    .line 599
    .local v0, "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheName(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->values(Ljava/util/Map;)V

    .line 601
    invoke-static {p3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->encodeCacheFlags(Ljava/util/Collection;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheFlagsOn(I)V

    .line 603
    invoke-direct {p0, v0, p4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v1

    return-object v1
.end method

.method public cacheRemove(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p4, "destNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
            ">;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 625
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "flags":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/client/GridClientCacheFlag;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->RMV:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;-><init>(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;)V

    .line 627
    .local v0, "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheName(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->key(Ljava/lang/Object;)V

    .line 629
    invoke-static {p3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->encodeCacheFlags(Ljava/util/Collection;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheFlagsOn(I)V

    .line 631
    invoke-direct {p0, v0, p4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v1

    return-object v1
.end method

.method public cacheRemoveAll(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p4, "destNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<TK;>;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
            ">;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 638
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    .local p3, "flags":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/client/GridClientCacheFlag;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 640
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->RMV_ALL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;-><init>(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;)V

    .line 642
    .local v0, "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheName(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->keys(Ljava/lang/Iterable;)V

    .line 644
    invoke-static {p3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->encodeCacheFlags(Ljava/util/Collection;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheFlagsOn(I)V

    .line 646
    invoke-direct {p0, v0, p4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v1

    return-object v1
.end method

.method public cacheReplace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p5, "destNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;TV;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
            ">;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 653
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    .local p4, "flags":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/client/GridClientCacheFlag;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 654
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 656
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->REPLACE:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;-><init>(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;)V

    .line 658
    .local v0, "replace":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheName(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->key(Ljava/lang/Object;)V

    .line 660
    invoke-virtual {v0, p3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->value(Ljava/lang/Object;)V

    .line 661
    invoke-static {p4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->encodeCacheFlags(Ljava/util/Collection;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheFlagsOn(I)V

    .line 663
    invoke-direct {p0, v0, p5}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v1

    return-object v1
.end method

.method close(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;Z)V
    .locals 1
    .param p1, "reason"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;
    .param p2, "waitCompletion"    # Z

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->close(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;ZLjava/lang/Throwable;)V

    .line 244
    return-void
.end method

.method closeIfIdle(J)Z
    .locals 9
    .param p1, "idleTimeout"    # J

    .prologue
    const/4 v2, 0x1

    .line 298
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->closeReason:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    if-eqz v3, :cond_0

    .line 312
    :goto_0
    return v2

    .line 302
    :cond_0
    iget-wide v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->lastMsgSndTime:J

    iget-wide v6, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->lastMsgRcvTime:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->createTs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 304
    .local v0, "lastMsgTime":J
    add-long v4, v0, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->pendingReqs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    sget-object v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->CONN_IDLE:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    invoke-virtual {p0, v3, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->close(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;Z)V

    goto :goto_0

    .line 312
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Ljava/lang/Object;Ljava/util/UUID;Z)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 3
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "destNodeId"    # Ljava/util/UUID;
    .param p4, "keepPortables"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/UUID;",
            "Z)",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 738
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;-><init>()V

    .line 740
    .local v0, "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->taskName(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->argument(Ljava/lang/Object;)V

    .line 742
    invoke-virtual {v0, p4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->keepPortables(Z)V

    .line 744
    invoke-direct {p0, v0, p3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$4;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$4;-><init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->chain(Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v1

    return-object v1
.end method

.method public forwardMessage(Ljava/lang/Object;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 4
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 849
    sget-boolean v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 851
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;-><init>(ZZLorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$1;)V

    .line 853
    .local v0, "res":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;, "Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture<Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;>;"
    check-cast p1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    .end local p1    # "msg":Ljava/lang/Object;
    invoke-direct {p0, p1, v0, v3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;Z)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    .line 855
    return-object v0
.end method

.method handlePingResponse()V
    .locals 2

    .prologue
    .line 455
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->lastPingRcvTime:J

    .line 456
    return-void
.end method

.method handleResponse(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;)V
    .locals 6
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->lastMsgRcvTime:J

    .line 468
    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->pendingReqs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->requestId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;

    .line 470
    .local v0, "fut":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;
    if-nez v0, :cond_0

    .line 471
    sget-object v2, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response for an unknown request is received, ignoring. [res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ses="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 498
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->forward()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->requestId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->removePending(J)V

    .line 480
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->onDone(Ljava/lang/Object;)V

    goto :goto_0

    .line 483
    :cond_1
    move-object v1, p1

    .line 485
    .local v1, "res0":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    instance-of v2, p1, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;

    if-eqz v2, :cond_2

    .line 486
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->marsh:Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    move-object v2, p1

    check-cast v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->body()[B

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;->unmarshal([B)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "res0":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    check-cast v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    .line 488
    .restart local v1    # "res0":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->requestId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->requestId(J)V

    .line 489
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->clientId()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->clientId(Ljava/util/UUID;)V

    .line 490
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->destinationId()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->destinationId(Ljava/util/UUID;)V

    .line 493
    :cond_2
    instance-of v2, v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;

    if-eqz v2, :cond_3

    .line 494
    check-cast v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;

    .end local v1    # "res0":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->handleClientResponse(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;)V

    goto :goto_0

    .line 496
    .restart local v1    # "res0":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    :cond_3
    sget-object v2, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported response type received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public node(Ljava/lang/String;ZZLjava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 3
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "inclAttrs"    # Z
    .param p3, "includeMetrics"    # Z
    .param p4, "destNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 799
    new-instance v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;

    invoke-direct {v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;-><init>()V

    .line 801
    .local v1, "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;
    new-instance v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$6;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$6;-><init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;)V

    .line 812
    .local v0, "fut":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->nodeIp(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeAttributes(Z)V

    .line 814
    invoke-virtual {v1, p3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeMetrics(Z)V

    .line 815
    invoke-virtual {v1, p4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->destinationId(Ljava/util/UUID;)V

    .line 817
    invoke-direct {p0, v1, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v2

    return-object v2
.end method

.method public node(Ljava/util/UUID;ZZLjava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 4
    .param p1, "id"    # Ljava/util/UUID;
    .param p2, "inclAttrs"    # Z
    .param p3, "inclMetrics"    # Z
    .param p4, "destNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "ZZ",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 757
    sget-boolean v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 759
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->refreshNodeReqs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;

    .line 762
    .local v0, "fut":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;
    if-eqz v0, :cond_2

    move-object v2, v0

    .line 792
    :cond_1
    :goto_0
    return-object v2

    .line 765
    :cond_2
    new-instance v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;

    invoke-direct {v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;-><init>()V

    .line 767
    .local v1, "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;
    new-instance v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$5;

    .end local v0    # "fut":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;
    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$5;-><init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;Ljava/util/UUID;)V

    .line 781
    .restart local v0    # "fut":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->refreshNodeReqs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    .line 784
    .local v2, "old":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    if-nez v2, :cond_1

    .line 787
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->nodeId(Ljava/util/UUID;)V

    .line 788
    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeAttributes(Z)V

    .line 789
    invoke-virtual {v1, p3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeMetrics(Z)V

    .line 790
    invoke-virtual {v1, p4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->destinationId(Ljava/util/UUID;)V

    .line 792
    invoke-direct {p0, v1, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v2

    goto :goto_0
.end method

.method public topology(ZZLjava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 3
    .param p1, "inclAttrs"    # Z
    .param p2, "inclMetrics"    # Z
    .param p3, "destNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 824
    new-instance v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;

    invoke-direct {v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;-><init>()V

    .line 826
    .local v1, "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;
    new-instance v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$7;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$7;-><init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;)V

    .line 839
    .local v0, "fut":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeAttributes(Z)V

    .line 840
    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeMetrics(Z)V

    .line 841
    invoke-virtual {v1, p3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->destinationId(Ljava/util/UUID;)V

    .line 843
    invoke-direct {p0, v1, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v2

    return-object v2
.end method
