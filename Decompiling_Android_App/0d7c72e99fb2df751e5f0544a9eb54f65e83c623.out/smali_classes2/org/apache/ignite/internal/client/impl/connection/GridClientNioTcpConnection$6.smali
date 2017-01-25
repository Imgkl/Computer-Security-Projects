.class Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$6;
.super Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;
.source "GridClientNioTcpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->node(Ljava/lang/String;ZZLjava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;)V
    .locals 1

    .prologue
    .line 801
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$6;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;-><init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$1;)V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/Object;)V
    .locals 2
    .param p1, "res"    # Ljava/lang/Object;

    .prologue
    .line 803
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$6;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    check-cast p1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;

    .end local p1    # "res":Ljava/lang/Object;
    # invokes: Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->nodeBeanToNode(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    invoke-static {v1, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->access$600(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    move-result-object v0

    .line 805
    .local v0, "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    if-eqz v0, :cond_0

    .line 806
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$6;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    iget-object v1, v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->updateNode(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;)Lorg/apache/ignite/internal/client/GridClientNode;

    move-result-object v1

    invoke-super {p0, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->onDone(Ljava/lang/Object;)V

    .line 809
    :goto_0
    return-void

    .line 808
    :cond_0
    invoke-super {p0, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->onDone(Ljava/lang/Object;)V

    goto :goto_0
.end method
