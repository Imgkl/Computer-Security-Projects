.class Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$5;
.super Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;
.source "GridClientNioTcpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->node(Ljava/util/UUID;ZZLjava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

.field final synthetic val$id:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;Ljava/util/UUID;)V
    .locals 1

    .prologue
    .line 767
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$5;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$5;->val$id:Ljava/util/UUID;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;-><init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$1;)V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/Object;)V
    .locals 3
    .param p1, "res"    # Ljava/lang/Object;

    .prologue
    .line 770
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$5;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    # getter for: Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->refreshNodeReqs:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->access$500(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$5;->val$id:Ljava/util/UUID;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$5;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    check-cast p1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;

    .end local p1    # "res":Ljava/lang/Object;
    # invokes: Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->nodeBeanToNode(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    invoke-static {v1, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->access$600(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    move-result-object v0

    .line 774
    .local v0, "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    if-eqz v0, :cond_0

    .line 775
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$5;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    iget-object v1, v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->updateNode(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;)Lorg/apache/ignite/internal/client/GridClientNode;

    .line 777
    :cond_0
    invoke-super {p0, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->onDone(Ljava/lang/Object;)V

    .line 778
    return-void
.end method
