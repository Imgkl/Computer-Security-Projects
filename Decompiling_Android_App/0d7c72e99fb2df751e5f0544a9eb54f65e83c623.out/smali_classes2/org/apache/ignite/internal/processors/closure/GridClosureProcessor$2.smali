.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$2;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridClosureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocal(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

.field final synthetic val$c:Ljava/util/concurrent/Callable;

.field final synthetic val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

.field final synthetic val$ldr:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 880
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$2;->val$ldr:Ljava/lang/ClassLoader;

    iput-object p6, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$2;->val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    iput-object p7, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$2;->val$c:Ljava/util/concurrent/Callable;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    return-void
.end method


# virtual methods
.method protected body()V
    .locals 4

    .prologue
    .line 883
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$2;->val$ldr:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_0

    .line 884
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$2;->val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$2;->val$ldr:Ljava/lang/ClassLoader;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$2;->val$c:Ljava/util/concurrent/Callable;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->wrapThreadLoader(Ljava/lang/ClassLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->onDone(Ljava/lang/Object;)Z

    .line 894
    :goto_0
    return-void

    .line 886
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$2;->val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$2;->val$c:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->onDone(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 890
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$2;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Closure execution failed with error."

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 892
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$2;->val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
