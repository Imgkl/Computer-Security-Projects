.class public Lorg/apache/ignite/internal/executor/GridExecutorService;
.super Ljava/lang/Object;
.source "GridExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;,
        Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private futs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field private isBeingShutdown:Z

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private lsnr:Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;

.field private final mux:Ljava/lang/Object;

.field private prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lorg/apache/ignite/internal/executor/GridExecutorService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->futs:Ljava/util/List;

    .line 95
    new-instance v0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;-><init>(Lorg/apache/ignite/internal/executor/GridExecutorService;Lorg/apache/ignite/internal/executor/GridExecutorService$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->lsnr:Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->mux:Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 2
    .param p1, "prj"    # Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->futs:Ljava/util/List;

    .line 95
    new-instance v0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;-><init>(Lorg/apache/ignite/internal/executor/GridExecutorService;Lorg/apache/ignite/internal/executor/GridExecutorService$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->lsnr:Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->mux:Ljava/lang/Object;

    .line 114
    sget-boolean v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 115
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 117
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .line 118
    iput-object p2, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 119
    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/executor/GridExecutorService;

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->log:Lorg/apache/ignite/IgniteLogger;

    .line 120
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/executor/GridExecutorService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/executor/GridExecutorService;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->mux:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/executor/GridExecutorService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/executor/GridExecutorService;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->futs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/executor/GridExecutorService;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/executor/GridExecutorService;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private addFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 588
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->lsnr:Lorg/apache/ignite/internal/executor/GridExecutorService$TaskTerminateListener;

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 591
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->futs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;-><init>(Lorg/apache/ignite/internal/executor/GridExecutorService;Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    monitor-exit v1

    return-object v0

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private cancelFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->cancel()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to cancel task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private checkShutdown()V
    .locals 3

    .prologue
    .line 574
    iget-object v1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 575
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->isBeingShutdown:Z

    if-eqz v0, :cond_0

    .line 576
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v2, "Failed to execute command during executor shutdown."

    invoke-direct {v0, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 17
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v14, 0x0

    .line 192
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v10

    .line 194
    .local v10, "now":J
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 196
    cmp-long v12, p1, v14

    if-nez v12, :cond_2

    const-wide v6, 0x7fffffffffffffffL

    .line 199
    .local v6, "end":J
    :goto_0
    cmp-long v12, v6, v14

    if-gez v12, :cond_0

    .line 200
    const-wide v6, 0x7fffffffffffffffL

    .line 205
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->mux:Ljava/lang/Object;

    monitor-enter v13

    .line 206
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->futs:Ljava/util/List;

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 207
    .local v9, "locTasks":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 211
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    cmp-long v12, v10, v6

    if-gez v12, :cond_3

    .line 212
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 215
    .local v5, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    sub-long v12, v6, v10

    :try_start_1
    invoke-interface {v5, v12, v13}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get(J)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v10

    .line 230
    goto :goto_1

    .line 196
    .end local v5    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    .end local v6    # "end":J
    .end local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    .end local v9    # "locTasks":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    :cond_2
    add-long v6, p1, v10

    goto :goto_0

    .line 207
    .restart local v6    # "end":J
    :catchall_0
    move-exception v12

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 217
    .restart local v5    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    .restart local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    .restart local v9    # "locTasks":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    :catch_0
    move-exception v4

    .line 218
    .local v4, "e":Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to get task result: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 220
    const/4 v12, 0x0

    .line 232
    .end local v4    # "e":Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException;
    .end local v5    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :goto_2
    return v12

    .line 222
    .restart local v5    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :catch_1
    move-exception v4

    .line 223
    .local v4, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to get task result: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 225
    invoke-virtual {v4}, Lorg/apache/ignite/IgniteCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/InterruptedException;

    if-eqz v12, :cond_1

    .line 226
    new-instance v12, Ljava/lang/InterruptedException;

    const-string v13, "Got interrupted while waiting for task completion."

    invoke-direct {v12, v13}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 232
    .end local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v5    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :cond_3
    const/4 v12, 0x1

    goto :goto_2
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/Runnable;

    .prologue
    .line 556
    const-string v0, "cmd != null"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    invoke-direct {p0}, Lorg/apache/ignite/internal/executor/GridExecutorService;->checkShutdown()V

    .line 560
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 563
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    iget-object v2, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/lang/Runnable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/executor/GridExecutorService;->addFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    .line 568
    return-void

    .line 566
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 306
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/ignite/internal/executor/GridExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 20
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const-string v16, "tasks != null"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    const-wide/16 v16, 0x0

    cmp-long v16, p2, v16

    if-ltz v16, :cond_1

    const/16 v16, 0x1

    :goto_0
    const-string v17, "timeout >= 0"

    invoke-static/range {v16 .. v17}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 326
    const-string v16, "unit != null"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v12

    .line 330
    .local v12, "now":J
    sget-object v16, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    .line 332
    const-wide/16 v16, 0x0

    cmp-long v16, p2, v16

    if-nez v16, :cond_2

    const-wide v6, 0x7fffffffffffffffL

    .line 335
    .local v6, "end":J
    :goto_1
    const-wide/16 v16, 0x0

    cmp-long v16, v6, v16

    if-gez v16, :cond_0

    .line 336
    const-wide v6, 0x7fffffffffffffffL

    .line 338
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/executor/GridExecutorService;->checkShutdown()V

    .line 340
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v15, "taskFuts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/Callable;

    .line 347
    .local v14, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 350
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v14, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 353
    .local v5, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    .line 356
    invoke-interface {v15, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v12

    .line 359
    goto :goto_2

    .line 325
    .end local v5    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    .end local v6    # "end":J
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "now":J
    .end local v14    # "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v15    # "taskFuts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    :cond_1
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 332
    .restart local v12    # "now":J
    :cond_2
    add-long v6, p2, v12

    goto :goto_1

    .line 353
    .restart local v6    # "end":J
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v14    # "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .restart local v15    # "taskFuts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    :catchall_0
    move-exception v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v16

    .line 361
    .end local v14    # "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :cond_3
    const/4 v11, 0x0

    .line 363
    .local v11, "isInterrupted":Z
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 364
    .restart local v5    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    if-nez v11, :cond_4

    cmp-long v16, v12, v6

    if-gez v16, :cond_4

    .line 366
    sub-long v16, v6, v12

    :try_start_1
    move-wide/from16 v0, v16

    invoke-interface {v5, v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get(J)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    :cond_4
    :goto_4
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v12

    .line 386
    goto :goto_3

    .line 368
    :catch_0
    move-exception v10

    .line 369
    .local v10, "ignore":Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Timeout occurred during getting task result: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 372
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/ignite/internal/executor/GridExecutorService;->cancelFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_4

    .line 374
    .end local v10    # "ignore":Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException;
    :catch_1
    move-exception v4

    .line 375
    .local v4, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {v4}, Lorg/apache/ignite/IgniteCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/InterruptedException;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 378
    const/4 v11, 0x1

    .line 380
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/ignite/internal/executor/GridExecutorService;->cancelFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_4

    .line 389
    .end local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v5    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    :cond_6
    if-eqz v11, :cond_7

    .line 390
    new-instance v16, Ljava/lang/InterruptedException;

    const-string v17, "Got interrupted while waiting for tasks invocation."

    invoke-direct/range {v16 .. v17}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 392
    :cond_7
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 395
    .local v8, "futs":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 398
    .restart local v5    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    invoke-interface {v5}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v16

    if-nez v16, :cond_8

    .line 399
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/ignite/internal/executor/GridExecutorService;->cancelFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 401
    :cond_8
    new-instance v16, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/executor/GridExecutorService$TaskFutureWrapper;-><init>(Lorg/apache/ignite/internal/executor/GridExecutorService;Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 404
    .end local v5    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    :cond_9
    return-object v8
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 437
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const-wide/16 v2, 0x0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v2, v3, v1}, Lorg/apache/ignite/internal/executor/GridExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    const-string v2, "Timeout occurred during commands execution."

    invoke-direct {v1, v2, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 22
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const-string v19, "tasks != null"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1

    const/16 v19, 0x1

    :goto_0
    const-string v20, "!tasks.isEmpty()"

    invoke-static/range {v19 .. v20}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 462
    const-wide/16 v20, 0x0

    cmp-long v19, p2, v20

    if-ltz v19, :cond_2

    const/16 v19, 0x1

    :goto_1
    const-string v20, "timeout >= 0"

    invoke-static/range {v19 .. v20}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 463
    const-string v19, "unit != null"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 467
    .local v16, "now":J
    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    .line 469
    const-wide/16 v20, 0x0

    cmp-long v19, p2, v20

    if-nez v19, :cond_3

    const-wide v8, 0x7fffffffffffffffL

    .line 472
    .local v8, "end":J
    :goto_2
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-gez v19, :cond_0

    .line 473
    const-wide v8, 0x7fffffffffffffffL

    .line 475
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/executor/GridExecutorService;->checkShutdown()V

    .line 477
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v18, "taskFuts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Callable;

    .line 483
    .local v5, "cmd":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 486
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v19

    sget-object v20, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v5, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 489
    .local v10, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    .line 492
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 461
    .end local v5    # "cmd":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v8    # "end":J
    .end local v10    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v16    # "now":J
    .end local v18    # "taskFuts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    :cond_1
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 462
    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 469
    .restart local v16    # "now":J
    :cond_3
    add-long v8, p2, v16

    goto :goto_2

    .line 489
    .restart local v5    # "cmd":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .restart local v8    # "end":J
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v18    # "taskFuts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    :catchall_0
    move-exception v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v19

    .line 495
    .end local v5    # "cmd":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :cond_4
    const/4 v15, 0x0

    .line 497
    .local v15, "res":Ljava/lang/Object;, "TT;"
    const/4 v13, 0x0

    .line 498
    .local v13, "isInterrupted":Z
    const/4 v14, 0x0

    .line 500
    .local v14, "isResRcvd":Z
    const/4 v7, 0x0

    .line 502
    .local v7, "errCnt":I
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v15    # "res":Ljava/lang/Object;, "TT;"
    :cond_5
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 503
    .restart local v10    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v16

    .line 505
    const/4 v4, 0x0

    .line 507
    .local v4, "cancel":Z
    if-nez v13, :cond_7

    if-nez v14, :cond_7

    cmp-long v19, v16, v8

    if-gez v19, :cond_7

    .line 509
    sub-long v20, v8, v16

    :try_start_1
    move-wide/from16 v0, v20

    invoke-interface {v10, v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get(J)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .line 511
    .restart local v15    # "res":Ljava/lang/Object;, "TT;"
    const/4 v14, 0x1

    goto :goto_4

    .line 516
    .end local v15    # "res":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v12

    .line 517
    .local v12, "ignored":Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/executor/GridExecutorService;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Timeout occurred during getting task result: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 520
    :cond_6
    const/4 v4, 0x1

    .line 533
    .end local v12    # "ignored":Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;
    :cond_7
    :goto_5
    if-nez v13, :cond_8

    if-nez v14, :cond_8

    if-eqz v4, :cond_5

    :cond_8
    invoke-interface {v10}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v19

    if-nez v19, :cond_5

    .line 534
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/ignite/internal/executor/GridExecutorService;->cancelFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_4

    .line 522
    :catch_1
    move-exception v6

    .line 525
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {v6}, Lorg/apache/ignite/IgniteCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/InterruptedException;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 526
    const/4 v13, 0x1

    goto :goto_5

    .line 528
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 538
    .end local v4    # "cancel":Z
    .end local v6    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v10    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    :cond_a
    if-eqz v13, :cond_b

    .line 539
    new-instance v19, Ljava/lang/InterruptedException;

    const-string v20, "Got interrupted while waiting for tasks invocation."

    invoke-direct/range {v19 .. v20}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 543
    :cond_b
    if-nez v14, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v7, :cond_c

    .line 544
    new-instance v19, Ljava/util/concurrent/ExecutionException;

    const-string v20, "Failed to get any task completion."

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 548
    :cond_c
    if-nez v14, :cond_d

    .line 549
    new-instance v19, Ljava/util/concurrent/TimeoutException;

    const-string v20, "Timeout occurred during tasks invocation."

    invoke-direct/range {v19 .. v20}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 551
    :cond_d
    return-object v15
.end method

.method public isShutdown()Z
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->isBeingShutdown:Z

    monitor-exit v1

    return v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isTerminated()Z
    .locals 2

    .prologue
    .line 185
    iget-object v1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->isBeingShutdown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->futs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iput-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .line 131
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->isBeingShutdown:Z

    if-eqz v0, :cond_0

    .line 147
    monitor-exit v1

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->isBeingShutdown:Z

    .line 150
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v5, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->mux:Ljava/lang/Object;

    monitor-enter v5

    .line 159
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->futs:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 161
    .local v0, "cpFuts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->isBeingShutdown:Z

    .line 162
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 166
    .local v3, "task":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :try_start_1
    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->cancel()Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to cancel task: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 162
    .end local v0    # "cpFuts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "task":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 173
    .restart local v0    # "cpFuts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 278
    const-string v0, "task != null"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lorg/apache/ignite/internal/executor/GridExecutorService;->checkShutdown()V

    .line 282
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 285
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    iget-object v2, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/lang/Runnable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/executor/GridExecutorService;->addFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 288
    iget-object v1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p2, "res":Ljava/lang/Object;, "TT;"
    const-string v1, "task != null"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Lorg/apache/ignite/internal/executor/GridExecutorService;->checkShutdown()V

    .line 257
    iget-object v1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 260
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    iget-object v3, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/lang/Runnable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/executor/GridExecutorService$1;

    invoke-direct {v2, p0, p2}, Lorg/apache/ignite/internal/executor/GridExecutorService$1;-><init>(Lorg/apache/ignite/internal/executor/GridExecutorService;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 269
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/executor/GridExecutorService;->addFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 272
    iget-object v2, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v1

    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const-string v0, "task != null"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lorg/apache/ignite/internal/executor/GridExecutorService;->checkShutdown()V

    .line 241
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 244
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    iget-object v2, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/executor/GridExecutorService;->addFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 247
    iget-object v1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 125
    return-void
.end method
