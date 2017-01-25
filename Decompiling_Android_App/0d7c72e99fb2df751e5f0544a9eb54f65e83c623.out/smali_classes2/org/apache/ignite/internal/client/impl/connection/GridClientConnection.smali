.class public abstract Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
.super Ljava/lang/Object;
.source "GridClientConnection.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final clientId:Ljava/util/UUID;

.field protected volatile closeReason:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

.field private cred:Ljava/lang/Object;

.field private srvAddr:Ljava/net/InetSocketAddress;

.field private sslCtx:Ljavax/net/ssl/SSLContext;

.field protected top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/util/UUID;Ljava/net/InetSocketAddress;Ljavax/net/ssl/SSLContext;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;Ljava/lang/Object;)V
    .locals 1
    .param p1, "clientId"    # Ljava/util/UUID;
    .param p2, "srvAddr"    # Ljava/net/InetSocketAddress;
    .param p3, "sslCtx"    # Ljavax/net/ssl/SSLContext;
    .param p4, "top"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;
    .param p5, "cred"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-boolean v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->clientId:Ljava/util/UUID;

    .line 66
    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->srvAddr:Ljava/net/InetSocketAddress;

    .line 67
    iput-object p4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    .line 68
    iput-object p3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->sslCtx:Ljavax/net/ssl/SSLContext;

    .line 69
    iput-object p5, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->cred:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public static encodeCacheFlags(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "flagSet":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientCacheFlag;>;"
    const/4 v0, 0x0

    .line 106
    .local v0, "bits":I
    sget-object v1, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->SKIP_STORE:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    or-int/lit8 v0, v0, 0x1

    .line 109
    :cond_0
    sget-object v1, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->SKIP_SWAP:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    or-int/lit8 v0, v0, 0x2

    .line 112
    :cond_1
    sget-object v1, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->SYNC_COMMIT:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    or-int/lit8 v0, v0, 0x4

    .line 115
    :cond_2
    sget-object v1, Lorg/apache/ignite/internal/client/GridClientCacheFlag;->INVALIDATE:Lorg/apache/ignite/internal/client/GridClientCacheFlag;

    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    or-int/lit8 v0, v0, 0x10

    .line 118
    :cond_3
    return v0
.end method


# virtual methods
.method public abstract cacheAppend(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
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
.end method

.method public abstract cacheCompareAndSet(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
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
.end method

.method public cacheGet(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
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
            "TK;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
            ">;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 152
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "flags":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/client/GridClientCacheFlag;>;"
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3, p4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->cacheGetAll(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v0

    .line 155
    .local v0, "res":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<Ljava/util/Map<TK;TV;>;>;"
    new-instance v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection$1;-><init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->chain(Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v1

    return-object v1
.end method

.method public abstract cacheGetAll(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
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
.end method

.method public abstract cacheMetrics(Ljava/lang/String;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
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
.end method

.method public abstract cachePrepend(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
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
.end method

.method public cachePut(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 1
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
    .line 136
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    .local p4, "flags":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/client/GridClientCacheFlag;>;"
    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4, p5}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->cachePutAll(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v0

    return-object v0
.end method

.method public abstract cachePutAll(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
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
.end method

.method public abstract cacheRemove(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
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
.end method

.method public abstract cacheRemoveAll(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
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
.end method

.method public abstract cacheReplace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
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
.end method

.method protected checkClosed(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;)V
    .locals 3
    .param p1, "reason"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridConnectionIdleClosedException;,
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 462
    sget-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->CONN_IDLE:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    if-ne p1, v0, :cond_0

    .line 463
    new-instance v0, Lorg/apache/ignite/internal/client/impl/connection/GridConnectionIdleClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection was closed by idle thread (will reconnect): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridConnectionIdleClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->FAILED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    if-ne p1, v0, :cond_1

    .line 467
    new-instance v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to perform request (connection failed before message is sent): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_1
    sget-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->CLIENT_CLOSED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    if-ne p1, v0, :cond_2

    .line 471
    new-instance v0, Lorg/apache/ignite/internal/client/GridClientClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to perform request (connection was closed before message is sent): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/client/GridClientClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_2
    return-void
.end method

.method abstract close(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;Z)V
.end method

.method abstract closeIfIdle(J)Z
.end method

.method protected credentials()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->cred:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract execute(Ljava/lang/String;Ljava/lang/Object;Ljava/util/UUID;Z)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
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
.end method

.method public abstract forwardMessage(Ljava/lang/Object;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method protected getCloseReasonAsException(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;Ljava/lang/Throwable;)Lorg/apache/ignite/internal/client/GridClientException;
    .locals 3
    .param p1, "reason"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 485
    sget-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->CONN_IDLE:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    if-ne p1, v0, :cond_0

    .line 486
    new-instance v0, Lorg/apache/ignite/internal/client/impl/connection/GridConnectionIdleClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection was closed by idle thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridConnectionIdleClosedException;-><init>(Ljava/lang/String;)V

    .line 495
    :goto_0
    return-object v0

    .line 488
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->FAILED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    if-ne p1, v0, :cond_1

    .line 489
    new-instance v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to perform request (connection failed): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 492
    :cond_1
    sget-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->CLIENT_CLOSED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    if-ne p1, v0, :cond_2

    .line 493
    new-instance v0, Lorg/apache/ignite/internal/client/GridClientClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to perform request (client was closed): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->serverAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/client/GridClientClosedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCloseReasonMessage(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p1, "reason"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 504
    sget-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->CONN_IDLE:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    if-ne p1, v0, :cond_0

    .line 505
    const-string v0, "Connection was closed by idle thread"

    .line 513
    :goto_0
    return-object v0

    .line 507
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->FAILED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    if-ne p1, v0, :cond_2

    .line 508
    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection failed, cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "Connection failed"

    goto :goto_0

    .line 510
    :cond_2
    sget-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->CLIENT_CLOSED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    if-ne p1, v0, :cond_3

    .line 511
    const-string v0, "Client was closed"

    goto :goto_0

    .line 513
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->closeReason:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected metricsMapToMetrics(Ljava/util/Map;)Lorg/apache/ignite/internal/client/GridClientDataMetrics;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;)",
            "Lorg/apache/ignite/internal/client/GridClientDataMetrics;"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, "metricsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Number;>;"
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;-><init>()V

    .line 440
    .local v0, "metrics":Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;
    const-string v1, "createTime"

    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->safeLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->createTime(J)V

    .line 441
    const-string v1, "readTime"

    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->safeLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->readTime(J)V

    .line 442
    const-string v1, "writeTime"

    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->safeLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->writeTime(J)V

    .line 443
    const-string v1, "reads"

    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->safeLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->reads(I)V

    .line 444
    const-string v1, "writes"

    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->safeLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->writes(I)V

    .line 445
    const-string v1, "hits"

    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->safeLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->hits(I)V

    .line 446
    const-string v1, "misses"

    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->safeLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/client/impl/GridClientDataMetricsAdapter;->misses(I)V

    .line 448
    return-object v0
.end method

.method public abstract node(Ljava/lang/String;ZZLjava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;
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
.end method

.method public abstract node(Ljava/util/UUID;ZZLjava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;
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
.end method

.method protected safeDouble(Ljava/util/Map;Ljava/lang/String;)D
    .locals 4
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Number;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 425
    .local v0, "val":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 426
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 428
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method protected safeLong(Ljava/util/Map;Ljava/lang/String;)J
    .locals 4
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Number;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 409
    .local v0, "val":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 410
    const-wide/16 v2, -0x1

    .line 412
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public serverAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->srvAddr:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method protected sslContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->sslCtx:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public abstract topology(ZZLjava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .param p3    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
.end method
