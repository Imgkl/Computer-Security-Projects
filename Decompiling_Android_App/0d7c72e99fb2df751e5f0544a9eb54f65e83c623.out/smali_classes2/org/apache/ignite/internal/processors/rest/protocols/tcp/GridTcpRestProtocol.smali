.class public Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;
.super Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;
.source "GridTcpRestProtocol.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final jdkMarshaller:Lorg/apache/ignite/marshaller/Marshaller;

.field private lsnr:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 54
    new-instance v0, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

    invoke-direct {v0}, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->jdkMarshaller:Lorg/apache/ignite/marshaller/Marshaller;

    .line 62
    return-void
.end method

.method private resolveRestTcpHost(Lorg/apache/ignite/configuration/IgniteConfiguration;)Ljava/net/InetAddress;
    .locals 2
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_0
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveLocalHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method private startTcpServer(Ljava/net/InetAddress;ILorg/apache/ignite/internal/util/nio/GridNioServerListener;Lorg/apache/ignite/internal/util/nio/GridNioParser;Ljavax/net/ssl/SSLContext;Lorg/apache/ignite/configuration/ConnectorConfiguration;)Z
    .locals 8
    .param p1, "hostAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p4, "parser"    # Lorg/apache/ignite/internal/util/nio/GridNioParser;
    .param p5, "sslCtx"    # Ljavax/net/ssl/SSLContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "cfg"    # Lorg/apache/ignite/configuration/ConnectorConfiguration;
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
            "Ljavax/net/ssl/SSLContext;",
            "Lorg/apache/ignite/configuration/ConnectorConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 201
    .local p3, "lsnr":Lorg/apache/ignite/internal/util/nio/GridNioServerListener;, "Lorg/apache/ignite/internal/util/nio/GridNioServerListener<Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;>;"
    :try_start_0
    new-instance v1, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v6, 0x0

    invoke-direct {v1, p4, v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioCodecFilter;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioParser;Lorg/apache/ignite/IgniteLogger;Z)V

    .line 205
    .local v1, "codec":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    if-eqz p5, :cond_0

    .line 206
    new-instance v4, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {v4, p5, v5}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;-><init>(Ljavax/net/ssl/SSLContext;Lorg/apache/ignite/IgniteLogger;)V

    .line 208
    .local v4, "sslFilter":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->directMode(Z)V

    .line 210
    invoke-virtual {p6}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->isSslClientAuth()Z

    move-result v0

    .line 212
    .local v0, "auth":Z
    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->wantClientAuth(Z)V

    .line 214
    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->needClientAuth(Z)V

    .line 216
    const/4 v5, 0x2

    new-array v3, v5, [Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 224
    .end local v0    # "auth":Z
    .end local v4    # "sslFilter":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;
    .local v3, "filters":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    :goto_0
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->builder()Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->address(Ljava/net/InetAddress;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->port(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->listener(Lorg/apache/ignite/internal/util/nio/GridNioServerListener;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->logger(Lorg/apache/ignite/IgniteLogger;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v5

    invoke-virtual {p6}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getSelectorCount()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->selectorCount(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->gridName(Ljava/lang/String;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v5

    invoke-virtual {p6}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->isNoDelay()Z

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->tcpNoDelay(Z)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v5

    invoke-virtual {p6}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->isDirectBuffer()Z

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->directBuffer(Z)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->byteOrder(Ljava/nio/ByteOrder;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v5

    invoke-virtual {p6}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getSendBufferSize()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->socketSendBufferSize(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v5

    invoke-virtual {p6}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getReceiveBufferSize()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->socketReceiveBufferSize(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v5

    invoke-virtual {p6}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getSendQueueLimit()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->sendQueueLimit(I)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->filters([Lorg/apache/ignite/internal/util/nio/GridNioFilter;)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->directMode(Z)Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$Builder;->build()Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .line 241
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {p6}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getIdleTimeout()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->idleTimeout(J)V

    .line 243
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->start()V

    .line 245
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->ports()Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/spi/IgnitePortProtocol;->TCP:Lorg/apache/ignite/spi/IgnitePortProtocol;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, p2, v6, v7}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->registerPort(ILorg/apache/ignite/spi/IgnitePortProtocol;Ljava/lang/Class;)V

    .line 247
    const/4 v5, 0x1

    .line 253
    .end local v1    # "codec":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .end local v3    # "filters":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    :goto_1
    return v5

    .line 222
    .restart local v1    # "codec":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    :cond_0
    const/4 v5, 0x1

    new-array v3, v5, [Lorg/apache/ignite/internal/util/nio/GridNioFilter;

    const/4 v5, 0x0

    aput-object v1, v3, v5
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "filters":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    goto/16 :goto_0

    .line 249
    .end local v1    # "codec":Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .end local v3    # "filters":[Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    :catch_0
    move-exception v2

    .line 250
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " protocol on port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 253
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected getAddressPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    const-string v0, "org.apache.ignite.rest.tcp.addrs"

    return-object v0
.end method

.method protected getHostNamePropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const-string v0, "org.apache.ignite.rest.tcp.host.names"

    return-object v0
.end method

.method protected getPortPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const-string v0, "org.apache.ignite.rest.tcp.port"

    return-object v0
.end method

.method jdkMarshaller()Lorg/apache/ignite/marshaller/Marshaller;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->jdkMarshaller:Lorg/apache/ignite/marshaller/Marshaller;

    return-object v0
.end method

.method marshaller(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;
    .locals 2
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 78
    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MARSHALLER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->meta(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    .line 80
    .local v0, "marsh":Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 82
    :cond_0
    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "TCP binary"

    return-object v0
.end method

.method public onKernalStart()V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->onKernalStart()V

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v0, "marshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Byte;Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;

    invoke-direct {v2}, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/client/marshaller/jdk/GridClientJdkMarshaller;

    invoke-direct {v2}, Lorg/apache/ignite/internal/client/marshaller/jdk/GridClientJdkMarshaller;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->lsnr:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->marshallers(Ljava/util/Map;)V

    .line 156
    return-void
.end method

.method public start(Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;)V
    .locals 11
    .param p1, "hnd"    # Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 93
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v6

    .line 97
    .local v6, "cfg":Lorg/apache/ignite/configuration/ConnectorConfiguration;
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez v6, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->log:Lorg/apache/ignite/IgniteLogger;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-direct {v0, v1, p0, p1, v3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;-><init>(Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;Lorg/apache/ignite/internal/GridKernalContext;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->lsnr:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;

    .line 101
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;-><init>(Z)V

    .line 104
    .local v4, "parser":Lorg/apache/ignite/internal/util/nio/GridNioParser;
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->resolveRestTcpHost(Lorg/apache/ignite/configuration/IgniteConfiguration;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->host:Ljava/net/InetAddress;

    .line 106
    const/4 v5, 0x0

    .line 108
    .local v5, "sslCtx":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v6}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->isSslEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {v6}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getSslContextFactory()Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    move-result-object v8

    .line 111
    .local v8, "factory":Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;
    if-nez v8, :cond_3

    .line 113
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "SSL is enabled, but SSL context factory is not specified."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    .end local v5    # "sslCtx":Ljavax/net/ssl/SSLContext;
    .end local v8    # "factory":Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;
    :catch_0
    move-exception v7

    .line 135
    .local v7, "e":Ljavax/net/ssl/SSLException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " protocol on port "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->port:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to start "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " protocol on port "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v10, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->port:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ". Check if SSL context factory is "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "properly configured."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .end local v7    # "e":Ljavax/net/ssl/SSLException;
    :cond_2
    :goto_0
    return-void

    .line 115
    .restart local v5    # "sslCtx":Ljavax/net/ssl/SSLContext;
    .restart local v8    # "factory":Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;
    :cond_3
    :try_start_1
    invoke-interface {v8}, Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;->createSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v5

    .line 118
    .end local v8    # "factory":Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;
    :cond_4
    invoke-virtual {v6}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getPort()I

    move-result v0

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getPortRange()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v9, v0, -0x1

    .line 120
    .local v9, "lastPort":I
    invoke-virtual {v6}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getPort()I

    move-result v2

    .local v2, "port0":I
    :goto_1
    if-gt v2, v9, :cond_6

    .line 121
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->host:Ljava/net/InetAddress;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->lsnr:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->startTcpServer(Ljava/net/InetAddress;ILorg/apache/ignite/internal/util/nio/GridNioServerListener;Lorg/apache/ignite/internal/util/nio/GridNioParser;Ljavax/net/ssl/SSLContext;Lorg/apache/ignite/configuration/ConnectorConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    iput v2, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->port:I

    .line 124
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 139
    .end local v2    # "port0":I
    .end local v5    # "sslCtx":Ljavax/net/ssl/SSLContext;
    .end local v9    # "lastPort":I
    :catch_1
    move-exception v7

    .line 140
    .local v7, "e":Ljava/io/IOException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " protocol on port "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->port:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to start "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " protocol on port "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v10, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->port:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ". "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "Check restTcpHost configuration property."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 120
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v2    # "port0":I
    .restart local v5    # "sslCtx":Ljavax/net/ssl/SSLContext;
    .restart local v9    # "lastPort":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 131
    :cond_6
    :try_start_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start TCP binary REST server (possibly all ports in range are in use) [firstPort="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getPort()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", lastPort="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", host="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->host:Ljava/net/InetAddress;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->ports()Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->deregisterPorts(Ljava/lang/Class;)V

    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->srv:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->stop()V

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestProtocol;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 168
    :cond_1
    return-void
.end method
