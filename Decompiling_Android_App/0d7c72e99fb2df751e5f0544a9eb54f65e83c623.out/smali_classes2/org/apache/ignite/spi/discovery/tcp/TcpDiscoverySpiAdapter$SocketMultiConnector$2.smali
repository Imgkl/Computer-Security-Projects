.class Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$2;
.super Ljava/lang/Object;
.source "TcpDiscoverySpiAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;)V
    .locals 0

    .prologue
    .line 1094
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$2;->this$1:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1097
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$2;->this$1:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->access$300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 1101
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$2;->this$1:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->completionSrvc:Ljava/util/concurrent/CompletionService;
    invoke-static {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->access$400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;)Ljava/util/concurrent/CompletionService;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/CompletionService;->poll()Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .local v1, "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/net/InetSocketAddress;Ljava/net/Socket;Ljava/lang/Exception;>;>;"
    if-eqz v1, :cond_1

    .line 1103
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    .line 1105
    .local v2, "tuple3":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/net/InetSocketAddress;Ljava/net/Socket;Ljava/lang/Exception;>;"
    if-eqz v2, :cond_0

    .line 1106
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/AutoCloseable;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/IgniteUtils;->closeQuiet(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1108
    .end local v2    # "tuple3":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/net/InetSocketAddress;Ljava/net/Socket;Ljava/lang/Exception;>;"
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1113
    .end local v1    # "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/net/InetSocketAddress;Ljava/net/Socket;Ljava/lang/Exception;>;>;"
    :catch_1
    move-exception v0

    .line 1114
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1116
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1118
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/net/InetSocketAddress;Ljava/net/Socket;Ljava/lang/Exception;>;>;"
    :cond_1
    return-void
.end method
