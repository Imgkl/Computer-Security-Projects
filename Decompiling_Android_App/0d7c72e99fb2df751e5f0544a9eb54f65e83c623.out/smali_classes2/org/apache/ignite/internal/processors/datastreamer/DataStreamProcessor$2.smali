.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$2;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "DataStreamProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$2;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    return-void
.end method


# virtual methods
.method protected body()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$2;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor.2;"
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$2;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->flushQ:Ljava/util/concurrent/DelayQueue;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;)Ljava/util/concurrent/DelayQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/DelayQueue;->take()Ljava/util/concurrent/Delayed;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .line 86
    .local v0, "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->access$200(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    .end local v0    # "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    :cond_0
    return-void

    .line 90
    .restart local v0    # "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->access$200(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    .line 93
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->tryFlush()V

    .line 95
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->flushQ:Ljava/util/concurrent/DelayQueue;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;)Ljava/util/concurrent/DelayQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->access$200(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->access$200(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v1
.end method
