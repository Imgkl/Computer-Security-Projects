.class public Lorg/apache/ignite/internal/IgniteComputeImpl;
.super Lorg/apache/ignite/internal/AsyncSupportAdapter;
.source "IgniteComputeImpl.java"

# interfaces
.implements Lorg/apache/ignite/IgniteCompute;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/AsyncSupportAdapter",
        "<",
        "Lorg/apache/ignite/IgniteCompute;",
        ">;",
        "Lorg/apache/ignite/IgniteCompute;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

.field private subjId:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/apache/ignite/internal/IgniteComputeImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/IgniteComputeImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;Ljava/util/UUID;Z)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "prj"    # Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;
    .param p3, "subjId"    # Ljava/util/UUID;
    .param p4, "async"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p4}, Lorg/apache/ignite/internal/AsyncSupportAdapter;-><init>(Z)V

    .line 69
    iput-object p1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 70
    iput-object p2, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .line 71
    iput-object p3, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->subjId:Ljava/util/UUID;

    .line 72
    return-void
.end method

.method private guard()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 524
    return-void
.end method

.method private unguard()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    .line 531
    return-void
.end method


# virtual methods
.method public activeTaskFutures()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/compute/ComputeTaskFuture",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 417
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 420
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->taskFutures()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 423
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v0
.end method

