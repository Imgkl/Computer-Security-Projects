.class Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$1;
.super Ljava/lang/Object;
.source "TcpDiscoverySpiAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;Ljava/util/Collection;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lorg/apache/ignite/internal/util/lang/GridTuple3",
        "<",
        "Ljava/net/InetSocketAddress;",
        "Ljava/net/Socket;",
        "Ljava/lang/Exception;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;

.field final synthetic val$addr:Ljava/net/InetSocketAddress;

.field final synthetic val$retryCnt:I

.field final synthetic val$this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;ILjava/net/InetSocketAddress;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$1;->this$1:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;

    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$1;->val$this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    iput p3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$1;->val$retryCnt:I

    iput-object p4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$1;->val$addr:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1038
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$1;->call()Lorg/apache/ignite/internal/util/lang/GridTuple3;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/ignite/internal/util/lang/GridTuple3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/net/InetSocketAddress;",
            "Ljava/net/Socket;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1040
    const/4 v1, 0x0

    .line 1041
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1043
    .local v3, "sock":Ljava/net/Socket;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$1;->val$retryCnt:I

    if-ge v2, v4, :cond_1

    .line 1044
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1045
    const/4 v4, 0x0

    .line 1057
    :goto_1
    return-object v4

    .line 1048
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$1;->this$1:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;

    iget-object v4, v4, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$1;->val$addr:Ljava/net/InetSocketAddress;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->openSocket(Ljava/net/InetSocketAddress;)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1057
    :cond_1
    new-instance v4, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$1;->val$addr:Ljava/net/InetSocketAddress;

    invoke-direct {v4, v5, v3, v1}, Lorg/apache/ignite/internal/util/lang/GridTuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    .line 1043
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
