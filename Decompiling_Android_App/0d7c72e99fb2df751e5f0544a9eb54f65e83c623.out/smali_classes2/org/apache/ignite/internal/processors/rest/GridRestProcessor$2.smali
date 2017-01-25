.class Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$2;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridRestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->handleAsync0(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

.field final synthetic val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

.field final synthetic val$req:Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$2;->val$req:Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    iput-object p6, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$2;->val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    return-void
.end method


# virtual methods
.method protected body()V
    .locals 4

    .prologue
    .line 107
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$2;->val$req:Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    # invokes: Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->handleRequest(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->access$100(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 109
    .local v1, "res":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    new-instance v2, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$2$1;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$2$1;-><init>(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$2;)V

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->workersCnt:Lorg/jsr166/LongAdder8;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->access$200(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;)Lorg/jsr166/LongAdder8;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsr166/LongAdder8;->decrement()V

    .line 129
    .end local v1    # "res":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$2;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Client request execution failed with error."

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 124
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$2;->val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->onDone(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->workersCnt:Lorg/jsr166/LongAdder8;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->access$200(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;)Lorg/jsr166/LongAdder8;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsr166/LongAdder8;->decrement()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->workersCnt:Lorg/jsr166/LongAdder8;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->access$200(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;)Lorg/jsr166/LongAdder8;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsr166/LongAdder8;->decrement()V

    throw v2
.end method
