.class public abstract Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;
.super Ljava/lang/Object;
.source "GridTcpRouterNioListenerAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/nio/GridNioServerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/nio/GridNioServerListener",
        "<",
        "Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final SUPP_VERS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final client:Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field protected final marshMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->SUPP_VERS:Ljava/util/Collection;

    .line 45
    sget-object v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->SUPP_VERS:Ljava/util/Collection;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;)V
    .locals 3
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p2, "client"    # Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 64
    iput-object p2, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->client:Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->marshMap:Ljava/util/Map;

    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->marshMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;

    invoke-direct {v2}, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->marshMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/client/marshaller/jdk/GridClientJdkMarshaller;

    invoke-direct {v2}, Lorg/apache/ignite/internal/client/marshaller/jdk/GridClientJdkMarshaller;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->init()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;Lorg/apache/ignite/internal/client/GridClientException;Ljava/util/UUID;Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;
    .param p1, "x1"    # Lorg/apache/ignite/internal/client/GridClientException;
    .param p2, "x2"    # Ljava/util/UUID;
    .param p3, "x3"    # Ljava/lang/Long;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->makeFailureResponse(Lorg/apache/ignite/internal/client/GridClientException;Ljava/util/UUID;Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;

    move-result-object v0

    return-object v0
.end method

.method private makeFailureResponse(Lorg/apache/ignite/internal/client/GridClientException;Ljava/util/UUID;Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;
    .locals 4
    .param p1, "e"    # Lorg/apache/ignite/internal/client/GridClientException;
    .param p2, "clientId"    # Ljava/util/UUID;
    .param p3, "reqId"    # Ljava/lang/Long;

    .prologue
    .line 191
    iget-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Failed to process message on router."

    invoke-static {v1, v2, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 193
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;-><init>()V

    .line 195
    .local v0, "res":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->clientId(Ljava/util/UUID;)V

    .line 196
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->requestId(J)V

    .line 197
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->successStatus(I)V

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to process message on router [exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->errorMessage(Ljava/lang/String;)V

    .line 201
    return-object v0
.end method


# virtual methods
.method protected abstract init()V
.end method

.method public onConnected(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 81
    return-void
.end method

.method public onDisconnected(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "e"    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    if-eqz p2, :cond_0

    .line 86
    instance-of v0, p2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to process request from remote client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closed client session due to exception [ses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;)V

    return-void
.end method

.method public onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;)V
    .locals 17
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    .prologue
    .line 96
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;

    if-eqz v2, :cond_0

    move-object/from16 v12, p2

    .line 97
    check-cast v12, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;

    .line 99
    .local v12, "routerMsg":Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;->clientId()Ljava/util/UUID;

    move-result-object v7

    .line 100
    .local v7, "clientId":Ljava/util/UUID;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;->requestId()J

    move-result-wide v4

    .line 103
    .local v4, "reqId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->client:Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;->destinationId()Ljava/util/UUID;

    move-result-object v6

    sget-object v2, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MARSHALLER_ID:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->meta(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v3, v12, v6, v2}, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->forwardMessage(Ljava/lang/Object;Ljava/util/UUID;B)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v14

    const/4 v2, 0x1

    new-array v15, v2, [Lorg/apache/ignite/internal/client/GridClientFutureListener;

    const/16 v16, 0x0

    new-instance v2, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter$1;

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter$1;-><init>(Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;JLorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/util/UUID;)V

    aput-object v2, v15, v16

    invoke-virtual {v14, v15}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->listen([Lorg/apache/ignite/internal/client/GridClientFutureListener;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    .end local v4    # "reqId":J
    .end local v7    # "clientId":Ljava/util/UUID;
    .end local v12    # "routerMsg":Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;
    :goto_0
    return-void

    .line 119
    .restart local v4    # "reqId":J
    .restart local v7    # "clientId":Ljava/util/UUID;
    .restart local v12    # "routerMsg":Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;
    :catch_0
    move-exception v8

    .line 120
    .local v8, "e":Lorg/apache/ignite/internal/client/GridClientException;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7, v2}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->makeFailureResponse(Lorg/apache/ignite/internal/client/GridClientException;Ljava/util/UUID;Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto :goto_0

    .line 122
    .end local v8    # "e":Lorg/apache/ignite/internal/client/GridClientException;
    :catch_1
    move-exception v8

    .line 123
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message forwarding was interrupted (will ignore last message): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Message forwarding was interrupted."

    invoke-static {v2, v3, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    .end local v4    # "reqId":J
    .end local v7    # "clientId":Ljava/util/UUID;
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "routerMsg":Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;
    :cond_0
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;

    if-eqz v2, :cond_3

    move-object/from16 v9, p2

    .line 132
    check-cast v9, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;

    .line 134
    .local v9, "hs":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->version()S

    move-result v13

    .line 136
    .local v13, "ver":S
    sget-object v2, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->SUPP_VERS:Ljava/util/Collection;

    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Client protocol version is not supported [ses="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", ver="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", supported="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->SUPP_VERS:Ljava/util/Collection;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x5d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 141
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto/16 :goto_0

    .line 144
    :cond_1
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->marshallerId()B

    move-result v11

    .line 146
    .local v11, "marshId":B
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->marshMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    .line 148
    .local v10, "marsh":Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;
    if-nez v10, :cond_2

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Client marshaller ID is invalid. Note that .NET and C++ clients are supported only in enterprise edition [ses="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", marshId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x5d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 152
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto/16 :goto_0

    .line 155
    :cond_2
    sget-object v2, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MARSHALLER_ID:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v2

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v2, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MARSHALLER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;->OK:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto/16 :goto_0

    .line 162
    .end local v9    # "hs":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;
    .end local v10    # "marsh":Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;
    .end local v11    # "marshId":B
    .end local v13    # "ver":S
    :cond_3
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPingPacket;

    if-eqz v2, :cond_4

    .line 163
    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPingPacket;->PING_MESSAGE:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto/16 :goto_0

    .line 165
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported input message: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 2
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Closing NIO session because of idle."

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 179
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 180
    return-void
.end method

.method public onSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 2
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Closing NIO session because of write timeout."

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 172
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 173
    return-void
.end method
