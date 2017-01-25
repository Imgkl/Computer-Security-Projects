.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridClosureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runLocal(Ljava/lang/Runnable;Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

.field final synthetic val$c:Ljava/lang/Runnable;

.field final synthetic val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

.field final synthetic val$ldr:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Ljava/lang/ClassLoader;Ljava/lang/Runnable;Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 748
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;->val$ldr:Ljava/lang/ClassLoader;

    iput-object p6, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;->val$c:Ljava/lang/Runnable;

    iput-object p7, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;->val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    return-void
.end method


# virtual methods
.method protected body()V
    .locals 3

    .prologue
    .line 751
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;->val$ldr:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_0

    .line 752
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;->val$ldr:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;->val$c:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->wrapThreadLoader(Ljava/lang/ClassLoader;Ljava/lang/Runnable;)V

    .line 756
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;->val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->onDone()Z

    .line 764
    :goto_1
    return-void

    .line 754
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;->val$c:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 760
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Closure execution failed with error."

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 762
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;->val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_1
.end method
