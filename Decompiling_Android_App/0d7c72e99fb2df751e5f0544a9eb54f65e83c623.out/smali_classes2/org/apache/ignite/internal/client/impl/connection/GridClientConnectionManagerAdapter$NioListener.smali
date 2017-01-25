.class Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;
.super Ljava/lang/Object;
.source "GridClientConnectionManagerAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/nio/GridNioServerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NioListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 546
    const-class v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/logging/Logger;)V
    .locals 0
    .param p1, "log"    # Ljava/util/logging/Logger;

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;->log:Ljava/util/logging/Logger;

    .line 555
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/logging/Logger;Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/logging/Logger;
    .param p2, "x1"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$1;

    .prologue
    .line 546
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;-><init>(Ljava/util/logging/Logger;)V

    return-void
.end method

.method private handleHandshakeResponse(Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;)V
    .locals 3
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, "handshakeFut":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;->resultCode()B

    move-result v0

    .line 620
    .local v0, "rc":B
    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;->OK:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;->resultCode()B

    move-result v1

    if-eq v0, v1, :cond_0

    .line 621
    new-instance v1, Lorg/apache/ignite/internal/client/GridClientHandshakeException;

    const-string v2, "Handshake failed due to internal error (see server log for more details)."

    invoke-direct {v1, v0, v2}, Lorg/apache/ignite/internal/client/GridClientHandshakeException;-><init>(BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->onDone(Ljava/lang/Throwable;)V

    .line 626
    :goto_0
    return-void

    .line 625
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->onDone(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onConnected(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 3
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 559
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 561
    :cond_0
    return-void
.end method

.method public onDisconnected(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "e"    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 565
    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session disconnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 568
    :cond_0
    sget v2, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->SES_META_HANDSHAKE:I

    invoke-interface {p1, v2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->removeMeta(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    .line 571
    .local v1, "handshakeFut":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_2

    .line 572
    new-instance v2, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;

    const-string v3, "Failed to perform handshake (connection failed)."

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->onDone(Ljava/lang/Throwable;)V

    .line 580
    :cond_1
    :goto_0
    return-void

    .line 575
    :cond_2
    sget v2, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->SES_META_CONN:I

    invoke-interface {p1, v2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->meta(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    .line 577
    .local v0, "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;
    if-eqz v0, :cond_1

    .line 578
    sget-object v2, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->FAILED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->close(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;Z)V

    goto :goto_0
.end method

.method public onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    .locals 6
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 584
    sget v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->SES_META_HANDSHAKE:I

    invoke-interface {p1, v3}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->removeMeta(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    .line 587
    .local v2, "handshakeFut":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<Ljava/lang/Boolean;>;"
    if-eqz v2, :cond_1

    .line 588
    sget-boolean v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    instance-of v3, p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 590
    :cond_0
    check-cast p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;

    .end local p2    # "msg":Ljava/lang/Object;
    invoke-direct {p0, v2, p2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;->handleHandshakeResponse(Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;)V

    .line 608
    :goto_0
    return-void

    .line 593
    .restart local p2    # "msg":Ljava/lang/Object;
    :cond_1
    sget v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->SES_META_CONN:I

    invoke-interface {p1, v3}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->meta(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    .line 595
    .local v0, "conn":Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;
    sget-boolean v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 597
    :cond_2
    instance-of v3, p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPingPacket;

    if-eqz v3, :cond_3

    .line 598
    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->handlePingResponse()V

    goto :goto_0

    .line 601
    :cond_3
    :try_start_0
    check-cast p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    .end local p2    # "msg":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->handleResponse(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v1

    .line 604
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Failed to parse response."

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 2
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 638
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;->log:Ljava/util/logging/Logger;

    const-string v1, "Closing NIO session because of idle timeout."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 641
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 642
    return-void
.end method

.method public onSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 2
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 630
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter$NioListener;->log:Ljava/util/logging/Logger;

    const-string v1, "Closing NIO session because of write timeout."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 633
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 634
    return-void
.end method
