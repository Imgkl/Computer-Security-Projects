.class Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$2;
.super Ljava/lang/Object;
.source "GridClientNioTcpConnection.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;Z)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

.field final synthetic val$fut:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$2;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$2;->val$fut:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 424
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$2;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "sndFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$2;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    sget-object v2, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->FAILED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    const/4 v3, 0x0

    # invokes: Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->close(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;ZLjava/lang/Throwable;)V
    invoke-static {v1, v2, v3, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->access$300(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;ZLjava/lang/Throwable;)V

    .line 432
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$2;->val$fut:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$2;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    sget-object v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->FAILED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    invoke-virtual {v2, v3, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->getCloseReasonAsException(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;Ljava/lang/Throwable;)Lorg/apache/ignite/internal/client/GridClientException;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->onDone(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
