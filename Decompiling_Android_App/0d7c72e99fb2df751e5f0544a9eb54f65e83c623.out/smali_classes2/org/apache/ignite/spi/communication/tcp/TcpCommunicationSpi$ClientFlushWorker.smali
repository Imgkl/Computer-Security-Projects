.class Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpCommunicationSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientFlushWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V
    .locals 3

    .prologue
    .line 2281
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .line 2282
    invoke-static {p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$3200(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nio-client-flusher"

    invoke-static {p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 2283
    return-void
.end method


# virtual methods
.method protected body()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2288
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_7

    .line 2289
    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v7}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$3500(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)J

    move-result-wide v2

    .line 2291
    .local v2, "connBufFlushFreq0":J
    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v7}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2292
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    .line 2294
    .local v0, "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->reserve()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2295
    const/4 v5, 0x1

    .line 2298
    .local v5, "err":Z
    :try_start_0
    invoke-interface {v0, v2, v3}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->flushIfNeeded(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2300
    const/4 v5, 0x0

    .line 2313
    if-eqz v5, :cond_1

    .line 2314
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->forceClose()V

    goto :goto_1

    .line 2316
    :cond_1
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->release()V

    goto :goto_1

    .line 2302
    :catch_0
    move-exception v1

    .line 2303
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v7}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/UUID;

    invoke-interface {v8, v7}, Lorg/apache/ignite/spi/IgniteSpiContext;->pingNode(Ljava/util/UUID;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2304
    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v7}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to flush client: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2313
    :goto_2
    if-eqz v5, :cond_4

    .line 2314
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->forceClose()V

    goto :goto_1

    .line 2306
    :cond_2
    :try_start_2
    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v7}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2307
    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v7}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to flush client (node left): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2309
    :cond_3
    iget-object v7, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientFlushWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to flush client (node left): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$3600(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 2313
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_5

    .line 2314
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->forceClose()V

    .line 2316
    :goto_3
    throw v7

    .restart local v1    # "e":Ljava/io/IOException;
    :cond_4
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->release()V

    goto/16 :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->release()V

    goto :goto_3

    .line 2321
    .end local v0    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;>;"
    .end local v5    # "err":Z
    :cond_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 2323
    .end local v2    # "connBufFlushFreq0":J
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_7
    return-void
.end method
