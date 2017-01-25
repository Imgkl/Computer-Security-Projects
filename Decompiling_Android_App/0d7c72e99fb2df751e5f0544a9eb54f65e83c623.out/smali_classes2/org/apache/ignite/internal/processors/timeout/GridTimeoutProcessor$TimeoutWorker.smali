.class Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$TimeoutWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridTimeoutProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;)V
    .locals 3

    .prologue
    .line 114
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$TimeoutWorker;->this$0:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    .line 115
    # getter for: Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->access$000(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "grid-timeout-worker"

    # getter for: Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->access$100(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 116
    return-void
.end method


# virtual methods
.method protected body()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 120
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$TimeoutWorker;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_4

    .line 121
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    .line 123
    .local v4, "now":J
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$TimeoutWorker;->this$0:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->access$200(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;)Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 124
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    .line 126
    .local v3, "timeoutObj":Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;->endTime()J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-gtz v8, :cond_1

    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 129
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$TimeoutWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 130
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$TimeoutWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Timeout has occurred: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 133
    :cond_0
    :try_start_0
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;->onTimeout()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$TimeoutWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error when executing timeout callback: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 143
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "timeoutObj":Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;
    :cond_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$TimeoutWorker;->this$0:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->mux:Ljava/lang/Object;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->access$300(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 149
    :goto_2
    :try_start_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$TimeoutWorker;->this$0:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->access$200(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;)Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->firstx()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    .line 151
    .local v1, "first":Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;
    if-eqz v1, :cond_2

    .line 152
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;->endTime()J

    move-result-wide v10

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 154
    .local v6, "waitTime":J
    const-wide/16 v10, 0x0

    cmp-long v8, v6, v10

    if-lez v8, :cond_3

    .line 155
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$TimeoutWorker;->this$0:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->mux:Ljava/lang/Object;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->access$300(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 162
    .end local v1    # "first":Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;
    .end local v6    # "waitTime":J
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 160
    .restart local v1    # "first":Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;
    :cond_2
    :try_start_2
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$TimeoutWorker;->this$0:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->mux:Ljava/lang/Object;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->access$300(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;)Ljava/lang/Object;

    move-result-object v8

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 162
    .restart local v6    # "waitTime":J
    :cond_3
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 164
    .end local v1    # "first":Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;>;"
    .end local v4    # "now":J
    .end local v6    # "waitTime":J
    :cond_4
    return-void
.end method
