.class public abstract Lorg/apache/ignite/internal/util/worker/GridWorker;
.super Ljava/lang/Object;
.source "GridWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile finished:Z

.field private final gridName:Ljava/lang/String;

.field private volatile isCancelled:Z

.field protected final log:Lorg/apache/ignite/IgniteLogger;

.field private final lsnr:Lorg/apache/ignite/internal/util/worker/GridWorkerListener;

.field private final mux:Ljava/lang/Object;

.field private final name:Ljava/lang/String;

.field private volatile runner:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/util/worker/GridWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/worker/GridWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/util/worker/GridWorkerListener;)V

    .line 87
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/util/worker/GridWorkerListener;)V
    .locals 1
    .param p1, "gridName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p4, "lsnr"    # Lorg/apache/ignite/internal/util/worker/GridWorkerListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->mux:Ljava/lang/Object;

    .line 67
    sget-boolean v0, Lorg/apache/ignite/internal/util/worker/GridWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/worker/GridWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->gridName:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->lsnr:Lorg/apache/ignite/internal/util/worker/GridWorkerListener;

    .line 73
    iput-object p3, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    .line 74
    return-void
.end method


# virtual methods
.method protected abstract body()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 197
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling grid runnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 200
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->isCancelled:Z

    .line 202
    iget-object v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    .line 206
    .local v0, "runner":Ljava/lang/Thread;
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 208
    :cond_1
    return-void
.end method

.method protected cleanup()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public gridName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->gridName:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    .line 237
    .local v0, "runner":Ljava/lang/Thread;
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->isCancelled:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->finished:Z

    return v0
.end method

