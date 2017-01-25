.class public Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;
.super Ljava/lang/Object;
.source "TcpDiscoverySpiAdapter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SocketMultiConnector"
.end annotation


# instance fields
.field private final completionSrvc:Ljava/util/concurrent/CompletionService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletionService",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/net/InetSocketAddress;",
            "Ljava/net/Socket;",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field

.field private connInProgress:I

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;Ljava/util/Collection;I)V
    .locals 4
    .param p3, "retryCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1030
    .local p2, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    iput v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->connInProgress:I

    .line 1033
    const/4 v2, 0x1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->executor:Ljava/util/concurrent/ExecutorService;

    .line 1035
    new-instance v2, Ljava/util/concurrent/ExecutorCompletionService;

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v3}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->completionSrvc:Ljava/util/concurrent/CompletionService;

    .line 1037
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 1038
    .local v0, "addr":Ljava/net/InetSocketAddress;
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->completionSrvc:Ljava/util/concurrent/CompletionService;

    new-instance v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$1;

    invoke-direct {v3, p0, p1, p3, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$1;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;ILjava/net/InetSocketAddress;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 1061
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_0
    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;

    .prologue
    .line 1016
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;)Ljava/util/concurrent/CompletionService;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;

    .prologue
    .line 1016
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->completionSrvc:Ljava/util/concurrent/CompletionService;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 1089
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v1

    .line 1091
    .local v1, "unstartedTasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->connInProgress:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->connInProgress:I

    .line 1093
    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->connInProgress:I

    if-lez v2, :cond_0

    .line 1094
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$2;

    invoke-direct {v2, p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector$2;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1121
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1123
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1125
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public next()Lorg/apache/ignite/internal/util/lang/GridTuple3;
    .locals 4
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1067
    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->connInProgress:I

    if-nez v2, :cond_0

    .line 1068
    const/4 v2, 0x0

    .line 1075
    :goto_0
    return-object v2

    .line 1071
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->completionSrvc:Ljava/util/concurrent/CompletionService;

    invoke-interface {v2}, Ljava/util/concurrent/CompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 1073
    .local v1, "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/net/InetSocketAddress;Ljava/net/Socket;Ljava/lang/Exception;>;>;"
    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->connInProgress:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketMultiConnector;->connInProgress:I

    .line 1075
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/lang/GridTuple3;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1077
    .end local v1    # "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/net/InetSocketAddress;Ljava/net/Socket;Ljava/lang/Exception;>;>;"
    :catch_0
    move-exception v0

    .line 1078
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1080
    new-instance v2, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v3, "Thread has been interrupted."

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1082
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1083
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Lorg/apache/ignite/spi/IgniteSpiException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
