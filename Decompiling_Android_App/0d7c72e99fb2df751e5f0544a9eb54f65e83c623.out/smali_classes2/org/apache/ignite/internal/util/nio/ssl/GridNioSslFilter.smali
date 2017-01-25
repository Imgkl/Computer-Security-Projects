.class public Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;
.super Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;
.source "GridNioSslFilter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final HANDSHAKE_FUT_META_KEY:I


# instance fields
.field private clientMode:Z

.field private directMode:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtos:[Ljava/lang/String;

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private needClientAuth:Z

.field private sslCtx:Ljavax/net/ssl/SSLContext;

.field private wantClientAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->$assertionsDisabled:Z

    .line 35
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->nextUniqueKey()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->HANDSHAKE_FUT_META_KEY:I

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p1, "sslCtx"    # Ljavax/net/ssl/SSLContext;
    .param p2, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 68
    const-string v0, "SSL filter"

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;-><init>(Ljava/lang/String;)V

    .line 70
    iput-object p2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 71
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->sslCtx:Ljavax/net/ssl/SSLContext;

    .line 72
    return-void
.end method

.method private checkMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/util/nio/GridNioException;
        }
    .end annotation

    .prologue
    .line 379
    instance-of v0, p2, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object type received (is SSL filter correctly placed in filter chain?) [ses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msgClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/nio/GridNioException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    check-cast p2, Ljava/nio/ByteBuffer;

    .end local p2    # "msg":Ljava/lang/Object;
    return-object p2
.end method

.method public static copy(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "original"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 410
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 412
    .local v0, "cp":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 414
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 416
    return-object v0
.end method

.method public static expandBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "original"    # Ljava/nio/ByteBuffer;
    .param p1, "cap"    # I

    .prologue
    .line 394
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 396
    .local v0, "res":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 398
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 400
    return-object v0
.end method

.method private shutdownSession(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 4
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "hnd"    # Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            "Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 332
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->closeOutbound()Z

    .line 334
    invoke-virtual {p2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->writeNetBuffer()Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->proceedSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v1

    return-object v1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljavax/net/ssl/SSLException;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to shutdown SSL session gracefully (will force close) [ex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private sslHandler(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;
    .locals 4
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 360
    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->SSL_HANDLER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->meta(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;

    .line 362
    .local v0, "hnd":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;
    if-nez v0, :cond_0

    .line 363
    new-instance v1, Lorg/apache/ignite/IgniteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to process incoming message (received message before SSL handler was created): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clientMode(Z)V
    .locals 0
    .param p1, "clientMode"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->clientMode:Z

    .line 79
    return-void
.end method

.method public directMode(Z)V
    .locals 0
    .param p1, "directMode"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->directMode:Z

    .line 87
    return-void
.end method

.method public directMode()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->directMode:Z

    return v0
.end method

.method public varargs enabledCipherSuites([Ljava/lang/String;)V
    .locals 0
    .param p1, "enabledCipherSuites"    # [Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->enabledCipherSuites:[Ljava/lang/String;

    .line 121
    return-void
.end method

.method public varargs enabledProtocols([Ljava/lang/String;)V
    .locals 0
    .param p1, "enabledProtos"    # [Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->enabledProtos:[Ljava/lang/String;

    .line 130
    return-void
.end method

.method public encrypt(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "input"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->sslHandler(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;

    move-result-object v0

    .line 218
    .local v0, "hnd":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->lock()V

    .line 221
    :try_start_0
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->isHandshakeFinished()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unlock()V

    throw v1

    .line 223
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->encrypt(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 226
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unlock()V

    return-object v1
.end method

.method public lock(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Z
    .locals 2
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->sslHandler(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;

    move-result-object v0

    .line 197
    .local v0, "hnd":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->lock()V

    .line 199
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->isHandshakeFinished()Z

    move-result v1

    return v1
.end method

.method public needClientAuth(Z)V
    .locals 0
    .param p1, "needClientAuth"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->needClientAuth:Z

    .line 112
    return-void
.end method

.method public onExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "ex"    # Lorg/apache/ignite/IgniteCheckedException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->proceedExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V

    .line 187
    return-void
.end method

.method public onMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    .locals 7
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->checkMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 273
    .local v3, "input":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->sslHandler(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;

    move-result-object v2

    .line 275
    .local v2, "hnd":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->lock()V

    .line 278
    :try_start_0
    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->messageReceived(Ljava/nio/ByteBuffer;)V

    .line 281
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->isHandshakeFinished()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->flushDeferredWrites()V

    .line 284
    :cond_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->getApplicationBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 286
    .local v0, "appBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 288
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->proceedMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V

    .line 291
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 293
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->isInboundDone()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->isOutboundDone()Z

    move-result v4

    if-nez v4, :cond_3

    .line 294
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 295
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote peer closed secure session (will close connection): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 297
    :cond_2
    invoke-direct {p0, p1, v2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->shutdownSession(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_3
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unlock()V

    .line 306
    return-void

    .line 300
    .end local v0    # "appBuf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Ljavax/net/ssl/SSLException;
    :try_start_1
    new-instance v4, Lorg/apache/ignite/internal/util/nio/GridNioException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to decode SSL data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/ignite/internal/util/nio/GridNioException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unlock()V

    throw v4
.end method

.method public onSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 2
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->sslHandler(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;

    move-result-object v0

    .line 312
    .local v0, "hnd":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->lock()V

    .line 315
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->shutdownSession(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 318
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unlock()V

    throw v1
.end method

.method public onSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 4
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->sslHandler(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;

    move-result-object v1

    .line 172
    .local v1, "hnd":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;
    :try_start_0
    sget v2, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->HANDSHAKE_FUT_META_KEY:I

    invoke-interface {p1, v2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->removeMeta(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;

    .line 174
    .local v0, "fut":Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;, "Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl<*>;"
    if-eqz v0, :cond_0

    .line 175
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "SSL handshake failed (connection closed)."

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;->onDone(Ljava/lang/Throwable;)Z

    .line 177
    :cond_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->proceedSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 182
    return-void

    .line 180
    .end local v0    # "fut":Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;, "Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl<*>;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->proceedSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    throw v2
.end method

.method public onSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->proceedSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 346
    return-void
.end method

.method public onSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 6
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote client connected, creating SSL handler and performing initial handshake: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 137
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->sslCtx:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    .line 139
    .local v1, "engine":Ljavax/net/ssl/SSLEngine;
    iget-boolean v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->clientMode:Z

    invoke-virtual {v1, v3}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 141
    iget-boolean v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->clientMode:Z

    if-nez v3, :cond_1

    .line 142
    iget-boolean v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->wantClientAuth:Z

    invoke-virtual {v1, v3}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    .line 144
    iget-boolean v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->needClientAuth:Z

    invoke-virtual {v1, v3}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    .line 147
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->enabledCipherSuites:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 148
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 150
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->enabledProtos:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 151
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->enabledProtos:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 154
    :cond_3
    :try_start_0
    new-instance v2, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {v2, p0, p1, v1, v3}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;-><init>(Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljavax/net/ssl/SSLEngine;Lorg/apache/ignite/IgniteLogger;)V

    .line 156
    .local v2, "hnd":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;
    sget-object v3, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->SSL_HANDLER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v3

    invoke-interface {p1, v3, v2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshake()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v2    # "hnd":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljavax/net/ssl/SSLException;
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start SSL handshake (will close inbound connection): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 163
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto :goto_0
.end method

.method public onSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 7
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 232
    iget-boolean v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->directMode:Z

    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->proceedSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v3

    .line 265
    :goto_0
    return-object v3

    .line 235
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->checkMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 237
    .local v2, "input":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    new-instance v3, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 240
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->sslHandler(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;

    move-result-object v1

    .line 242
    .local v1, "hnd":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->lock()V

    .line 245
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->isOutboundDone()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    new-instance v3, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send data (secure session was already closed): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unlock()V

    goto :goto_0

    .line 249
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->isHandshakeFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 250
    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->encrypt(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 252
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->writeNetBuffer()Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 265
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unlock()V

    goto :goto_0

    .line 255
    :cond_3
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 256
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write request received during handshake, scheduling deferred write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 258
    :cond_4
    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->deferredWrite(Ljava/nio/ByteBuffer;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 265
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unlock()V

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljavax/net/ssl/SSLException;
    :try_start_3
    new-instance v3, Lorg/apache/ignite/internal/util/nio/GridNioException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to encode SSL data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/ignite/internal/util/nio/GridNioException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unlock()V

    throw v3
.end method

.method public onSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->proceedSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 351
    return-void
.end method

.method public unlock(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->sslHandler(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unlock()V

    .line 207
    return-void
.end method

.method public wantClientAuth(Z)V
    .locals 0
    .param p1, "wantClientAuth"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->wantClientAuth:Z

    .line 103
    return-void
.end method
