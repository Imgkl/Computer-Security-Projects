.class public Lorg/apache/ignite/internal/util/worker/GridWorkerPool;
.super Ljava/lang/Object;
.source "GridWorkerPool.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final exec:Ljava/util/concurrent/Executor;

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private final workers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/worker/GridWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .param p2, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->workers:Ljava/util/Collection;

    .line 48
    sget-boolean v0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->exec:Ljava/util/concurrent/Executor;

    .line 52
    iput-object p2, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->log:Lorg/apache/ignite/IgniteLogger;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/util/worker/GridWorkerPool;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/worker/GridWorkerPool;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->workers:Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method public execute(Lorg/apache/ignite/internal/util/worker/GridWorker;)V
    .locals 3
    .param p1, "w"    # Lorg/apache/ignite/internal/util/worker/GridWorker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->workers:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->exec:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/apache/ignite/internal/util/worker/GridWorkerPool$1;

    invoke-direct {v2, p0, p1}, Lorg/apache/ignite/internal/util/worker/GridWorkerPool$1;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorkerPool;Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 92
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->workers:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lorg/apache/ignite/compute/ComputeExecutionRejectedException;

    const-string v2, "Failed to execute worker due to execution rejection."

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/compute/ComputeExecutionRejectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 82
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catch_1
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->workers:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v2, "Failed to execute worker due to runtime exception."

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 87
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->workers:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 90
    throw v0
.end method

.method public join(Z)V
    .locals 3
    .param p1, "cancel"    # Z

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->workers:Ljava/util/Collection;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cancel(Ljava/lang/Iterable;)V

    .line 105
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    .line 108
    .local v0, "interrupted":Z
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->workers:Ljava/util/Collection;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Iterable;Lorg/apache/ignite/IgniteLogger;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 115
    :cond_1
    return-void

    .line 112
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v1
.end method
