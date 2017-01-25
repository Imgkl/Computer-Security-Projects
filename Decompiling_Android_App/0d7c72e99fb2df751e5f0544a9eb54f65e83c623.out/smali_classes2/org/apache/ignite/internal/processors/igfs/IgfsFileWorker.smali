.class public Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsThread;
.source "IgfsFileWorker.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final THREAD_REUSE_WAIT_TIME:J = 0x1388L


# instance fields
.field private volatile cancelled:Z

.field private final cond:Ljava/util/concurrent/locks/Condition;

.field private curBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private nextBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsThread;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    .line 34
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->cond:Ljava/util/concurrent/locks/Condition;

    .line 52
    return-void
.end method


# virtual methods
.method addBatch(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)Z
    .locals 2
    .param p1, "batch"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    .prologue
    .line 60
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->cancelled:Z

    if-nez v0, :cond_2

    .line 66
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->nextBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 68
    :cond_1
    :try_start_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->nextBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    .line 70
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    const/4 v0, 0x1

    .line 78
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    .line 75
    :cond_2
    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method protected body()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 84
    :goto_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->cancelled:Z

    if-nez v0, :cond_4

    .line 85
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->cancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->nextBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->cond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v2, 0x1388

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->nextBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->curBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->nextBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    .line 96
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->cancelled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->curBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->curBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 103
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->curBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->curBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->process()V

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 106
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 110
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->nextBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    if-nez v0, :cond_3

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->cancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 118
    :cond_4
    return-void
.end method

.method cancel()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 143
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->cancelled:Z

    .line 145
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->curBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->curBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finish()V

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->nextBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->nextBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finish()V

    .line 151
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 156
    return-void

    .line 154
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected cleanup()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->interrupted()Z

    move-result v0

    .line 126
    .local v0, "interrupted":Z
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->nextBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->nextBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->process()V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->onFinish()V

    .line 132
    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->interrupt()V

    .line 134
    :cond_1
    return-void
.end method

.method currentBatch()Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 167
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->nextBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->curBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 167
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->nextBatch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected onFinish()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method
