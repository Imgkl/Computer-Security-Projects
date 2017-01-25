.class public Lorg/apache/ignite/internal/IgniteSchedulerImpl;
.super Ljava/lang/Object;
.source "IgniteSchedulerImpl.java"

# interfaces
.implements Lorg/apache/ignite/IgniteScheduler;
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private ctx:Lorg/apache/ignite/internal/GridKernalContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 51
    return-void
.end method

.method private guard()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 114
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteEx;->scheduler()Lorg/apache/ignite/IgniteScheduler;

    move-result-object v0

    return-object v0
.end method

.method private unguard()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    .line 121
    return-void
.end method


# virtual methods
.method public callLocal(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/lang/IgniteFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    const-string v0, "c"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->guard()V

    .line 74
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->unguard()V

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

    check-cast v0, Lorg/apache/ignite/internal/GridKernalContext;

    iput-object v0, p0, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 131
    return-void
.end method

.method public runLocal(Ljava/lang/Runnable;)Lorg/apache/ignite/lang/IgniteFuture;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 55
    const-string v0, "r"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->guard()V

    .line 60
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runLocalSafe(Ljava/lang/Runnable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->unguard()V

    throw v0
.end method

.method public scheduleLocal(Ljava/lang/Runnable;Ljava/lang/String;)Lorg/apache/ignite/scheduler/SchedulerFuture;
    .locals 1
    .param p1, "job"    # Ljava/lang/Runnable;
    .param p2, "ptrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/scheduler/SchedulerFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 83
    const-string v0, "job"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->guard()V

    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->schedule()Lorg/apache/ignite/internal/processors/schedule/IgniteScheduleProcessorAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/schedule/IgniteScheduleProcessorAdapter;->schedule(Ljava/lang/Runnable;Ljava/lang/String;)Lorg/apache/ignite/scheduler/SchedulerFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 91
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->unguard()V

    throw v0
.end method

.method public scheduleLocal(Ljava/util/concurrent/Callable;Ljava/lang/String;)Lorg/apache/ignite/scheduler/SchedulerFuture;
    .locals 1
    .param p2, "ptrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/scheduler/SchedulerFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "job":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    const-string v0, "job"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->guard()V

    .line 102
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->schedule()Lorg/apache/ignite/internal/processors/schedule/IgniteScheduleProcessorAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/schedule/IgniteScheduleProcessorAdapter;->schedule(Ljava/util/concurrent/Callable;Ljava/lang/String;)Lorg/apache/ignite/scheduler/SchedulerFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 105
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->unguard()V

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
    .line 125
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteSchedulerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 126
    return-void
.end method
