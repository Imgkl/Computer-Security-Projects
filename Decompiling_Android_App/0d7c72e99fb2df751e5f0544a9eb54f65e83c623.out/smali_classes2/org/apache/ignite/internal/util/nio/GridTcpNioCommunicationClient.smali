.class public Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;
.super Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;
.source "GridTcpNioCommunicationClient.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private final ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;)V

    .line 47
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .line 51
    iput-object p2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->log:Lorg/apache/ignite/IgniteLogger;

    .line 52
    return-void
.end method


# virtual methods
.method public async()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public close()Z
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->close()Z

    move-result v0

    .line 70
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 73
    :cond_0
    return v0
.end method

.method public doHandshake(Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X",
            "<",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "handshakeC":Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X;, "Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X<Ljava/io/InputStream;Ljava/io/OutputStream;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public flushIfNeeded(J)V
    .locals 0
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    return-void
.end method

.method public forceClose()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->forceClose()V

    .line 80
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 81
    return-void
.end method

.method public getIdleTime()J
    .locals 6

    .prologue
    .line 140
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    .line 143
    .local v0, "now":J
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-interface {v2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->lastReceiveTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-interface {v4}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->lastSendScheduleTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-interface {v4}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->lastSendTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public sendMessage(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->closed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client was closed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    .line 95
    .local v0, "fut":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->get()Ljava/lang/Object;

    .line 97
    :cond_1
    return-void
.end method

.method public sendMessage([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public sendMessage(Ljava/util/UUID;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x5d

    .line 103
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 105
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-interface {v2, p2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v1

    .line 107
    .local v1, "fut":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    invoke-interface {v1}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    :try_start_0
    invoke-interface {v1}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message [client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", err="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 115
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_3

    .line 116
    const/4 v2, 0x1

    goto :goto_0

    .line 118
    :cond_3
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message [client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public session()Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