.method public join()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Joining grid runnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->isCancelled:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->finished:Z

    if-eqz v0, :cond_3

    .line 226
    :cond_2
    :goto_0
    return-void

    .line 222
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->finished:Z

    if-nez v0, :cond_4

    .line 224
    iget-object v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->mux:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    .line 95
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grid runnable started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 100
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->isCancelled:Z

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 104
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->lsnr:Lorg/apache/ignite/internal/util/worker/GridWorkerListener;

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->lsnr:Lorg/apache/ignite/internal/util/worker/GridWorkerListener;

    invoke-interface {v1, p0}, Lorg/apache/ignite/internal/util/worker/GridWorkerListener;->onStarted(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 107
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->body()V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 125
    iget-object v2, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->finished:Z

    .line 128
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->mux:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->cleanup()V

    .line 133
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->lsnr:Lorg/apache/ignite/internal/util/worker/GridWorkerListener;

    if-eqz v1, :cond_3

    .line 134
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->lsnr:Lorg/apache/ignite/internal/util/worker/GridWorkerListener;

    invoke-interface {v1, p0}, Lorg/apache/ignite/internal/util/worker/GridWorkerListener;->onStopped(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 136
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->isCancelled:Z

    if-eqz v1, :cond_5

    .line 138
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grid runnable finished due to cancellation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 148
    :cond_4
    :goto_0
    iput-object v5, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    .line 150
    :goto_1
    return-void

    .line 129
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 139
    :cond_5
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grid runnable finished due to interruption without cancellation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_6
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grid runnable finished normally: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 111
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught interrupted exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 125
    :cond_7
    iget-object v2, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->finished:Z

    .line 128
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->mux:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 131
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->cleanup()V

    .line 133
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->lsnr:Lorg/apache/ignite/internal/util/worker/GridWorkerListener;

    if-eqz v1, :cond_8

    .line 134
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->lsnr:Lorg/apache/ignite/internal/util/worker/GridWorkerListener;

    invoke-interface {v1, p0}, Lorg/apache/ignite/internal/util/worker/GridWorkerListener;->onStopped(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 136
    :cond_8
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 137
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->isCancelled:Z

    if-eqz v1, :cond_a

    .line 138
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grid runnable finished due to cancellation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 148
    :cond_9
    :goto_2
    iput-object v5, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    goto/16 :goto_1

    .line 129
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 139
    :cond_a
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 140
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grid runnable finished due to interruption without cancellation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 142
    :cond_b
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grid runnable finished normally: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 113
    .end local v0    # "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_6
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 115
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught interrupted exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 117
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 125
    iget-object v2, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    const/4 v1, 0x1

    :try_start_7
    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->finished:Z

    .line 128
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->mux:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 131
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->cleanup()V

    .line 133
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->lsnr:Lorg/apache/ignite/internal/util/worker/GridWorkerListener;

    if-eqz v1, :cond_d

    .line 134
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->lsnr:Lorg/apache/ignite/internal/util/worker/GridWorkerListener;

    invoke-interface {v1, p0}, Lorg/apache/ignite/internal/util/worker/GridWorkerListener;->onStopped(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 136
    :cond_d
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 137
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->isCancelled:Z

    if-eqz v1, :cond_f

    .line 138
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grid runnable finished due to cancellation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 148
    :cond_e
    :goto_3
    iput-object v5, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    goto/16 :goto_1

    .line 129
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1

    .line 139
    :cond_f
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 140
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grid runnable finished due to interruption without cancellation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 142
    :cond_10
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grid runnable finished normally: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 121
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_9
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Runtime error caught during grid runnable execution: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 125
    iget-object v2, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->finished:Z

    .line 128
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->mux:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 131
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->cleanup()V

    .line 133
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->lsnr:Lorg/apache/ignite/internal/util/worker/GridWorkerListener;

    if-eqz v1, :cond_11

    .line 134
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->lsnr:Lorg/apache/ignite/internal/util/worker/GridWorkerListener;

    invoke-interface {v1, p0}, Lorg/apache/ignite/internal/util/worker/GridWorkerListener;->onStopped(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 136
    :cond_11
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 137
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->isCancelled:Z

    if-eqz v1, :cond_13

    .line 138
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grid runnable finished due to cancellation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 148
    :cond_12
    :goto_4
    iput-object v5, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    goto/16 :goto_1

    .line 129
    :catchall_3
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1

    .line 139
    :cond_13
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 140
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grid runnable finished due to interruption without cancellation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 142
    :cond_14
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grid runnable finished normally: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 125
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_4
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    const/4 v3, 0x1

    :try_start_c
    iput-boolean v3, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->finished:Z

    .line 128
    iget-object v3, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->mux:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 131
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->cleanup()V

    .line 133
    iget-object v2, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->lsnr:Lorg/apache/ignite/internal/util/worker/GridWorkerListener;

    if-eqz v2, :cond_15

    .line 134
    iget-object v2, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->lsnr:Lorg/apache/ignite/internal/util/worker/GridWorkerListener;

    invoke-interface {v2, p0}, Lorg/apache/ignite/internal/util/worker/GridWorkerListener;->onStopped(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 136
    :cond_15
    iget-object v2, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 137
    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->isCancelled:Z

    if-eqz v2, :cond_17

    .line 138
    iget-object v2, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Grid runnable finished due to cancellation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 148
    :cond_16
    :goto_5
    iput-object v5, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    throw v1

    .line 129
    :catchall_5
    move-exception v1

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v1

    .line 139
    :cond_17
    iget-object v2, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 140
    iget-object v2, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Grid runnable finished due to interruption without cancellation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 142
    :cond_18
    iget-object v2, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Grid runnable finished normally: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public runner()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 251
    iget-object v8, p0, Lorg/apache/ignite/internal/util/worker/GridWorker;->runner:Ljava/lang/Thread;

    .line 253
    .local v8, "runner":Ljava/lang/Thread;
    const-class v0, Lorg/apache/ignite/internal/util/worker/GridWorker;

    const-string v2, "hashCode"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "interrupted"

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_0
    const-string v6, "runner"

    if-nez v8, :cond_1

    const-string v7, "null"

    :goto_1
    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v5, "unknown"

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method
