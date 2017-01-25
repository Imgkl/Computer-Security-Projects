.class Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpCommunicationSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketTimeoutWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mux0:Ljava/lang/Object;

.field final synthetic this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

.field private final timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet",
            "<",
            "Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2329
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V
    .locals 3

    .prologue
    .line 2351
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .line 2352
    invoke-static {p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$3200(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcp-comm-sock-timeout-worker"

    invoke-static {p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 2331
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    new-instance v1, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker$1;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    .line 2346
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->mux0:Ljava/lang/Object;

    .line 2353
    return-void
.end method


# virtual methods
.method public addTimeoutObject(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;)V
    .locals 4
    .param p1, "timeoutObj"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;

    .prologue
    .line 2360
    sget-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->endTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->endTime()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2362
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    .line 2364
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->firstx()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 2365
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->mux0:Ljava/lang/Object;

    monitor-enter v1

    .line 2366
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->mux0:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2367
    monitor-exit v1

    .line 2369
    :cond_2
    return-void

    .line 2367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected body()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2382
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2383
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    const-string v8, "Socket timeout worker has been started."

    invoke-interface {v5, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2385
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2386
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    .line 2388
    .local v2, "now":J
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2389
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;

    .line 2391
    .local v4, "timeoutObj":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;
    invoke-virtual {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->endTime()J

    move-result-wide v8

    cmp-long v5, v8, v2

    if-gtz v5, :cond_1

    .line 2392
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2394
    invoke-virtual {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->onTimeout()Z

    goto :goto_1

    .line 2400
    .end local v4    # "timeoutObj":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;
    :cond_1
    iget-object v8, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->mux0:Ljava/lang/Object;

    monitor-enter v8

    .line 2406
    :goto_2
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->firstx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;

    .line 2408
    .local v0, "first":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;
    if-eqz v0, :cond_2

    .line 2409
    invoke-virtual {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;->endTime()J

    move-result-wide v10

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 2411
    .local v6, "waitTime":J
    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-lez v5, :cond_3

    .line 2412
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->mux0:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 2419
    .end local v0    # "first":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;
    .end local v6    # "waitTime":J
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2417
    .restart local v0    # "first":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->mux0:Ljava/lang/Object;

    const-wide/16 v10, 0x1388

    invoke-virtual {v5, v10, v11}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 2419
    .restart local v6    # "waitTime":J
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2421
    .end local v0    # "first":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;>;"
    .end local v2    # "now":J
    .end local v6    # "waitTime":J
    :cond_4
    return-void
.end method

.method public removeTimeoutObject(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;)V
    .locals 1
    .param p1, "timeoutObj"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeTimeoutObject;

    .prologue
    .line 2375
    sget-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2377
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$SocketTimeoutWorker;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    .line 2378
    return-void
.end method
