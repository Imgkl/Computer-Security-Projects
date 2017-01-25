.class Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;
.super Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;
.source "GridNioServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/nio/GridNioServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioServer;)V
    .locals 1

    .prologue
    .line 1960
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.HeadFilter;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .line 1961
    const-string v0, "HeadFilter"

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;-><init>(Ljava/lang/String;)V

    .line 1962
    return-void
.end method


# virtual methods
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
    .line 1979
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.HeadFilter;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;->proceedExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V

    .line 1980
    return-void
.end method

.method public onMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2008
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.HeadFilter;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;->proceedMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V

    .line 2009
    return-void
.end method

.method public onPauseReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 2
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
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
    .line 2028
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.HeadFilter;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->PAUSE_READ:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->pauseResumeReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onResumeReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 2
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
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
    .line 2033
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.HeadFilter;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->RESUME_READ:Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->pauseResumeReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
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

    .prologue
    .line 2013
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.HeadFilter;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->close(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1974
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.HeadFilter;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;->proceedSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 1975
    return-void
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
    .line 2018
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.HeadFilter;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;->proceedSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 2019
    return-void
.end method

.method public onSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 2
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1966
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.HeadFilter;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$2100(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1000(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1967
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1300()I

    move-result v0

    new-instance v1, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v1}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    invoke-interface {p1, v0, v1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1969
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;->proceedSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 1970
    return-void
.end method

.method public onSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 4
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

    .prologue
    .line 1984
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.HeadFilter;"
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$2100(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1985
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1000(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v3, p2, Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 1987
    .local v2, "sslSys":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1988
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1300()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->meta(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 1990
    .local v1, "queue":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Ljava/nio/ByteBuffer;>;"
    check-cast p2, Ljava/nio/ByteBuffer;

    .end local p2    # "msg":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lorg/jsr166/ConcurrentLinkedDeque8;->offer(Ljava/lang/Object;)Z

    .line 1992
    check-cast p1, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .end local p1    # "ses":Lorg/apache/ignite/internal/util/nio/GridNioSession;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->key()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 1994
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1995
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 1997
    :cond_0
    const/4 v3, 0x0

    .line 2003
    .end local v0    # "key":Ljava/nio/channels/SelectionKey;
    .end local v1    # "queue":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Ljava/nio/ByteBuffer;>;"
    .end local v2    # "sslSys":Z
    :goto_1
    return-object v3

    .line 1985
    .restart local p1    # "ses":Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .restart local p2    # "msg":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2000
    .restart local v2    # "sslSys":Z
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    check-cast p2, Lorg/apache/ignite/plugin/extensions/communication/Message;

    .end local p2    # "msg":Ljava/lang/Object;
    invoke-virtual {v3, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->send(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/plugin/extensions/communication/Message;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v3

    goto :goto_1

    .line 2003
    .end local v2    # "sslSys":Z
    .restart local p2    # "msg":Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    check-cast p2, Ljava/nio/ByteBuffer;

    .end local p2    # "msg":Ljava/lang/Object;
    invoke-virtual {v3, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->send(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v3

    goto :goto_1
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
    .line 2023
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.HeadFilter;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$HeadFilter;->proceedSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 2024
    return-void
.end method
