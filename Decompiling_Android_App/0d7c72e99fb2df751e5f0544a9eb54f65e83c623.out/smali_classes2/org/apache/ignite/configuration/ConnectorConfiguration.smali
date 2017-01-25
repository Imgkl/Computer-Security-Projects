.class public Lorg/apache/ignite/configuration/ConnectorConfiguration;
.super Ljava/lang/Object;
.source "ConnectorConfiguration.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_IDLE_TIMEOUT:I = 0x1b58

.field public static final DFLT_KEEP_ALIVE_TIME:J = 0x0L

.field public static final DFLT_PORT_RANGE:I = 0x64

.field public static final DFLT_REST_CORE_THREAD_CNT:I

.field public static final DFLT_REST_MAX_THREAD_CNT:I

.field public static final DFLT_SOCK_BUF_SIZE:I = 0x8000

.field public static final DFLT_TCP_DIRECT_BUF:Z = false

.field public static final DFLT_TCP_NODELAY:Z = true

.field public static final DFLT_TCP_PORT:I = 0x2bcb

.field public static final DFLT_THREADPOOL_QUEUE_CAP:I = 0x7fffffff


# instance fields
.field private directBuf:Z

.field private host:Ljava/lang/String;

.field private idleTimeout:J

.field private jettyPath:Ljava/lang/String;

.field private msgInterceptor:Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;

.field private noDelay:Z

.field private port:I

.field private portRange:I

.field private rcvBufSize:I

.field private secretKey:Ljava/lang/String;

.field private selectorCnt:I

.field private sndBufSize:I

.field private sndQueueLimit:I

.field private sslClientAuth:Z

.field private sslCtxFactory:Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

.field private sslEnabled:Z

.field private threadPoolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/configuration/ConnectorConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->$assertionsDisabled:Z

    .line 46
    sget v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_PUBLIC_THREAD_CNT:I

    sput v0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->DFLT_REST_CORE_THREAD_CNT:I

    .line 49
    sget v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_PUBLIC_THREAD_CNT:I

    sput v0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->DFLT_REST_MAX_THREAD_CNT:I

    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x8000

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v0, 0x2bcb

    iput v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->port:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->noDelay:Z

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->directBuf:Z

    .line 79
    iput v1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sndBufSize:I

    .line 82
    iput v1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->rcvBufSize:I

    .line 88
    const/4 v0, 0x4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->selectorCnt:I

    .line 91
    const-wide/16 v0, 0x1b58

    iput-wide v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->idleTimeout:J

    .line 103
    const/16 v0, 0x64

    iput v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->portRange:I

    .line 106
    sget v0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->DFLT_REST_CORE_THREAD_CNT:I

    iput v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->threadPoolSize:I

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/configuration/ConnectorConfiguration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/ConnectorConfiguration;

    .prologue
    const v1, 0x8000

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v0, 0x2bcb

    iput v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->port:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->noDelay:Z

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->directBuf:Z

    .line 79
    iput v1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sndBufSize:I

    .line 82
    iput v1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->rcvBufSize:I

    .line 88
    const/4 v0, 0x4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->selectorCnt:I

    .line 91
    const-wide/16 v0, 0x1b58

    iput-wide v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->idleTimeout:J

    .line 103
    const/16 v0, 0x64

    iput v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->portRange:I

    .line 106
    sget v0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->DFLT_REST_CORE_THREAD_CNT:I

    iput v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->threadPoolSize:I

    .line 125
    sget-boolean v0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getMessageInterceptor()Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->msgInterceptor:Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;

    .line 128
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getThreadPoolSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->threadPoolSize:I

    .line 129
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getIdleTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->idleTimeout:J

    .line 130
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getJettyPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->jettyPath:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getPortRange()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->portRange:I

    .line 132
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->secretKey:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->isDirectBuffer()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->directBuf:Z

    .line 134
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->host:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->isNoDelay()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->noDelay:Z

    .line 136
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->port:I

    .line 137
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getReceiveBufferSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->rcvBufSize:I

    .line 138
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getSelectorCount()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->selectorCnt:I

    .line 139
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getSendBufferSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sndBufSize:I

    .line 140
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getSendQueueLimit()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sndQueueLimit:I

    .line 141
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->isSslClientAuth()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sslClientAuth:Z

    .line 142
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getSslContextFactory()Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sslCtxFactory:Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    .line 143
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->isSslEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sslEnabled:Z

    .line 144
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIdleTimeout()J
    .locals 2

    .prologue
    .line 371
    iget-wide v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->idleTimeout:J

    return-wide v0
