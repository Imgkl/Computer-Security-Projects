.class public Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;
.super Lorg/apache/ignite/internal/util/nio/GridNioServerListenerAdapter;
.source "GridTcpRestNioListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/nio/GridNioServerListenerAdapter",
        "<",
        "Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

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

.field private static final cacheCmdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hnd:Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private marshMap:Ljava/util/Map;
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

.field private final marshMapLatch:Ljava/util/concurrent/CountDownLatch;

.field private memcachedLsnr:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;

.field private proto:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 42
    const-class v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->$assertionsDisabled:Z

    .line 44
    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->cacheCmdMap:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->SUPP_VERS:Ljava/util/Collection;

    .line 54
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->cacheCmdMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->PUT:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PUT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->cacheCmdMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->PUT_ALL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PUT_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->cacheCmdMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->GET:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_GET:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->cacheCmdMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->GET_ALL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_GET_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->cacheCmdMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->RMV:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REMOVE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->cacheCmdMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->RMV_ALL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REMOVE_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->cacheCmdMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->REPLACE:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REPLACE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->cacheCmdMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->CAS:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_CAS:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->cacheCmdMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->METRICS:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_METRICS:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->cacheCmdMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->APPEND:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_APPEND:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->cacheCmdMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->PREPEND:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PREPEND:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->SUPP_VERS:Ljava/util/Collection;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 2
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p2, "proto"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;
    .param p3, "hnd"    # Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;
    .param p4, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServerListenerAdapter;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->marshMapLatch:Ljava/util/concurrent/CountDownLatch;

    .line 98
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;

    invoke-direct {v0, p1, p3, p4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;-><init>(Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;Lorg/apache/ignite/internal/GridKernalContext;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->memcachedLsnr:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;

    .line 100
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->log:Lorg/apache/ignite/IgniteLogger;

    .line 101
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->proto:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;

    .line 102
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->hnd:Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private createRestRequest(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;)Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    .locals 9
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 233
    const/4 v2, 0x0

    .line 235
    .local v2, "restReq":Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    instance-of v6, p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;

    if-eqz v6, :cond_2

    move-object v0, p2

    .line 236
    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;

    .line 238
    .local v0, "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;
    new-instance v2, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;

    .end local v2    # "restReq":Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    invoke-direct {v2}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;-><init>()V

    .line 240
    .restart local v2    # "restReq":Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->NOOP:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command(Lorg/apache/ignite/internal/processors/rest/GridRestCommand;)V

    .line 242
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;->credentials()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->credentials(Ljava/lang/Object;)V

    .line 324
    .end local v0    # "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAuthenticationRequest;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 325
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->destinationId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->destinationId(Ljava/util/UUID;)V

    .line 326
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->clientId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId(Ljava/util/UUID;)V

    .line 327
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->sessionToken()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->sessionToken([B)V

    .line 328
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->address(Ljava/net/InetSocketAddress;)V

    .line 331
    :cond_1
    return-object v2

    .line 244
    :cond_2
    instance-of v6, p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;

    if-eqz v6, :cond_4

    move-object v0, p2

    .line 245
    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;

    .line 247
    .local v0, "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;
    new-instance v1, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;

    invoke-direct {v1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;-><init>()V

    .line 249
    .local v1, "restCacheReq":Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->cacheName(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->cacheFlagsOn()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->cacheFlags(I)V

    .line 252
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->key()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->key(Ljava/lang/Object;)V

    .line 253
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->value()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->value(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->value2()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->value2(Ljava/lang/Object;)V

    .line 256
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->values()Ljava/util/Map;

    move-result-object v5

    .line 257
    .local v5, "vals":Ljava/util/Map;
    if-eqz v5, :cond_3

    .line 258
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->values(Ljava/util/Map;)V

    .line 260
    :cond_3
    sget-object v6, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->cacheCmdMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;->operation()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-virtual {v1, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->command(Lorg/apache/ignite/internal/processors/rest/GridRestCommand;)V

    .line 262
    move-object v2, v1

    .line 263
    goto :goto_0

    .line 264
    .end local v0    # "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;
    .end local v1    # "restCacheReq":Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;
    .end local v5    # "vals":Ljava/util/Map;
    :cond_4
    instance-of v6, p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    if-eqz v6, :cond_5

    move-object v0, p2

    .line 265
    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;

    .line 267
    .local v0, "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;
    new-instance v2, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    .end local v2    # "restReq":Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;-><init>(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;)V

    .line 269
    .restart local v2    # "restReq":Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    sget-object v6, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$2;->$SwitchMap$org$apache$ignite$internal$processors$rest$client$message$GridClientCacheQueryRequest$GridQueryOperation:[I

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->operation()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 285
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown query operation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;->operation()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 271
    :pswitch_0
    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_QUERY_EXECUTE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command(Lorg/apache/ignite/internal/processors/rest/GridRestCommand;)V

    goto/16 :goto_0

    .line 276
    :pswitch_1
    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_QUERY_FETCH:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command(Lorg/apache/ignite/internal/processors/rest/GridRestCommand;)V

    goto/16 :goto_0

    .line 280
    :pswitch_2
    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_QUERY_REBUILD_INDEXES:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command(Lorg/apache/ignite/internal/processors/rest/GridRestCommand;)V

    goto/16 :goto_0

    .line 288
    .end local v0    # "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;
    :cond_5
    instance-of v6, p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;

    if-eqz v6, :cond_6

    move-object v0, p2

    .line 289
    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;

    .line 291
    .local v0, "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;
    new-instance v3, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;

    invoke-direct {v3}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;-><init>()V

    .line 293
    .local v3, "restTaskReq":Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;
    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->EXE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-virtual {v3, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->command(Lorg/apache/ignite/internal/processors/rest/GridRestCommand;)V

    .line 295
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->taskName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->taskName(Ljava/lang/String;)V

    .line 296
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->argument()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->params(Ljava/util/List;)V

    .line 298
    move-object v2, v3

    .line 299
    goto/16 :goto_0

    .line 300
    .end local v0    # "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;
    .end local v3    # "restTaskReq":Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;
    :cond_6
    instance-of v6, p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;

    if-eqz v6, :cond_0

    move-object v0, p2

    .line 301
    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;

    .line 303
    .local v0, "req":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;

    invoke-direct {v4}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;-><init>()V

    .line 305
    .local v4, "restTopReq":Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeMetrics()Z

    move-result v6

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->includeMetrics(Z)V

    .line 306
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->includeAttributes()Z

    move-result v6

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->includeAttributes(Z)V

    .line 308
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->nodeId()Ljava/util/UUID;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 309
    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->NODE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->command(Lorg/apache/ignite/internal/processors/rest/GridRestCommand;)V

    .line 311
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->nodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->nodeId(Ljava/util/UUID;)V

    .line 321
    :goto_1
    move-object v2, v4

    goto/16 :goto_0

    .line 313
    :cond_7
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->nodeIp()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 314
    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->NODE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->command(Lorg/apache/ignite/internal/processors/rest/GridRestCommand;)V

    .line 316
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTopologyRequest;->nodeIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->nodeIp(Ljava/lang/String;)V

    goto :goto_1

    .line 319
    :cond_8
    sget-object v6, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->TOPOLOGY:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->command(Lorg/apache/ignite/internal/processors/rest/GridRestCommand;)V

    goto :goto_1

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method marshallers(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "marshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Byte;Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->marshMap:Ljava/util/Map;

    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->marshMapLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 114
    return-void
.end method

.method public onConnected(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 119
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
    .line 123
    if-eqz p2, :cond_0

    .line 124
    instance-of v0, p2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->log:Lorg/apache/ignite/IgniteLogger;

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

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closed client session due to exception [ses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg="

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
    .line 42
    check-cast p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;)V

    return-void
.end method

.method public onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;)V
    .locals 11
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    .prologue
    const/16 v10, 0x5d

    .line 134
    instance-of v5, p2, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    if-eqz v5, :cond_0

    .line 135
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->memcachedLsnr:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;

    check-cast p2, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    .end local p2    # "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    invoke-virtual {v5, p1, p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpMemcachedNioListener;->onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)V

    .line 223
    :goto_0
    return-void

    .line 137
    .restart local p2    # "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    :cond_0
    instance-of v5, p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPingPacket;

    if-eqz v5, :cond_1

    .line 138
    invoke-interface {p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto :goto_0

    .line 139
    :cond_1
    instance-of v5, p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;

    if-eqz v5, :cond_5

    move-object v0, p2

    .line 140
    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;

    .line 142
    .local v0, "hs":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->version()S

    move-result v4

    .line 144
    .local v4, "ver":S
    sget-object v5, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->SUPP_VERS:Ljava/util/Collection;

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 145
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client protocol version is not supported [ses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ver="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", supported="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->SUPP_VERS:Ljava/util/Collection;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 149
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->marshallerId()B

    move-result v2

    .line 154
    .local v2, "marshId":B
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->marshMapLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 155
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->marshMapLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->awaitQuiet(Ljava/util/concurrent/CountDownLatch;)V

    .line 157
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->marshMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    .line 159
    .local v1, "marsh":Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;
    if-nez v1, :cond_4

    .line 160
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client marshaller ID is invalid. Note that .NET and C++ clients are supported only in enterprise edition [ses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", marshId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 163
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto/16 :goto_0

    .line 166
    :cond_4
    sget-object v5, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MARSHALLER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v5

    invoke-interface {p1, v5, v1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v5, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;->OK:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;

    invoke-interface {p1, v5}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto/16 :goto_0

    .line 173
    .end local v0    # "hs":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;
    .end local v1    # "marsh":Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;
    .end local v2    # "marshId":B
    .end local v4    # "ver":S
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->createRestRequest(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;)Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    move-result-object v3

    .line 175
    .local v3, "req":Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    if-eqz v3, :cond_6

    .line 176
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->hnd:Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;

    invoke-interface {v5, v3}, Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;->handleAsync(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v5

    new-instance v6, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$1;

    invoke-direct {v6, p0, p2, p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$1;-><init>(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    invoke-interface {v5, v6}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto/16 :goto_0

    .line 219
    :cond_6
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to process client request (unknown packet type) [ses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 340
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 341
    return-void
.end method
