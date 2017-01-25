.class public Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
.super Ljava/lang/Object;
.source "IgfsFileWorkerBatch.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final completeLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile err:Lorg/apache/ignite/IgniteCheckedException;

.field private final finishGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final finishLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private lastTask:Z

.field private final out:Ljava/io/OutputStream;

.field private final path:Lorg/apache/ignite/igfs/IgfsPath;

.field private final queue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/igfs/IgfsPath;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->completeLatch:Ljava/util/concurrent/CountDownLatch;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finishGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finishLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 44
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->queue:Ljava/util/concurrent/BlockingDeque;

    .line 65
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 69
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->out:Ljava/io/OutputStream;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)Lorg/apache/ignite/igfs/IgfsPath;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->path:Lorg/apache/ignite/igfs/IgfsPath;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)Ljava/util/concurrent/BlockingDeque;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->queue:Ljava/util/concurrent/BlockingDeque;

    return-object v0
.end method

.method static synthetic access$302(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->lastTask:Z

    return p1
.end method

.method private addTask(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerTask;)Z
    .locals 3
    .param p1, "task"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerTask;

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finishLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 215
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finishGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 217
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    const/4 v1, 0x1

    .line 233
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finishLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v1

    .line 221
    :catch_0
    move-exception v0

    .line 223
    .local v0, "ignore":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finishLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "ignore":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finishLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finishLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method


# virtual methods
.method await()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 165
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->completeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->err:Lorg/apache/ignite/IgniteCheckedException;

    .line 175
    .local v1, "err0":Lorg/apache/ignite/IgniteCheckedException;
    if-eqz v1, :cond_0

    .line 176
    throw v1

    .line 167
    .end local v1    # "err0":Lorg/apache/ignite/IgniteCheckedException;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 170
    new-instance v2, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v2

    .line 177
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "err0":Lorg/apache/ignite/IgniteCheckedException;
    :cond_0
    return-void
.end method

.method awaitIfFinished()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finishGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->await()V

    .line 187
    :cond_0
    return-void
.end method

.method finish()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finishGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finishLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 144
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->queue:Ljava/util/concurrent/BlockingDeque;

    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch$2;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch$2;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finishLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 156
    :cond_0
    return-void

    .line 153
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finishLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected onComplete()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method path()Lorg/apache/ignite/igfs/IgfsPath;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->path:Lorg/apache/ignite/igfs/IgfsPath;

    return-object v0
.end method

.method process()V
    .locals 8

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "cancelled":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 101
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->queue:Ljava/util/concurrent/BlockingDeque;

    const-wide/16 v6, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v5}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerTask;

    .line 103
    .local v3, "task":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerTask;
    if-eqz v3, :cond_0

    .line 106
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerTask;->execute()V

    .line 108
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->lastTask:Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_0

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    .end local v3    # "task":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerTask;
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->err:Lorg/apache/ignite/IgniteCheckedException;

    .line 114
    const/4 v0, 0x1

    .line 120
    goto :goto_0

    .line 116
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v2

    .line 117
    .local v2, "ignore":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    const/4 v0, 0x1

    .line 120
    goto :goto_0

    .line 125
    .end local v2    # "ignore":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->onComplete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->out:Ljava/io/OutputStream;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 130
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->completeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 133
    return-void

    .line 128
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->out:Ljava/io/OutputStream;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 130
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->completeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v4

    .line 124
    :catchall_1
    move-exception v4

    .line 125
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->onComplete()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 128
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->out:Ljava/io/OutputStream;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 130
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->completeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v4

    .line 128
    :catchall_2
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->out:Ljava/io/OutputStream;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 130
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->completeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v4
.end method

.method write([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 79
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch$1;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;[B)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->addTask(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerTask;)Z

    move-result v0

    return v0
.end method