.end method

.method public getJettyPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->jettyPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageInterceptor()Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->msgInterceptor:Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->port:I

    return v0
.end method

.method public getPortRange()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->portRange:I

    return v0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->rcvBufSize:I

    return v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectorCount()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->selectorCnt:I

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sndBufSize:I

    return v0
.end method

.method public getSendQueueLimit()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sndQueueLimit:I

    return v0
.end method

.method public getSslContextFactory()Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sslCtxFactory:Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    return-object v0
.end method

.method public getThreadPoolSize()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->threadPoolSize:I

    return v0
.end method

.method public isDirectBuffer()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->directBuf:Z

    return v0
.end method

.method public isNoDelay()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->noDelay:Z

    return v0
.end method

.method public isSslClientAuth()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sslClientAuth:Z

    return v0
.end method

.method public isSslEnabled()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sslEnabled:Z

    return v0
.end method

.method public setDirectBuffer(Z)V
    .locals 0
    .param p1, "directBuf"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->directBuf:Z

    .line 282
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->host:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setIdleTimeout(J)V
    .locals 1
    .param p1, "idleTimeout"    # J

    .prologue
    .line 381
    iput-wide p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->idleTimeout:J

    .line 382
    return-void
.end method

.method public setJettyPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "jettyPath"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->jettyPath:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setMessageInterceptor(Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;)V
    .locals 0
    .param p1, "interceptor"    # Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;

    .prologue
    .line 516
    iput-object p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->msgInterceptor:Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;

    .line 517
    return-void
.end method

.method public setNoDelay(Z)V
    .locals 0
    .param p1, "noDelay"    # Z

    .prologue
    .line 259
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->noDelay:Z

    .line 260
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 236
    iput p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->port:I

    .line 237
    return-void
.end method

.method public setPortRange(I)V
    .locals 0
    .param p1, "portRange"    # I

    .prologue
    .line 463
    iput p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->portRange:I

    .line 464
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 0
    .param p1, "rcvBufSize"    # I

    .prologue
    .line 319
    iput p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->rcvBufSize:I

    .line 320
    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "secretKey"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 180
    iput-object p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->secretKey:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setSelectorCount(I)V
    .locals 0
    .param p1, "selectorCnt"    # I

    .prologue
    .line 359
    iput p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->selectorCnt:I

    .line 360
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 0
    .param p1, "sndBufSize"    # I

    .prologue
    .line 300
    iput p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sndBufSize:I

    .line 301
    return-void
.end method

.method public setSendQueueLimit(I)V
    .locals 0
    .param p1, "sndQueueLimit"    # I

    .prologue
    .line 339
    iput p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sndQueueLimit:I

    .line 340
    return-void
.end method

.method public setSslClientAuth(Z)V
    .locals 0
    .param p1, "sslClientAuth"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sslClientAuth:Z

    .line 425
    return-void
.end method

.method public setSslContextFactory(Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;)V
    .locals 0
    .param p1, "sslCtxFactory"    # Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    .prologue
    .line 445
    iput-object p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sslCtxFactory:Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    .line 446
    return-void
.end method

.method public setSslEnabled(Z)V
    .locals 0
    .param p1, "sslEnabled"    # Z

    .prologue
    .line 405
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->sslEnabled:Z

    .line 406
    return-void
.end method

.method public setThreadPoolSize(I)V
    .locals 0
    .param p1, "threadPoolSize"    # I

    .prologue
    .line 484
    iput p1, p0, Lorg/apache/ignite/configuration/ConnectorConfiguration;->threadPoolSize:I

    .line 485
    return-void
.end method
