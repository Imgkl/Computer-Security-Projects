.class Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "GridNioSslHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$1;,
        Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$WriteRequest;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private appBuf:Ljava/nio/ByteBuffer;

.field private deferredWriteQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$WriteRequest;",
            ">;"
        }
    .end annotation
.end field

.field private handshakeBuf:Ljava/nio/ByteBuffer;

.field private handshakeFinished:Z

.field private handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field private inNetBuf:Ljava/nio/ByteBuffer;

.field private initHandshakeComplete:Z

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private outNetBuf:Ljava/nio/ByteBuffer;

.field private parent:Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

.field private ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

.field private sslEngine:Ljavax/net/ssl/SSLEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljavax/net/ssl/SSLEngine;Lorg/apache/ignite/IgniteLogger;)V
    .locals 4
    .param p1, "parent"    # Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;
    .param p2, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p4, "log"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 66
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeBuf:Ljava/nio/ByteBuffer;

    .line 75
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->deferredWriteQueue:Ljava/util/Queue;

    .line 88
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 89
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 90
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p3, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 91
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez p4, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 93
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->parent:Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    .line 94
    iput-object p2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .line 95
    iput-object p4, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    .line 97
    iput-object p3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    .line 99
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 101
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 104
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v2

    add-int/lit8 v1, v2, 0x32

    .line 106
    .local v1, "netBufSize":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    .line 107
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    .line 110
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 113
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 115
    .local v0, "appBufSize":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->appBuf:Ljava/nio/ByteBuffer;

    .line 117
    invoke-interface {p4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started SSL session [netBufSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", appBufSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 119
    :cond_4
    return-void
.end method

.method private checkStatus(Ljavax/net/ssl/SSLEngineResult;)V
    .locals 4
    .param p1, "res"    # Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    .line 528
    .local v0, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_0

    .line 529
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unwrap incoming data (SSL engine error) [ses"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :cond_0
    return-void
.end method

.method private renegotiateIfNeeded(Ljavax/net/ssl/SSLEngineResult;)V
    .locals 3
    .param p1, "res"    # Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_1

    .line 507
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 509
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Renegotiation requested [status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", handshakeStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 513
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeFinished:Z

    .line 515
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshake()V

    .line 517
    :cond_1
    return-void
.end method

.method private runTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 5

    .prologue
    const/16 v4, 0x5d

    .line 566
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_1

    .line 567
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running SSL engine task [task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 570
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 573
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 574
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished running SSL engine tasks [handshakeStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 577
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    return-object v1
.end method

.method private unwrap0()Ljavax/net/ssl/SSLEngineResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 543
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->appBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 545
    .local v0, "res":Ljavax/net/ssl/SSLEngineResult;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unwrapped raw data [status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", handshakeStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 549
    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_2

    .line 550
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->appBuf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->appBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->expandBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->appBuf:Ljava/nio/ByteBuffer;

    .line 552
    :cond_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_5

    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeFinished:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v1, v2, :cond_0

    :cond_4
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v1, v2, :cond_0

    .line 555
    :cond_5
    return-object v0
.end method

.method private unwrapData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unwrapping received data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 449
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 451
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unwrap0()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 454
    .local v0, "res":Ljavax/net/ssl/SSLEngineResult;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 456
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->checkStatus(Ljavax/net/ssl/SSLEngineResult;)V

    .line 458
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->renegotiateIfNeeded(Ljavax/net/ssl/SSLEngineResult;)V

    .line 459
    return-void
.end method

.method private unwrapHandshake()Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 470
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 472
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unwrap0()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 473
    .local v0, "res":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 475
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->checkStatus(Ljavax/net/ssl/SSLEngineResult;)V

    .line 479
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unwrap0()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 485
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 487
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->renegotiateIfNeeded(Ljavax/net/ssl/SSLEngineResult;)V

    .line 493
    :goto_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    return-object v1

    .line 491
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0
.end method


# virtual methods
.method closeOutbound()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 403
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 405
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 406
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 408
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 410
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeBuf:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 412
    .local v0, "res":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v1, v2, :cond_1

    .line 413
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect SSL engine status after closeOutbound call [status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", handshakeStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 418
    const/4 v1, 0x1

    .line 421
    .end local v0    # "res":Ljavax/net/ssl/SSLEngineResult;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method deferredWrite(Ljava/nio/ByteBuffer;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 368
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->isHeldByCurrentThread()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 370
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;-><init>()V

    .line 372
    .local v1, "fut":Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->copy(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 374
    .local v0, "cp":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->deferredWriteQueue:Ljava/util/Queue;

    new-instance v3, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$WriteRequest;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$WriteRequest;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;Ljava/nio/ByteBuffer;Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$1;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 376
    return-object v1
.end method

.method encrypt(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x5d

    .line 296
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeFinished:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 297
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->isHeldByCurrentThread()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 301
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 304
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 305
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int v0, v2, v3

    .line 307
    .local v0, "outNetRemaining":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_3

    .line 308
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->expandBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    .line 311
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 312
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expanded output net buffer [outNetBufCapacity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ses="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 316
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    .line 318
    .local v1, "res":Ljavax/net/ssl/SSLEngineResult;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 319
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encrypted data [status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", handshakeStaus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ses="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 322
    :cond_4
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v2, v3, :cond_5

    .line 323
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v2, v3, :cond_2

    .line 324
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->runTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto/16 :goto_0

    .line 327
    :cond_5
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to encrypt data (SSL engine error) [status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", handshakeStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ses="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    .end local v0    # "outNetRemaining":I
    .end local v1    # "res":Ljavax/net/ssl/SSLEngineResult;
    :cond_6
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 333
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    return-object v2
.end method

.method flushDeferredWrites()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 384
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 385
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeFinished:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 387
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->deferredWriteQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 388
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->deferredWriteQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$WriteRequest;

    .line 390
    .local v0, "req":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$WriteRequest;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$WriteRequest;->future()Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->parent:Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$WriteRequest;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->proceedSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;->onDone(Lorg/apache/ignite/internal/util/nio/GridNioFuture;)V

    goto :goto_0

    .line 392
    .end local v0    # "req":Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$WriteRequest;
    :cond_2
    return-void
.end method

.method getApplicationBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->appBuf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method handshake()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5d

    .line 151
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 152
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entered handshake(): [handshakeStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->lock()V

    .line 157
    const/4 v1, 0x1

    .line 159
    .local v1, "loop":Z
    :cond_1
    :goto_0
    if-eqz v1, :cond_b

    .line 160
    :try_start_0
    sget-object v5, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 233
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid handshake status in handshake method [handshakeStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unlock()V

    throw v5

    .line 163
    :pswitch_0
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 165
    .local v3, "sslSes":Ljavax/net/ssl/SSLSession;
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 166
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finished ssl handshake [protocol="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cipherSuite="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 169
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeFinished:Z

    .line 171
    iget-boolean v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->initHandshakeComplete:Z

    if-nez v5, :cond_4

    .line 172
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->initHandshakeComplete:Z

    .line 174
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    sget v6, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->HANDSHAKE_FUT_META_KEY:I

    invoke-interface {v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->removeMeta(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;

    .line 176
    .local v0, "fut":Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;, "Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl<*>;"
    if-eqz v0, :cond_3

    .line 177
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;->onDone()Z

    .line 179
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->parent:Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->proceedSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 182
    .end local v0    # "fut":Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;, "Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl<*>;"
    :cond_4
    const/4 v1, 0x0

    .line 184
    goto/16 :goto_0

    .line 188
    .end local v3    # "sslSes":Ljavax/net/ssl/SSLSession;
    :pswitch_1
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 189
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Need to run ssl tasks: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 191
    :cond_5
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->runTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto/16 :goto_0

    .line 197
    :pswitch_2
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 198
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Need to unwrap incoming data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 200
    :cond_6
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unwrapHandshake()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    .line 202
    .local v4, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v5, :cond_7

    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v5, v6, :cond_8

    :cond_7
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 212
    .end local v4    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :pswitch_3
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 213
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Output net buffer has unsent bytes during handshake (will clear): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 215
    :cond_9
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 217
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeBuf:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6, v7}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    .line 219
    .local v2, "res":Ljavax/net/ssl/SSLEngineResult;
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 221
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 223
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 224
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrapped handshake data [status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", handshakeStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 227
    :cond_a
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->writeNetBuffer()Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 240
    .end local v2    # "res":Ljavax/net/ssl/SSLEngineResult;
    :cond_b
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unlock()V

    .line 243
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 244
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Leaved handshake(): [handshakeStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 245
    :cond_c
    return-void

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method isHandshakeFinished()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeFinished:Z

    return v0
.end method

.method isInboundDone()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    return v0
.end method

.method isOutboundDone()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    return v0
.end method

.method messageReceived(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 256
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->expandBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    .line 258
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->appBuf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->expandBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->appBuf:Ljava/nio/ByteBuffer;

    .line 260
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expanded buffers [inNetBufCapacity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", appBufCapacity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->appBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 266
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 268
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshakeFinished:Z

    if-nez v1, :cond_3

    .line 269
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->handshake()V

    .line 273
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->isInboundDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v0, v1, v2

    .line 276
    .local v0, "newPosition":I
    if-ltz v0, :cond_1

    .line 277
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 280
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got unread bytes after receiving close_notify message (will ignore): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 284
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->inNetBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 286
    .end local v0    # "newPosition":I
    :cond_2
    return-void

    .line 271
    :cond_3
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->unwrapData()V

    goto :goto_0
.end method

.method shutdown()V
    .locals 4

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljavax/net/ssl/SSLException;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to correctly close inbound data stream (will ignore) [msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method writeNetBuffer()Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 431
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 433
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->outNetBuf:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->copy(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 435
    .local v0, "cp":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->parent:Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslHandler;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v1, v2, v0}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->proceedSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v1

    return-object v1
.end method