.method public affinityCall(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteCallable;)Ljava/lang/Object;
    .locals 3
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "affKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 104
    .local p3, "job":Lorg/apache/ignite/lang/IgniteCallable;, "Lorg/apache/ignite/lang/IgniteCallable<TR;>;"
    const-string v1, "affKey"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    const-string v1, "job"

    invoke-static {p3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 110
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->affinityCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/Callable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteComputeImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 116
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v1
.end method

.method public affinityRun(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteRunnable;)V
    .locals 3
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "affKey"    # Ljava/lang/Object;
    .param p3, "job"    # Lorg/apache/ignite/lang/IgniteRunnable;

    .prologue
    .line 86
    const-string v1, "affKey"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    const-string v1, "job"

    invoke-static {p3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 92
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->affinityRun(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteComputeImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    .line 100
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v1
.end method

.method public apply(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;TT;)TR;"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "job":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    const-string v1, "job"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 315
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteComputeImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 321
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    return-object v1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v1
.end method

.method public apply(Lorg/apache/ignite/lang/IgniteClosure;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteReducer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R1:",
            "Ljava/lang/Object;",
            "R2:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR1;>;",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TR1;TR2;>;)TR2;"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "job":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR1;>;"
    .local p2, "args":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p3, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<TR1;TR2;>;"
    const-string v1, "job"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    const-string v1, "rdc"

    invoke-static {p3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    const-string v1, "args"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 405
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/lang/IgniteClosure;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteReducer;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteComputeImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 411
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    return-object v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v1
.end method

.method public apply(Lorg/apache/ignite/lang/IgniteClosure;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Ljava/util/Collection",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "job":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR;>;"
    .local p2, "args":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const-string v1, "job"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    const-string v1, "args"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 367
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/lang/IgniteClosure;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteComputeImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    return-object v1

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v1
.end method

.method public broadcast(Lorg/apache/ignite/lang/IgniteCallable;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<TR;>;)",
            "Ljava/util/Collection",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "job":Lorg/apache/ignite/lang/IgniteCallable;, "Lorg/apache/ignite/lang/IgniteCallable<TR;>;"
    const-string v1, "job"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 247
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/GridClosureCallMode;->BROADCAST:Lorg/apache/ignite/internal/GridClosureCallMode;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/ignite/lang/IgniteCallable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteComputeImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    return-object v1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v1
.end method

.method public broadcast(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;TT;)",
            "Ljava/util/Collection",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "job":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    const-string v1, "job"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 264
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->broadcast(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteComputeImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    return-object v1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v1
.end method

.method public broadcast(Lorg/apache/ignite/lang/IgniteRunnable;)V
    .locals 4
    .param p1, "job"    # Lorg/apache/ignite/lang/IgniteRunnable;

    .prologue
    .line 225
    const-string v1, "job"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 230
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/GridClosureCallMode;->BROADCAST:Lorg/apache/ignite/internal/GridClosureCallMode;

    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/lang/Runnable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteComputeImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    .line 238
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v1
.end method

.method public call(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteReducer;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R1:",
            "Ljava/lang/Object;",
            "R2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<TR1;>;>;",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TR1;TR2;>;)TR2;"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "jobs":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/lang/IgniteCallable<TR1;>;>;"
    .local p2, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<TR1;TR2;>;"
    const-string v1, "jobs"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 380
    const-string v1, "rdc"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 385
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v2, p1, p2, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->forkjoinAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteReducer;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteComputeImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 391
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    return-object v1

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v1
.end method

.method public call(Lorg/apache/ignite/lang/IgniteCallable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "job":Lorg/apache/ignite/lang/IgniteCallable;, "Lorg/apache/ignite/lang/IgniteCallable<TR;>;"
    const-string v1, "job"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 332
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteComputeImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 338
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    return-object v1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v1
.end method

.method public call(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<TR;>;>;)",
            "Ljava/util/Collection",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "jobs":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/lang/IgniteCallable<TR;>;>;"
    const-string v1, "jobs"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 349
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteComputeImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    return-object v1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v1
.end method

.method public clusterGroup()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    return-object v0
.end method

.method protected createAsyncInstance()Lorg/apache/ignite/IgniteCompute;
    .locals 5

    .prologue
    .line 76
    new-instance v0, Lorg/apache/ignite/internal/IgniteComputeImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->subjId:Ljava/util/UUID;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/IgniteComputeImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;Ljava/util/UUID;Z)V

    return-object v0
.end method

.method protected bridge synthetic createAsyncInstance()Lorg/apache/ignite/lang/IgniteAsyncSupport;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->createAsyncInstance()Lorg/apache/ignite/IgniteCompute;

    move-result-object v0

    return-object v0
.end method

.method protected createFuture(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/lang/IgniteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TR;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteComputeImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 557
    :cond_0
    check-cast p1, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    .end local p1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TR;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->publicFuture()Lorg/apache/ignite/compute/ComputeTaskFuture;

    move-result-object v0

    return-object v0
.end method

.method public execute(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<TT;TR;>;>;TT;)TR;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/compute/ComputeTask<TT;TR;>;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    const-string v1, "taskCls"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 148
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContextIfNotNull(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 149
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBJ_ID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->subjId:Ljava/util/UUID;

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContextIfNotNull(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 151
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Ljava/lang/Class;Ljava/lang/Object;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteComputeImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 157
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    return-object v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v1
.end method

.method public execute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TR;"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    const-string v1, "taskName"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 128
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContextIfNotNull(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBJ_ID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->subjId:Ljava/util/UUID;

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContextIfNotNull(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 131
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteComputeImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 137
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v1
.end method

.method public execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<TT;TR;>;TT;)TR;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "task":Lorg/apache/ignite/compute/ComputeTask;, "Lorg/apache/ignite/compute/ComputeTask<TT;TR;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    const-string v1, "task"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 168
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContextIfNotNull(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 169
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBJ_ID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->subjId:Ljava/util/UUID;

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContextIfNotNull(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 171
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteComputeImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 177
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    return-object v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v1
.end method

.method public executeAsync(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 3
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    const-string v0, "taskName"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 213
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContextIfNotNull(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBJ_ID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->subjId:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContextIfNotNull(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 219
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v0
.end method

.method public executeAsync(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<TT;TR;>;TT;)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "task":Lorg/apache/ignite/compute/ComputeTask;, "Lorg/apache/ignite/compute/ComputeTask<TT;TR;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    const-string v0, "task"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 192
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContextIfNotNull(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBJ_ID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->subjId:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContextIfNotNull(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 198
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v0
.end method

.method public future()Lorg/apache/ignite/compute/ComputeTaskFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/compute/ComputeTaskFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 562
    invoke-super {p0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;->future()Lorg/apache/ignite/lang/IgniteFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/compute/ComputeTaskFuture;

    return-object v0
.end method

.method public bridge synthetic future()Lorg/apache/ignite/lang/IgniteFuture;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->future()Lorg/apache/ignite/compute/ComputeTaskFuture;

    move-result-object v0

    return-object v0
.end method

.method public localDeployTask(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 5
    .param p2, "clsLdr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/compute/ComputeTask;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/compute/ComputeTask;>;"
    const-string v2, "taskCls"

    const-string v3, "clsLdr"

    invoke-static {p1, v2, p2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 480
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->deploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v0

    .line 482
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v0, :cond_0

    .line 483
    new-instance v2, Lorg/apache/ignite/IgniteDeploymentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to deploy task (was task (re|un)deployed?): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteDeploymentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :catch_0
    move-exception v1

    .line 486
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v2

    .restart local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    .line 491
    return-void
.end method

.method public localTasks()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<**>;>;>;"
        }
    .end annotation

    .prologue
    .line 495
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 498
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->findAllTasks([Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 501
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

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
    .line 540
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iput-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .line 541
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
    .line 550
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->compute()Lorg/apache/ignite/IgniteCompute;

    move-result-object v0

    return-object v0
.end method

.method public run(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/lang/IgniteRunnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "jobs":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/lang/IgniteRunnable;>;"
    const-string v1, "jobs"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 298
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteComputeImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    .line 306
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v1
.end method

.method public run(Lorg/apache/ignite/lang/IgniteRunnable;)V
    .locals 4
    .param p1, "job"    # Lorg/apache/ignite/lang/IgniteRunnable;

    .prologue
    .line 276
    const-string v1, "job"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 281
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/lang/Runnable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteComputeImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    .line 289
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v1
.end method

.method public undeployTask(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskName"    # Ljava/lang/String;

    .prologue
    .line 507
    const-string v0, "taskName"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 512
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->forRemotes()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->undeployTask(Ljava/lang/String;ZLjava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    .line 517
    return-void

    .line 512
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v0
.end method

.method public bridge synthetic withAsync()Lorg/apache/ignite/IgniteCompute;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;->withAsync()Lorg/apache/ignite/lang/IgniteAsyncSupport;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteCompute;

    return-object v0
.end method

.method public withName(Ljava/lang/String;)Lorg/apache/ignite/IgniteCompute;
    .locals 2
    .param p1, "taskName"    # Ljava/lang/String;

    .prologue
    .line 429
    const-string v0, "taskName"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 434
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_TASK_NAME:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v0, v1, p1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    .line 440
    return-object p0

    .line 437
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v0
.end method

.method public withNoFailover()Lorg/apache/ignite/IgniteCompute;
    .locals 3

    .prologue
    .line 461
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 464
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_NO_FAILOVER:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    .line 470
    return-object p0

    .line 467
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    throw v0
.end method

.method public withTimeout(J)Lorg/apache/ignite/IgniteCompute;
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    .line 445
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "timeout >= 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 447
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->guard()V

    .line 450
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_TIMEOUT:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

    .line 456
    return-object p0

    .line 445
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteComputeImpl;->unguard()V

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
    .line 535
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteComputeImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 536
    return-void
.end method
