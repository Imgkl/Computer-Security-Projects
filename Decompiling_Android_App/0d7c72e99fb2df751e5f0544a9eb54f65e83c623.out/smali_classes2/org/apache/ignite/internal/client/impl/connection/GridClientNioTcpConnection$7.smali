.class Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$7;
.super Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;
.source "GridClientNioTcpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->topology(ZZLjava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;
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
    .line 826
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$7;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;-><init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$1;)V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/Object;)V
    .locals 5
    .param p1, "res"    # Ljava/lang/Object;

    .prologue
    .line 828
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    .line 830
    .local v1, "beans":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 832
    .local v3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;

    .line 833
    .local v0, "bean":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$7;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    # invokes: Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->nodeBeanToNode(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    invoke-static {v4, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->access$600(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 835
    .end local v0    # "bean":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientNodeBean;
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$7;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    iget-object v4, v4, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->updateTopology(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    invoke-super {p0, v4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->onDone(Ljava/lang/Object;)V

    .line 836
    return-void
.end method
