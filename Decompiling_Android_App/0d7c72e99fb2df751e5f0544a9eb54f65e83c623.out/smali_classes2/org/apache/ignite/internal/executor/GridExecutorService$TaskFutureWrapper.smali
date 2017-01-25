.class Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;
.super Ljava/lang/Object;
.source "GridExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/executor/GridExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskFutureWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final fut:Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/executor/GridExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 618
    const-class v0, Lorg/apache/ignite/internal/executor/GridExecutorService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/executor/GridExecutorService;Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 627
    .local p0, "this":Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;, "Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper<TT;>;"
    .local p2, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->this$0:Lorg/apache/ignite/internal/executor/GridExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    sget-boolean v0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 630
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 631
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 4
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 636
    .local p0, "this":Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;, "Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper<TT;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->cancel()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->this$0:Lorg/apache/ignite/internal/executor/GridExecutorService;

    # getter for: Lorg/apache/ignite/internal/executor/GridExecutorService;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/executor/GridExecutorService;->access$300(Lorg/apache/ignite/internal/executor/GridExecutorService;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to cancel task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "this":Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;, "Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper<TT;>;"
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v2

    .line 660
    .local v2, "res":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 661
    new-instance v3, Ljava/util/concurrent/CancellationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task was cancelled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .end local v2    # "res":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 668
    new-instance v1, Ljava/util/concurrent/CancellationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task was cancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 670
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 672
    throw v1

    .line 675
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get task result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 663
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v2    # "res":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v2
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 682
    .local p0, "this":Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;, "Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper<TT;>;"
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string v5, "timeout >= 0"

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 683
    const-string v4, "unit != null"

    invoke-static {p3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get(J)Ljava/lang/Object;

    move-result-object v3

    .line 688
    .local v3, "res":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 689
    new-instance v4, Ljava/util/concurrent/CancellationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task was cancelled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 693
    .end local v3    # "res":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .line 696
    .local v1, "e2":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v1, v0}, Ljava/util/concurrent/TimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 698
    throw v1

    .line 682
    .end local v0    # "e":Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;
    .end local v1    # "e2":Ljava/util/concurrent/TimeoutException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 700
    :catch_1
    move-exception v0

    .line 701
    .local v0, "e":Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException;
    new-instance v4, Ljava/util/concurrent/ExecutionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task execution timed out during waiting for task result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 703
    .end local v0    # "e":Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException;
    :catch_2
    move-exception v0

    .line 705
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 706
    new-instance v2, Ljava/util/concurrent/CancellationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task was cancelled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 708
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 710
    throw v2

    .line 713
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    new-instance v4, Ljava/util/concurrent/ExecutionException;

    const-string v5, "Failed to get task result."

    invoke-direct {v4, v5, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 691
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v3    # "res":Ljava/lang/Object;, "TT;"
    :cond_2
    return-object v3
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 647
    .local p0, "this":Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;, "Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 652
    .local p0, "this":Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;, "Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v0

    return v0
.end method
