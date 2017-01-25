.class public Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridClosureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$3;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4MLA;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T10;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T7;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T4;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T2;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T1;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$TaskNoReduceAdapter;,
        Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

.field private final igfsPool:Ljava/util/concurrent/Executor;

.field private final pubPool:Ljava/util/concurrent/Executor;

.field private stopping:Z

.field private final sysPool:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 59
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    .line 70
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->getSystemExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->sysPool:Ljava/util/concurrent/Executor;

    .line 71
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->pubPool:Ljava/util/concurrent/Executor;

    .line 72
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->getIgfsExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->igfsPool:Ljava/util/concurrent/Executor;

    .line 73
    return-void
.end method

.method private absMap(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/compute/ComputeLoadBalancer;)Ljava/util/Map;
    .locals 9
    .param p1, "mode"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p4, "lb"    # Lorg/apache/ignite/compute/ComputeLoadBalancer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/compute/ComputeLoadBalancer;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 214
    .local p2, "jobs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Runnable;>;"
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v7, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 215
    :cond_0
    sget-boolean v7, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    if-nez p2, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 216
    :cond_1
    sget-boolean v7, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    if-nez p3, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 217
    :cond_2
    sget-boolean v7, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    if-nez p4, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 220
    :cond_3
    :try_start_0
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 221
    new-instance v4, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v4, p0, v7, v8}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;ILorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    .line 223
    .local v4, "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    sget-object v7, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$3;->$SwitchMap$org$apache$ignite$internal$GridClosureCallMode:[I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridClosureCallMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 243
    :cond_4
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->map()Ljava/util/Map;

    move-result-object v7

    .line 246
    .end local v4    # "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    :goto_0
    return-object v7

    .line 225
    .restart local v4    # "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    :pswitch_0
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/cluster/ClusterNode;

    .line 226
    .local v5, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    .line 227
    .local v6, "r":Ljava/lang/Runnable;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->job(Ljava/lang/Runnable;)Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->map(Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 248
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    .end local v5    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v6    # "r":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v7

    throw v7

    .line 233
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v4    # "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    :pswitch_1
    :try_start_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    .line 234
    .restart local v6    # "r":Ljava/lang/Runnable;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->job(Ljava/lang/Runnable;)Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v3

    .line 236
    .local v3, "job":Lorg/apache/ignite/compute/ComputeJob;
    const/4 v7, 0x0

    invoke-interface {p4, v3, v7}, Lorg/apache/ignite/compute/ComputeLoadBalancer;->getBalancedNode(Lorg/apache/ignite/compute/ComputeJob;Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->map(Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;)V

    goto :goto_2

    .line 246
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "job":Lorg/apache/ignite/compute/ComputeJob;
    .end local v4    # "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    .end local v6    # "r":Ljava/lang/Runnable;
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/compute/ComputeLoadBalancer;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p2, "x2"    # Ljava/util/Collection;
    .param p3, "x3"    # Ljava/util/Collection;
    .param p4, "x4"    # Lorg/apache/ignite/compute/ComputeLoadBalancer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->absMap(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/compute/ComputeLoadBalancer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/compute/ComputeLoadBalancer;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p2, "x2"    # Ljava/util/Collection;
    .param p3, "x3"    # Ljava/util/Collection;
    .param p4, "x4"    # Lorg/apache/ignite/compute/ComputeLoadBalancer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->outMap(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/compute/ComputeLoadBalancer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Ljava/lang/Runnable;)Lorg/apache/ignite/compute/ComputeJob;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 48
    invoke-static {p0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->job(Ljava/lang/Runnable;)Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/compute/ComputeJob;
    .locals 1
    .param p0, "x0"    # Ljava/util/concurrent/Callable;

    .prologue
    .line 48
    invoke-static {p0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->job(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Lorg/apache/ignite/compute/ComputeJob;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/lang/IgniteClosure;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->job(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v0

    return-object v0
.end method

.method private callLocal(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "plc"    # Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;",
            "Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 866
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    if-nez p1, :cond_0

    .line 867
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v6}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    .line 912
    :goto_0
    return-object v6

    .line 869
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 873
    :try_start_0
    instance-of v1, p1, Lorg/apache/ignite/internal/util/lang/GridPlainCallable;

    if-nez v1, :cond_1

    .line 874
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getDeployment(Ljava/lang/String;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->inject(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 876
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 878
    .local v5, "ldr":Ljava/lang/ClassLoader;
    new-instance v6, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    invoke-direct {v6}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;-><init>()V

    .line 880
    .local v6, "fut":Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;, "Lorg/apache/ignite/internal/util/worker/GridWorkerFuture<TR;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$2;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "closure-proc-worker"

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$2;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;Ljava/util/concurrent/Callable;)V

    .line 897
    .local v0, "w":Lorg/apache/ignite/internal/util/worker/GridWorker;
    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->setWorker(Lorg/apache/ignite/internal/util/worker/GridWorker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    :try_start_1
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->pool(Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 912
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 902
    :catch_0
    move-exception v8

    .line 903
    .local v8, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute worker due to execution rejection (increase upper bound on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->poolName(Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " executor service)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 906
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 912
    .end local v0    # "w":Lorg/apache/ignite/internal/util/worker/GridWorker;
    .end local v5    # "ldr":Ljava/lang/ClassLoader;
    .end local v6    # "fut":Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;, "Lorg/apache/ignite/internal/util/worker/GridWorkerFuture<TR;>;"
    .end local v8    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v1
.end method

.method private callLocal(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "sys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 855
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    if-eqz p2, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocal(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    goto :goto_0
.end method

.method private static job(Ljava/lang/Runnable;)Lorg/apache/ignite/compute/ComputeJob;
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 1002
    const-string v0, "job"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1004
    instance-of v0, p0, Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4MLA;

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4MLA;-><init>(Ljava/lang/Runnable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4;

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4;-><init>(Ljava/lang/Runnable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    goto :goto_0
.end method

.method private static job(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/compute/ComputeJob;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;)",
            "Lorg/apache/ignite/compute/ComputeJob;"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    const/4 v1, 0x0

    .line 990
    const-string v0, "job"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 992
    instance-of v0, p0, Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA;

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA;-><init>(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;-><init>(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    goto :goto_0
.end method

.method private static job(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Lorg/apache/ignite/compute/ComputeJob;
    .locals 2
    .param p1    # Ljava/lang/Object;
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
            "<TT;TR;>;TT;)",
            "Lorg/apache/ignite/compute/ComputeJob;"
        }
    .end annotation

    .prologue
    .line 978
    .local p0, "job":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR;>;"
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    const-string v0, "job"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 980
    instance-of v0, p0, Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA;-><init>(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;-><init>(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private outMap(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/compute/ComputeLoadBalancer;)Ljava/util/Map;
    .locals 9
    .param p1, "mode"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p4, "lb"    # Lorg/apache/ignite/compute/ComputeLoadBalancer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TR;>;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/compute/ComputeLoadBalancer;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 266
    .local p2, "jobs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TR;>;>;"
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v7, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 267
    :cond_0
    sget-boolean v7, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    if-nez p2, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 268
    :cond_1
    sget-boolean v7, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    if-nez p3, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 269
    :cond_2
    sget-boolean v7, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    if-nez p4, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 272
    :cond_3
    :try_start_0
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 273
    new-instance v5, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, p0, v7, v8}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;ILorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    .line 275
    .local v5, "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    sget-object v7, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$3;->$SwitchMap$org$apache$ignite$internal$GridClosureCallMode:[I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridClosureCallMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 295
    :cond_4
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->map()Ljava/util/Map;

    move-result-object v7

    .line 298
    .end local v5    # "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    :goto_0
    return-object v7

    .line 277
    .restart local v5    # "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    :pswitch_0
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cluster/ClusterNode;

    .line 278
    .local v6, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    .line 279
    .local v0, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->job(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->map(Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 300
    .end local v0    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    .end local v6    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v7

    throw v7

    .line 285
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v5    # "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    :pswitch_1
    :try_start_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    .line 286
    .restart local v0    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->job(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v4

    .line 288
    .local v4, "job":Lorg/apache/ignite/compute/ComputeJob;
    const/4 v7, 0x0

    invoke-interface {p4, v4, v7}, Lorg/apache/ignite/compute/ComputeLoadBalancer;->getBalancedNode(Lorg/apache/ignite/compute/ComputeJob;Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->map(Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;)V

    goto :goto_2

    .line 298
    .end local v0    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "job":Lorg/apache/ignite/compute/ComputeJob;
    .end local v5    # "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pool(Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Ljava/util/concurrent/Executor;
    .locals 3
    .param p1, "plc"    # Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    .prologue
    .line 680
    sget-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$3;->$SwitchMap$org$apache$ignite$internal$processors$closure$GridClosurePolicy:[I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 691
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid closure execution policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :pswitch_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->pubPool:Ljava/util/concurrent/Executor;

    .line 688
    :goto_0
    return-object v0

    .line 685
    :pswitch_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->sysPool:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 688
    :pswitch_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->igfsPool:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private poolName(Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Ljava/lang/String;
    .locals 3
    .param p1, "plc"    # Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    .prologue
    .line 702
    sget-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$3;->$SwitchMap$org$apache$ignite$internal$processors$closure$GridClosurePolicy:[I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 713
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid closure execution policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :pswitch_0
    const-string v0, "public"

    .line 710
    :goto_0
    return-object v0

    .line 707
    :pswitch_1
    const-string v0, "system"

    goto :goto_0

    .line 710
    :pswitch_2
    const-string v0, "igfs"

    goto :goto_0

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private runLocal(Ljava/lang/Runnable;Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .param p1, "c"    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "plc"    # Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 734
    if-nez p1, :cond_0

    .line 735
    new-instance v7, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v7}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    .line 782
    :goto_0
    return-object v7

    .line 737
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 741
    :try_start_0
    instance-of v1, p1, Lorg/apache/ignite/internal/util/lang/GridPlainRunnable;

    if-nez v1, :cond_1

    .line 742
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getDeployment(Ljava/lang/String;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->inject(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 744
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 746
    .local v5, "ldr":Ljava/lang/ClassLoader;
    new-instance v7, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    invoke-direct {v7}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;-><init>()V

    .line 748
    .local v7, "fut":Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;
    new-instance v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "closure-proc-worker"

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Ljava/lang/ClassLoader;Ljava/lang/Runnable;Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;)V

    .line 767
    .local v0, "w":Lorg/apache/ignite/internal/util/worker/GridWorker;
    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->setWorker(Lorg/apache/ignite/internal/util/worker/GridWorker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    :try_start_1
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->pool(Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 782
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 772
    :catch_0
    move-exception v8

    .line 773
    .local v8, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute worker due to execution rejection (increase upper bound on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->poolName(Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " executor service)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 776
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 782
    .end local v0    # "w":Lorg/apache/ignite/internal/util/worker/GridWorker;
    .end local v5    # "ldr":Ljava/lang/ClassLoader;
    .end local v7    # "fut":Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;
    .end local v8    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v1
.end method

.method private runLocal(Ljava/lang/Runnable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "c"    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "sys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 724
    if-eqz p2, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runLocal(Ljava/lang/Runnable;Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    goto :goto_0
.end method


# virtual methods
.method public affinityCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/Callable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 7
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "affKey"    # Ljava/lang/Object;
    .param p4    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Callable",
            "<TR;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 405
    .local p3, "job":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    .local p4, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 408
    :try_start_0
    invoke-static {p4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v4, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->finishedFuture(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Class;Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 424
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    :goto_0
    return-object v3

    .line 412
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->affinity()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affinityKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 414
    .local v0, "affKey0":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->affinity()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->mapKeyToNode(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    .line 416
    .local v2, "node":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v3, v4, p4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 418
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;

    const/4 v5, 0x0

    invoke-direct {v4, v2, p3, v5}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 424
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 420
    .end local v0    # "affKey0":Ljava/lang/Object;
    .end local v2    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v4, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;

    invoke-static {v3, v4, v1}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->finishedFuture(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Class;Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 424
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v3
.end method

.method public affinityRun(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 7
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "affKey"    # Ljava/lang/Object;
    .param p3, "job"    # Ljava/lang/Runnable;
    .param p4    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 437
    .local p4, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 440
    :try_start_0
    invoke-static {p4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 441
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v4, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T4;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->finishedFuture(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Class;Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 456
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    :goto_0
    return-object v3

    .line 444
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->affinity()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affinityKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 446
    .local v0, "affKey0":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->affinity()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->mapKeyToNode(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    .line 448
    .local v2, "node":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v3, v4, p4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 450
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T4;

    const/4 v5, 0x0

    invoke-direct {v4, v2, p3, v5}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T4;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Runnable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 456
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 452
    .end local v0    # "affKey0":Ljava/lang/Object;
    .end local v2    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v4, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T4;

    invoke-static {v3, v4, v1}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->finishedFuture(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Class;Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 456
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v3
.end method

.method public broadcast(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
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
            "<TT;TR;>;TT;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Collection",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 585
    .local p1, "job":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 588
    :try_start_0
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    :goto_0
    return-object v0

    .line 591
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v0, v1, p3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 593
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/lang/IgniteClosure;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 596
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0
.end method

.method public broadcastNoFailover(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
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
            "<TT;TR;>;TT;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Collection",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, "job":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 611
    :try_start_0
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    :goto_0
    return-object v0

    .line 614
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v0, v1, p3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 615
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_NO_FAILOVER:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 617
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/lang/IgniteClosure;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 620
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0
.end method

.method public callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 1
    .param p1, "mode"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TR;>;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<",
            "Ljava/util/Collection",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 349
    .local p2, "jobs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TR;>;>;"
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 3
    .param p1, "mode"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "sys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TR;>;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;Z)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<",
            "Ljava/util/Collection",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 365
    .local p2, "jobs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TR;>;>;"
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 366
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 368
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 371
    :try_start_0
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->finishedFuture(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Class;Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 379
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    :goto_0
    return-object v0

    .line 374
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v0, v1, p3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 379
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0
.end method

.method public callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 1
    .param p1, "mode"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p2    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/util/concurrent/Callable",
            "<TR;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 393
    .local p2, "job":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 3
    .param p1, "mode"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "sys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/util/concurrent/Callable",
            "<TR;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;Z)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 536
    .local p2, "job":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 537
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 539
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 542
    :try_start_0
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T7;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->finishedFuture(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Class;Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 550
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    :goto_0
    return-object v0

    .line 545
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v0, v1, p3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 547
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T7;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 550
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0
.end method

.method public callAsync(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
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
            "<TT;TR;>;TT;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 562
    .local p1, "job":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 565
    :try_start_0
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->finishedFuture(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Class;Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 573
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    :goto_0
    return-object v0

    .line 568
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v0, v1, p3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 570
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;-><init>(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 573
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0
.end method

.method public callAsync(Lorg/apache/ignite/lang/IgniteClosure;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 4
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
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
            "<+TT;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<",
            "Ljava/util/Collection",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 634
    .local p1, "job":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR;>;"
    .local p2, "args":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 637
    :try_start_0
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->finishedFuture(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Class;Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 645
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    :goto_0
    return-object v0

    .line 640
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v0, v1, p3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 642
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/lang/IgniteClosure;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 645
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0
.end method

.method public callAsync(Lorg/apache/ignite/lang/IgniteClosure;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteReducer;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 7
    .param p4    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R1:",
            "Ljava/lang/Object;",
            "R2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR1;>;",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TR1;TR2;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR2;>;"
        }
    .end annotation

    .prologue
    .line 658
    .local p1, "job":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR1;>;"
    .local p2, "args":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p3, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<TR1;TR2;>;"
    .local p4, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 661
    :try_start_0
    invoke-static {p4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T10;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->finishedFuture(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Class;Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 669
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    :goto_0
    return-object v0

    .line 664
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v0, v1, p4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 666
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v6

    new-instance v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T10;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T10;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/lang/IgniteClosure;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteReducer;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 669
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0
.end method

.method public callAsyncNoFailover(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1, "mode"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "sys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TR;>;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Collection",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 502
    .local p2, "jobs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TR;>;>;"
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 504
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 507
    :try_start_0
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    :goto_0
    return-object v0

    .line 510
    :cond_1
    :try_start_1
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 513
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_NO_FAILOVER:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v0, v1, p3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 516
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 519
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0
.end method

.method public callAsyncNoFailover(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1, "mode"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p2    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "sys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/util/concurrent/Callable",
            "<TR;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 470
    .local p2, "job":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 472
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 475
    if-nez p2, :cond_1

    .line 476
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    :goto_0
    return-object v0

    .line 478
    :cond_1
    :try_start_1
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 481
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_NO_FAILOVER:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 482
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v0, v1, p3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T7;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 487
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0
.end method

.method public callLocalSafe(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 924
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public callLocalSafe(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .param p2, "plc"    # Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;",
            "Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 949
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocal(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 967
    :goto_0
    return-object v2

    .line 951
    :catch_0
    move-exception v0

    .line 953
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz v2, :cond_0

    .line 954
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closure execution has been rejected (will execute in the same thread) [plc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", closure="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 958
    :try_start_1
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 961
    :catch_1
    move-exception v1

    .line 962
    .local v1, "e2":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 967
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p2, "sys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 936
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    if-eqz p2, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    goto :goto_0
.end method

.method public forkjoinAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteReducer;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 7
    .param p1, "mode"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p4    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R1:",
            "Ljava/lang/Object;",
            "R2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TR1;>;>;",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TR1;TR2;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR2;>;"
        }
    .end annotation

    .prologue
    .line 319
    .local p2, "jobs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TR1;>;>;"
    .local p3, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<TR1;TR2;>;"
    .local p4, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 320
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 321
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 323
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 326
    :try_start_0
    invoke-static {p4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->finishedFuture(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Class;Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 334
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    :goto_0
    return-object v0

    .line 329
    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v0, v1, p4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v6

    new-instance v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteReducer;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 334
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0
.end method

.method public onKernalStop(Z)V
    .locals 6
    .param p1, "cancel"    # Z

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 89
    .local v1, "interrupted":Z
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    const-wide/16 v4, 0xc8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->tryWriteLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    if-eqz v1, :cond_0

    .line 103
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 105
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->stopping:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    .line 111
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Stopped closure processor."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 113
    :cond_1
    return-void

    .line 92
    :cond_2
    const-wide/16 v2, 0xc8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 97
    .local v0, "ignore":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 98
    goto :goto_0

    .line 108
    .end local v0    # "ignore":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    throw v2
.end method

.method public runAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/lang/Runnable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 1
    .param p1, "mode"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p2, "job"    # Ljava/lang/Runnable;
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/lang/Runnable;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/lang/Runnable;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public runAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/lang/Runnable;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 3
    .param p1, "mode"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p2, "job"    # Ljava/lang/Runnable;
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "sys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/lang/Runnable;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;Z)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 185
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 187
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 190
    :try_start_0
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T2;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->finishedFuture(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Class;Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 198
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    :goto_0
    return-object v0

    .line 193
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v0, v1, p3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T2;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/lang/Runnable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 198
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0
.end method

.method public runAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 1
    .param p1, "mode"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, "jobs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Runnable;>;"
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public runAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 5
    .param p1, "mode"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "sys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;Z)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "jobs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Runnable;>;"
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 139
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 141
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 144
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->stopping:Z

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T1;

    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closure processor cannot be used on stopped grid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->finishedFuture(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Class;Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 157
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    :goto_0
    return-object v0

    .line 149
    :cond_2
    :try_start_1
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T1;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->finishedFuture(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Class;Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 157
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 152
    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v0, v1, p3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T1;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 157
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0
.end method

.method public runLocalSafe(Ljava/lang/Runnable;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "c"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 794
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runLocalSafe(Ljava/lang/Runnable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public runLocalSafe(Ljava/lang/Runnable;Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .param p1, "c"    # Ljava/lang/Runnable;
    .param p2, "plc"    # Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 819
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runLocal(Ljava/lang/Runnable;Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 844
    :goto_0
    return-object v2

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_0

    .line 823
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Closure execution failed with error."

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 826
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz v2, :cond_2

    .line 827
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closure execution has been rejected (will execute in the same thread) [plc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", closure="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 831
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 833
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 835
    :catch_1
    move-exception v1

    .line 836
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_1

    .line 837
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Closure execution failed with error."

    invoke-static {v2, v3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 839
    :cond_1
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 844
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public runLocalSafe(Ljava/lang/Runnable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "c"    # Ljava/lang/Runnable;
    .param p2, "sys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 806
    if-eqz p2, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runLocalSafe(Ljava/lang/Runnable;Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/processors/closure/GridClosurePolicy;

    goto :goto_0
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Started closure processor."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method
