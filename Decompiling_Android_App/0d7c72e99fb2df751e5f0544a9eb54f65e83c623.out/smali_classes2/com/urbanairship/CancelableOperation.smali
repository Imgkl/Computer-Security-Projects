.class abstract Lcom/urbanairship/CancelableOperation;
.super Ljava/lang/Object;
.source "CancelableOperation.java"

# interfaces
.implements Lcom/urbanairship/Cancelable;
.implements Ljava/lang/Runnable;


# instance fields
.field private handler:Landroid/os/Handler;

.field private final internalRunnable:Ljava/lang/Runnable;

.field private isCanceled:Z

.field private isFinished:Z

.field private isRunning:Z


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/urbanairship/CancelableOperation;->isFinished:Z

    .line 37
    iput-boolean v0, p0, Lcom/urbanairship/CancelableOperation;->isRunning:Z

    .line 38
    iput-boolean v0, p0, Lcom/urbanairship/CancelableOperation;->isCanceled:Z

    .line 50
    if-eqz p1, :cond_0

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/urbanairship/CancelableOperation;->handler:Landroid/os/Handler;

    .line 56
    :goto_0
    new-instance v0, Lcom/urbanairship/CancelableOperation$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/CancelableOperation$1;-><init>(Lcom/urbanairship/CancelableOperation;)V

    iput-object v0, p0, Lcom/urbanairship/CancelableOperation;->internalRunnable:Ljava/lang/Runnable;

    .line 69
    return-void

    .line 53
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_1
    iput-object v0, p0, Lcom/urbanairship/CancelableOperation;->handler:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/urbanairship/CancelableOperation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/CancelableOperation;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/urbanairship/CancelableOperation;->isFinished:Z

    return p1
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/CancelableOperation;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/CancelableOperation;->isCanceled:Z

    .line 77
    iget-object v0, p0, Lcom/urbanairship/CancelableOperation;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/CancelableOperation;->internalRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    iget-object v0, p0, Lcom/urbanairship/CancelableOperation;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/urbanairship/CancelableOperation$2;

    invoke-direct {v1, p0}, Lcom/urbanairship/CancelableOperation$2;-><init>(Lcom/urbanairship/CancelableOperation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    :cond_0
    monitor-exit p0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isCanceled()Z
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/CancelableOperation;->isCanceled:Z

    monitor-exit p0

    return v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isDone()Z
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/CancelableOperation;->isFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/urbanairship/CancelableOperation;->isCanceled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onCancel()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method protected abstract onRun()V
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/CancelableOperation;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/urbanairship/CancelableOperation;->isRunning:Z

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    monitor-exit p0

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/CancelableOperation;->isRunning:Z

    .line 97
    iget-object v0, p0, Lcom/urbanairship/CancelableOperation;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/CancelableOperation;->internalRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
