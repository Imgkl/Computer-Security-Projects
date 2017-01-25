.class Lorg/apache/ignite/internal/processors/task/GridTaskWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridTaskWorker.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/task/GridTaskWorker$5;,
        Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/worker/GridWorker;",
        "Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SPLIT_WARN_THRESHOLD:I = 0x3e8

.field private static final logRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/IgniteLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private continuous:Z

.field private final ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private final delayedRess:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/ignite/internal/GridJobExecuteResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

.field private final evtLsnr:Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;

.field private final fut:Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;"
        }
    .end annotation
.end field

.field private internal:Z

.field private jobRes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/GridJobResultImpl;",
            ">;"
        }
    .end annotation
.end field

.field private lockRespProc:Z

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private final mapper:Lorg/apache/ignite/compute/ComputeTaskContinuousMapper;

.field private final marsh:Lorg/apache/ignite/marshaller/Marshaller;

.field private final mux:Ljava/lang/Object;

.field private final noFailover:Z

.field private final resCache:Z

.field private final ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

.field private state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

.field private final subjId:Ljava/util/UUID;

.field private task:Lorg/apache/ignite/compute/ComputeTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/compute/ComputeTask",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field private final taskCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final thCtx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Object;Lorg/apache/ignite/internal/GridTaskSessionImpl;Lorg/apache/ignite/internal/ComputeTaskInternalFuture;Ljava/lang/Class;Lorg/apache/ignite/compute/ComputeTask;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;Ljava/util/Map;Ljava/util/UUID;)V
    .locals 4
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "ses"    # Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .param p5    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lorg/apache/ignite/compute/ComputeTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .param p8, "evtLsnr"    # Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;
    .param p9    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10, "subjId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "TT;",
            "Lorg/apache/ignite/internal/GridTaskSessionImpl;",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<TT;TR;>;",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    .local p4, "fut":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<TR;>;"
    .local p5, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p6, "task":Lorg/apache/ignite/compute/ComputeTask;, "Lorg/apache/ignite/compute/ComputeTask<TT;TR;>;"
    .local p9, "thCtx":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "grid-task-worker"

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 105
    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->WAITING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    .line 120
    new-instance v1, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v1}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->delayedRess:Ljava/util/Queue;

    .line 126
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->lockRespProc:Z

    .line 141
    new-instance v1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$1;-><init>(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mapper:Lorg/apache/ignite/compute/ComputeTaskContinuousMapper;

    .line 222
    sget-boolean v1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 223
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p4, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 224
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p8, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 225
    :cond_2
    sget-boolean v1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez p7, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 227
    :cond_3
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->arg:Ljava/lang/Object;

    .line 228
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 229
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->fut:Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    .line 230
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    .line 231
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->taskCls:Ljava/lang/Class;

    .line 232
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->task:Lorg/apache/ignite/compute/ComputeTask;

    .line 233
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 234
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->evtLsnr:Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;

    .line 235
    iput-object p9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->thCtx:Ljava/util/Map;

    .line 236
    iput-object p10, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->subjId:Ljava/util/UUID;

    .line 238
    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v1, p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    .line 240
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    .line 242
    const-class v1, Lorg/apache/ignite/compute/ComputeTaskNoResultCache;

    invoke-virtual {p7, p5, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->annotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->resCache:Z

    .line 244
    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_NO_FAILOVER:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 246
    .local v0, "noFailover":Ljava/lang/Boolean;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->noFailover:Z

    .line 247
    return-void

    .line 242
    .end local v0    # "noFailover":Ljava/lang/Boolean;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 246
    .restart local v0    # "noFailover":Ljava/lang/Boolean;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskWorker;
    .param p1, "x1"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->processMappedJobs(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskWorker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getTaskTopology()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->arg:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/compute/ComputeTask;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->task:Lorg/apache/ignite/compute/ComputeTask;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->noFailover:Z

    return v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskWorker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "x3"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->recordJobEvent(ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private cancelChildren()V
    .locals 13

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    const/4 v12, 0x1

    .line 1031
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1033
    .local v0, "doomed":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobResultImpl;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v7

    .line 1035
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    if-eqz v6, :cond_1

    .line 1036
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/GridJobResultImpl;

    .line 1037
    .local v5, "res":Lorg/apache/ignite/internal/GridJobResultImpl;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridJobResultImpl;->hasResponse()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1038
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1039
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "res":Lorg/apache/ignite/internal/GridJobResultImpl;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1042
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/GridJobResultImpl;

    .line 1043
    .restart local v5    # "res":Lorg/apache/ignite/internal/GridJobResultImpl;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridJobResultImpl;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    .line 1045
    .local v4, "nodeId":Ljava/util/UUID;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1047
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridJobResultImpl;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/compute/ComputeJobContext;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v12}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelJob(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Z)V

    goto :goto_1

    .line 1050
    :cond_3
    :try_start_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    .line 1052
    .local v3, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v3, :cond_2

    .line 1053
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB_CANCEL:Lorg/apache/ignite/internal/GridTopic;

    new-instance v8, Lorg/apache/ignite/internal/GridJobCancelRequest;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridJobResultImpl;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/ignite/compute/ComputeJobContext;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/ignite/internal/GridJobCancelRequest;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Z)V

    sget-object v9, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v6, v3, v7, v8, v9}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1058
    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catch_0
    move-exception v1

    .line 1059
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->isDeadNode(Ljava/util/UUID;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1060
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send cancel request to node (will ignore) [nodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", taskName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", taskSesId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", jobSesId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridJobResultImpl;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/compute/ComputeJobContext;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1066
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v4    # "nodeId":Ljava/util/UUID;
    .end local v5    # "res":Lorg/apache/ignite/internal/GridJobResultImpl;
    :cond_4
    return-void
.end method

.method private failover(Lorg/apache/ignite/internal/GridJobExecuteResponse;Lorg/apache/ignite/internal/GridJobResultImpl;Ljava/util/Collection;)Z
    .locals 11
    .param p1, "res"    # Lorg/apache/ignite/internal/GridJobExecuteResponse;
    .param p2, "jobRes"    # Lorg/apache/ignite/internal/GridJobResultImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridJobExecuteResponse;",
            "Lorg/apache/ignite/internal/GridJobResultImpl;",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    .local p3, "top":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v9, 0x5d

    .line 954
    sget-boolean v5, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 957
    :cond_0
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridJobResultImpl;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v7

    const-class v8, Lorg/apache/ignite/compute/ComputeJobBeforeFailover;

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->invokeAnnotated(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 960
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->failover()Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v6, p2, v7}, Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;->failover(Lorg/apache/ignite/internal/GridTaskSessionImpl;Lorg/apache/ignite/compute/ComputeJobResult;Ljava/util/List;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    .line 962
    .local v3, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v3, :cond_2

    .line 963
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to failover a job to another node (failover SPI returned null) [job="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridJobResultImpl;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", node="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridJobResultImpl;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 966
    .local v2, "msg":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 967
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 969
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridJobResultImpl;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 971
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1001
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :goto_0
    return v4

    .line 976
    .restart local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 977
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resolved job failover [newNode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", oldNode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridJobResultImpl;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", job="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridJobResultImpl;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resMsg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 980
    :cond_3
    invoke-virtual {p2, v3}, Lorg/apache/ignite/internal/GridJobResultImpl;->setNode(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 981
    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridJobResultImpl;->resetResponse()V

    .line 983
    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->resCache:Z

    if-nez v5, :cond_4

    .line 984
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-interface {v5, v7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    monitor-exit v6

    .line 990
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 987
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 993
    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catch_0
    move-exception v0

    .line 994
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to failover job due to undeclared user exception [job="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridJobResultImpl;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 997
    .local v1, "errMsg":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v5, v1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 999
    new-instance v5, Lorg/apache/ignite/compute/ComputeUserUndeclaredException;

    invoke-direct {v5, v1, v0}, Lorg/apache/ignite/compute/ComputeUserUndeclaredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v10, v5}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private getRemoteResults()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1275
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1277
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1279
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/GridJobResultImpl;

    .line 1280
    .local v1, "jobResult":Lorg/apache/ignite/internal/GridJobResultImpl;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridJobResultImpl;->hasResponse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1281
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1283
    .end local v1    # "jobResult":Lorg/apache/ignite/internal/GridJobResultImpl;
    :cond_2
    return-object v2
.end method

.method private getTaskTopology()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 553
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTopology()Ljava/util/Collection;

    move-result-object v5

    .line 555
    .local v5, "top":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-eqz v5, :cond_0

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v6, v5, v7}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nodes(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v4

    .line 557
    .local v4, "subgrid":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v3

    .line 559
    .local v3, "size":I
    if-nez v3, :cond_1

    .line 560
    new-instance v6, Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    const-string v7, "Topology projection is empty."

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 555
    .end local v3    # "size":I
    .end local v4    # "subgrid":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->allNodes()Ljava/util/Collection;

    move-result-object v4

    goto :goto_0

    .line 562
    .restart local v3    # "size":I
    .restart local v4    # "subgrid":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 564
    .local v2, "shuffledNodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 565
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 567
    .end local v1    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    .line 569
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 572
    :cond_3
    return-object v2
.end method

.method private getThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->thCtx:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->thCtx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private initializeSpis()V
    .locals 4

    .prologue
    .line 355
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->taskCls:Ljava/lang/Class;

    const-class v3, Lorg/apache/ignite/compute/ComputeTaskSpis;

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->annotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/compute/ComputeTaskSpis;

    .line 357
    .local v0, "spis":Lorg/apache/ignite/compute/ComputeTaskSpis;
    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeTaskSpis;->loadBalancingSpi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->setLoadBalancingSpi(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeTaskSpis;->failoverSpi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->setFailoverSpi(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeTaskSpis;->checkpointSpi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->setCheckpointSpi(Ljava/lang/String;)V

    .line 362
    :cond_0
    return-void
.end method

.method private isDeadNode(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "uid"    # Ljava/util/UUID;

    .prologue
    .line 1336
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->pingNode(Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newTask(Ljava/lang/Class;)Lorg/apache/ignite/compute/ComputeTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<TT;TR;>;>;)",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<TT;TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    .local p1, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/compute/ComputeTask<TT;TR;>;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/compute/ComputeTask;

    .line 345
    .local v0, "task":Lorg/apache/ignite/compute/ComputeTask;, "Lorg/apache/ignite/compute/ComputeTask<TT;TR;>;"
    if-nez v0, :cond_0

    .line 346
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate task (is default constructor available?): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_0
    return-object v0
.end method

.method private processDelayedResponses()V
    .locals 2

    .prologue
    .line 579
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->delayedRess:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .line 581
    .local v0, "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->onResponse(Lorg/apache/ignite/internal/GridJobExecuteResponse;)V

    .line 583
    :cond_0
    return-void
.end method

.method private processMappedJobs(Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    .local p1, "jobs":Ljava/util/Map;, "Ljava/util/Map<+Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/16 v12, 0x5d

    .line 469
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 546
    :goto_0
    return-void

    .line 472
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 474
    .local v3, "jobResList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobResultImpl;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 477
    .local v8, "sibs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 478
    .local v4, "mappedJob":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/compute/ComputeJob;

    .line 479
    .local v1, "job":Lorg/apache/ignite/compute/ComputeJob;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/cluster/ClusterNode;

    .line 481
    .local v5, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v1, :cond_1

    .line 482
    new-instance v9, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Job can not be null [mappedJob="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ses="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 484
    :cond_1
    if-nez v5, :cond_2

    .line 485
    new-instance v9, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Node can not be null [mappedJob="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ses="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 487
    :cond_2
    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    .line 489
    .local v2, "jobId":Lorg/apache/ignite/lang/IgniteUuid;
    new-instance v7, Lorg/apache/ignite/internal/GridJobSiblingImpl;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-direct {v7, v9, v2, v10, v11}, Lorg/apache/ignite/internal/GridJobSiblingImpl;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 491
    .local v7, "sib":Lorg/apache/ignite/internal/GridJobSiblingImpl;
    new-instance v9, Lorg/apache/ignite/internal/GridJobResultImpl;

    invoke-direct {v9, v1, v2, v5, v7}, Lorg/apache/ignite/internal/GridJobResultImpl;-><init>(Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridJobSiblingImpl;)V

    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 494
    iget-boolean v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->resCache:Z

    if-eqz v9, :cond_3

    .line 495
    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_3
    const/16 v9, 0x28

    const-string v10, "Job got mapped."

    invoke-direct {p0, v9, v2, v5, v10}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->recordJobEvent(ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 500
    .end local v1    # "job":Lorg/apache/ignite/compute/ComputeJob;
    .end local v2    # "jobId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v4    # "mappedJob":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v5    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v7    # "sib":Lorg/apache/ignite/internal/GridJobSiblingImpl;
    :cond_4
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v10

    .line 501
    :try_start_0
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    sget-object v11, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->WAITING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    if-eq v9, v11, :cond_5

    .line 502
    new-instance v9, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Task is not in waiting state [state="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", ses="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 525
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 505
    :cond_5
    :try_start_1
    iget-boolean v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->resCache:Z

    if-eqz v9, :cond_6

    .line 506
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v9, v8}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->addJobSiblings(Ljava/util/Collection;)V

    .line 508
    :cond_6
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    if-nez v9, :cond_7

    .line 509
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    .line 514
    :cond_7
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/GridJobResultImpl;

    .line 515
    .local v6, "res":Lorg/apache/ignite/internal/GridJobResultImpl;
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/GridJobResultImpl;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/compute/ComputeJobContext;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v11

    invoke-interface {v9, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 516
    new-instance v9, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Duplicate job ID for remote job found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lorg/apache/ignite/internal/GridJobResultImpl;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/ignite/compute/ComputeJobContext;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 518
    :cond_9
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/apache/ignite/internal/GridJobResultImpl;->setOccupied(Z)V

    .line 520
    iget-boolean v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->resCache:Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->size()I

    move-result v11

    if-le v9, v11, :cond_8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    rem-int/lit16 v9, v9, 0x3e8

    if-nez v9, :cond_8

    .line 521
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Number of jobs in task is too large for task: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Consider reducing number of jobs or disabling job result cache with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "@GridComputeTaskNoResultCache annotation."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v11, v12}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 525
    .end local v6    # "res":Lorg/apache/ignite/internal/GridJobResultImpl;
    :cond_a
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->onMapped()V

    .line 531
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/GridJobResultImpl;

    .line 532
    .restart local v6    # "res":Lorg/apache/ignite/internal/GridJobResultImpl;
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->evtLsnr:Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/GridJobResultImpl;->getSibling()Lorg/apache/ignite/internal/GridJobSiblingImpl;

    move-result-object v10

    invoke-interface {v9, p0, v10}, Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;->onJobSend(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Lorg/apache/ignite/internal/GridJobSiblingImpl;)V

    .line 535
    :try_start_2
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->sendRequest(Lorg/apache/ignite/compute/ComputeJobResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 539
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v10

    .line 540
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v6, v9}, Lorg/apache/ignite/internal/GridJobResultImpl;->setOccupied(Z)V

    .line 541
    monitor-exit v10

    goto :goto_3

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 539
    :catchall_2
    move-exception v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v10

    .line 540
    const/4 v11, 0x0

    :try_start_4
    invoke-virtual {v6, v11}, Lorg/apache/ignite/internal/GridJobResultImpl;->setOccupied(Z)V

    .line 541
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v9

    :catchall_3
    move-exception v9

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v9

    .line 545
    .end local v6    # "res":Lorg/apache/ignite/internal/GridJobResultImpl;
    :cond_b
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->processDelayedResponses()V

    goto/16 :goto_0
.end method

.method private recordJobEvent(ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)V
    .locals 2
    .param p1, "evtType"    # I
    .param p2, "jobId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "evtNode"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 1254
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1255
    new-instance v0, Lorg/apache/ignite/events/JobEvent;

    invoke-direct {v0}, Lorg/apache/ignite/events/JobEvent;-><init>()V

    .line 1257
    .local v0, "evt":Lorg/apache/ignite/events/JobEvent;
    invoke-virtual {v0, p4}, Lorg/apache/ignite/events/JobEvent;->message(Ljava/lang/String;)V

    .line 1258
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/JobEvent;->node(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 1259
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/JobEvent;->taskName(Ljava/lang/String;)V

    .line 1260
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/JobEvent;->taskClassName(Ljava/lang/String;)V

    .line 1261
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/JobEvent;->taskSessionId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1262
    invoke-virtual {v0, p3}, Lorg/apache/ignite/events/JobEvent;->taskNode(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 1263
    invoke-virtual {v0, p2}, Lorg/apache/ignite/events/JobEvent;->jobId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1264
    invoke-virtual {v0, p1}, Lorg/apache/ignite/events/JobEvent;->type(I)V

    .line 1265
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->subjectId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/JobEvent;->taskSubjectId(Ljava/util/UUID;)V

    .line 1267
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 1269
    .end local v0    # "evt":Lorg/apache/ignite/events/JobEvent;
    :cond_0
    return-void
.end method

.method private recordTaskEvent(ILjava/lang/String;)V
    .locals 9
    .param p1, "evtType"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1232
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->internal:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1233
    new-instance v0, Lorg/apache/ignite/events/TaskEvent;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskClassName()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->internal:Z

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->subjId:Ljava/util/UUID;

    move-object v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/events/TaskEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;)V

    .line 1243
    .local v0, "evt":Lorg/apache/ignite/events/Event;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 1245
    .end local v0    # "evt":Lorg/apache/ignite/events/Event;
    :cond_0
    return-void
.end method

.method private reduce(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 898
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    const/4 v2, 0x0

    .line 899
    .local v2, "reduceRes":Ljava/lang/Object;, "TR;"
    const/4 v3, 0x0

    .line 904
    .local v3, "userE":Ljava/lang/Throwable;
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    new-instance v6, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$4;

    invoke-direct {v6, p0, p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$4;-><init>(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Ljava/util/List;)V

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->wrapThreadLoader(Ljava/lang/ClassLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 911
    :try_start_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 912
    :try_start_2
    sget-boolean v5, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    sget-object v7, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->REDUCING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    if-eq v5, v7, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid task state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 915
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 923
    .end local v2    # "reduceRes":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v0

    .line 924
    .local v0, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :try_start_4
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to reduce job results for task (any nodes from task topology left grid?): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->task:Lorg/apache/ignite/compute/ComputeTask;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 926
    move-object v3, v0

    .line 943
    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 945
    .end local v0    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :goto_0
    return-void

    .line 914
    .restart local v2    # "reduceRes":Ljava/lang/Object;, "TR;"
    :cond_0
    :try_start_5
    sget-object v5, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->REDUCED:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    .line 915
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 918
    :try_start_6
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 919
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reduced job responses [reduceRes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 921
    :cond_1
    const/16 v5, 0x19

    const-string v6, "Task reduced."

    invoke-direct {p0, v5, v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->recordTaskEvent(ILjava/lang/String;)V
    :try_end_6
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 943
    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 911
    :catchall_1
    move-exception v5

    :try_start_7
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v6
    :try_end_7
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 912
    :try_start_8
    sget-boolean v7, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    sget-object v8, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->REDUCING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    if-eq v7, v8, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid task state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 915
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v5
    :try_end_9
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 928
    .end local v2    # "reduceRes":Ljava/lang/Object;, "TR;"
    :catch_1
    move-exception v0

    .line 929
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_a
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to reduce job results for task: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->task:Lorg/apache/ignite/compute/ComputeTask;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 931
    move-object v3, v0

    .line 943
    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 914
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v2    # "reduceRes":Ljava/lang/Object;, "TR;"
    :cond_2
    :try_start_b
    sget-object v7, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->REDUCED:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    iput-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    .line 915
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v5
    :try_end_c
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 934
    .end local v2    # "reduceRes":Ljava/lang/Object;, "TR;"
    :catch_2
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to reduce job results due to undeclared user exception [task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->task:Lorg/apache/ignite/compute/ComputeTask;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 938
    .local v1, "errMsg":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v5, v1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 940
    new-instance v4, Lorg/apache/ignite/compute/ComputeUserUndeclaredException;

    invoke-direct {v4, v1, v0}, Lorg/apache/ignite/compute/ComputeUserUndeclaredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 943
    .end local v3    # "userE":Ljava/lang/Throwable;
    .local v4, "userE":Ljava/lang/Throwable;
    invoke-virtual {p0, v2, v4}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 944
    .end local v4    # "userE":Ljava/lang/Throwable;
    .restart local v3    # "userE":Ljava/lang/Throwable;
    goto/16 :goto_0

    .line 943
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "errMsg":Ljava/lang/String;
    :catchall_3
    move-exception v5

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private result(Lorg/apache/ignite/compute/ComputeJobResult;Ljava/util/List;)Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    .locals 2
    .param p1, "jobRes"    # Lorg/apache/ignite/compute/ComputeJobResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Lorg/apache/ignite/compute/ComputeJobResultPolicy;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 820
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 822
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;-><init>(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Lorg/apache/ignite/compute/ComputeJobResult;Ljava/util/List;)V

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->wrapThreadLoader(Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteOutClosure;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    return-object v0
.end method

.method private sendFailoverRequest(Lorg/apache/ignite/internal/GridJobResultImpl;)V
    .locals 6
    .param p1, "jobRes"    # Lorg/apache/ignite/internal/GridJobResultImpl;

    .prologue
    .line 1010
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->evtLsnr:Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridJobResultImpl;->getSibling()Lorg/apache/ignite/internal/GridJobSiblingImpl;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridJobResultImpl;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v2, p0, v3, v4}, Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;->onJobFailover(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Lorg/apache/ignite/internal/GridJobSiblingImpl;Ljava/util/UUID;)V

    .line 1012
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getEndTime()J

    move-result-wide v2

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1014
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1015
    const/16 v2, 0x2b

    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridJobResultImpl;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeJobContext;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridJobResultImpl;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    const-string v5, "Job failed over."

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->recordJobEvent(ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)V

    .line 1019
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->sendRequest(Lorg/apache/ignite/compute/ComputeJobResult;)V

    .line 1025
    :goto_0
    return-void

    .line 1024
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to fail-over job due to task timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private sendRequest(Lorg/apache/ignite/compute/ComputeJobResult;)V
    .locals 40
    .param p1, "res"    # Lorg/apache/ignite/compute/ComputeJobResult;

    .prologue
    .line 1072
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1074
    :cond_0
    const/16 v38, 0x0

    .line 1076
    .local v38, "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/compute/ComputeJobResult;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v37

    .line 1079
    .local v37, "node":Lorg/apache/ignite/cluster/ClusterNode;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v32

    .line 1085
    .local v32, "curNode":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v32, :cond_2

    .line 1086
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send job request because remote node left grid (if fail-over is enabled, will attempt fail-over to another node) [node="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", taskName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", taskSesId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", jobSesId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/compute/ComputeJobContext;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/compute/ComputeJobResult;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v6

    const-class v7, Lorg/apache/ignite/compute/ComputeJobAfterSend;

    invoke-virtual {v3, v5, v6, v7}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->invokeAnnotated(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1092
    new-instance v2, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/compute/ComputeJobContext;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lorg/apache/ignite/internal/GridJobExecuteResponse;-><init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;[BLorg/apache/ignite/IgniteException;[BLjava/lang/Object;[BLjava/util/Map;Z)V

    .line 1095
    .local v2, "fakeRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    new-instance v3, Lorg/apache/ignite/cluster/ClusterTopologyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send job due to node failure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/ignite/cluster/ClusterTopologyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->setFakeException(Lorg/apache/ignite/IgniteException;)V

    .line 1097
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->onResponse(Lorg/apache/ignite/internal/GridJobExecuteResponse;)V

    move-object/from16 v4, v38

    .line 1179
    .end local v2    # "fakeRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    .end local v32    # "curNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v38    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    .local v4, "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    :cond_1
    :goto_0
    return-void

    .line 1100
    .end local v4    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    .restart local v32    # "curNode":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v38    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getEndTime()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v3, v6, v8

    if-nez v3, :cond_5

    const-wide v14, 0x7fffffffffffffffL

    .line 1103
    .local v14, "timeout":J
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v3, v14, v6

    if-lez v3, :cond_13

    .line 1104
    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isMarshalLocalJobs()Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v36, 0x1

    .line 1107
    .local v36, "loc":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->isFullSupport()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getAttributes()Ljava/util/Map;

    move-result-object v39

    .line 1108
    .local v39, "sesAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeJobContext;->getAttributes()Ljava/util/Map;

    move-result-object v35

    .line 1111
    .local v35, "jobAttrs":Ljava/util/Map;, "Ljava/util/Map<+Ljava/io/Serializable;+Ljava/io/Serializable;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->internal:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_3
    const/16 v28, 0x1

    .line 1113
    .local v28, "forceLocDep":Z
    :goto_4
    new-instance v4, Lorg/apache/ignite/internal/GridJobExecuteRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeJobContext;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getUserVersion()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskClassName()Ljava/lang/String;

    move-result-object v9

    if-eqz v36, :cond_9

    const/4 v10, 0x0

    :goto_5
    if-eqz v36, :cond_a

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/compute/ComputeJobResult;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v11

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getStartTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTopology()Ljava/util/Collection;

    move-result-object v16

    if-eqz v36, :cond_b

    const/16 v17, 0x0

    :goto_7
    if-eqz v36, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getJobSiblings()Ljava/util/Collection;

    move-result-object v18

    :goto_8
    if-eqz v36, :cond_d

    const/16 v19, 0x0

    :goto_9
    if-eqz v36, :cond_e

    move-object/from16 v20, v39

    :goto_a
    if-eqz v36, :cond_f

    const/16 v21, 0x0

    :goto_b
    if-eqz v36, :cond_10

    move-object/from16 v22, v35

    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getCheckpointSpi()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->continuous:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->participants()Ljava/util/Map;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->isFullSupport()Z

    move-result v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->internal:Z

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->subjId:Ljava/util/UUID;

    move-object/from16 v31, v0

    invoke-direct/range {v4 .. v31}, Lorg/apache/ignite/internal/GridJobExecuteRequest;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLorg/apache/ignite/compute/ComputeJob;JJLjava/util/Collection;[BLjava/util/Collection;[BLjava/util/Map;[BLjava/util/Map;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/configuration/DeploymentMode;ZLjava/util/Map;ZZZLjava/util/UUID;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1140
    .end local v38    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    if-eqz v36, :cond_11

    .line 1141
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->processJobExecuteRequest(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridJobExecuteRequest;)V

    .line 1150
    :cond_4
    :goto_d
    if-nez v36, :cond_1

    .line 1151
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/compute/ComputeJobResult;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v6

    const-class v7, Lorg/apache/ignite/compute/ComputeJobAfterSend;

    invoke-virtual {v3, v5, v6, v7}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->invokeAnnotated(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1157
    :catch_0
    move-exception v34

    .line 1158
    .end local v14    # "timeout":J
    .end local v28    # "forceLocDep":Z
    .end local v32    # "curNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v35    # "jobAttrs":Ljava/util/Map;, "Ljava/util/Map<+Ljava/io/Serializable;+Ljava/io/Serializable;>;"
    .end local v36    # "loc":Z
    .end local v39    # "sesAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local v34, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_e
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/compute/ComputeJobResult;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->isDeadNode(Ljava/util/UUID;)Z

    move-result v33

    .line 1161
    .local v33, "deadNode":Z
    if-eqz v33, :cond_14

    .line 1162
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send job request because remote node left grid (if failover is enabled, will attempt fail-over to another node) [node="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", taskName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", taskSesId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", jobSesId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/compute/ComputeJobContext;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1168
    :goto_f
    new-instance v2, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeJobContext;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v26}, Lorg/apache/ignite/internal/GridJobExecuteResponse;-><init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;[BLorg/apache/ignite/IgniteException;[BLjava/lang/Object;[BLjava/util/Map;Z)V

    .line 1171
    .restart local v2    # "fakeRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    if-eqz v33, :cond_15

    .line 1172
    new-instance v3, Lorg/apache/ignite/cluster/ClusterTopologyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send job due to node failure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-direct {v3, v5, v0}, Lorg/apache/ignite/cluster/ClusterTopologyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->setFakeException(Lorg/apache/ignite/IgniteException;)V

    .line 1177
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->onResponse(Lorg/apache/ignite/internal/GridJobExecuteResponse;)V

    goto/16 :goto_0

    .line 1100
    .end local v2    # "fakeRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    .end local v4    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    .end local v33    # "deadNode":Z
    .end local v34    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v32    # "curNode":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v38    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getEndTime()J

    move-result-wide v6

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v8

    sub-long v14, v6, v8

    goto/16 :goto_1

    .line 1104
    .restart local v14    # "timeout":J
    :cond_6
    const/16 v36, 0x0

    goto/16 :goto_2

    .line 1107
    .restart local v36    # "loc":Z
    :cond_7
    const/16 v39, 0x0

    goto/16 :goto_3

    .line 1111
    .restart local v35    # "jobAttrs":Ljava/util/Map;, "Ljava/util/Map<+Ljava/io/Serializable;+Ljava/io/Serializable;>;"
    .restart local v39    # "sesAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_8
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 1113
    .restart local v28    # "forceLocDep":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/compute/ComputeJobResult;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v10

    invoke-interface {v3, v10}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v10

    goto/16 :goto_5

    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getJobSiblings()Ljava/util/Collection;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v17

    goto/16 :goto_7

    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_8

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    move-object/from16 v0, v39

    invoke-interface {v3, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v19

    goto/16 :goto_9

    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_a

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    move-object/from16 v0, v35

    invoke-interface {v3, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v21

    goto/16 :goto_b

    :cond_10
    const/16 v22, 0x0

    goto/16 :goto_c

    .line 1144
    .end local v38    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    :cond_11
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB:Lorg/apache/ignite/internal/GridTopic;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->internal:Z

    if-eqz v3, :cond_12

    sget-object v3, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->MANAGEMENT_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    :goto_11
    move-object/from16 v0, v37

    invoke-virtual {v5, v0, v6, v4, v3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1147
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sent job request [req="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", node="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1144
    :cond_12
    sget-object v3, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_11

    .line 1154
    .end local v4    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    .end local v28    # "forceLocDep":Z
    .end local v35    # "jobAttrs":Ljava/util/Map;, "Ljava/util/Map<+Ljava/io/Serializable;+Ljava/io/Serializable;>;"
    .end local v36    # "loc":Z
    .end local v39    # "sesAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v38    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    :cond_13
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Job timed out prior to sending job execution request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/compute/ComputeJobResult;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v4, v38

    .end local v38    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    goto/16 :goto_0

    .line 1166
    .end local v14    # "timeout":J
    .end local v32    # "curNode":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v33    # "deadNode":Z
    .restart local v34    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send job request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-static {v3, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 1175
    .restart local v2    # "fakeRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    :cond_15
    invoke-static/range {v34 .. v34}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->setFakeException(Lorg/apache/ignite/IgniteException;)V

    goto/16 :goto_10

    .line 1157
    .end local v2    # "fakeRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    .end local v4    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    .end local v33    # "deadNode":Z
    .end local v34    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v38    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    :catch_1
    move-exception v34

    move-object/from16 v4, v38

    .end local v38    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/GridJobExecuteRequest;
    goto/16 :goto_e
.end method


# virtual methods
.method protected body()V
    .locals 12

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 369
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->evtLsnr:Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;

    invoke-interface {v0, p0}, Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;->onTaskStarted(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)V

    .line 373
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->task:Lorg/apache/ignite/compute/ComputeTask;

    if-nez v0, :cond_3

    .line 374
    sget-boolean v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->taskCls:Ljava/lang/Class;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 439
    :catch_0
    move-exception v6

    .line 440
    .local v6, "e":Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to map task jobs to nodes (topology projection is empty): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 442
    invoke-virtual {p0, v11, v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 462
    .end local v6    # "e":Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    :try_start_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    const-class v0, Lorg/apache/ignite/compute/ComputeTask;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->taskCls:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catch Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 444
    :catch_1
    move-exception v6

    .line 445
    .local v6, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->fut:Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 446
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to map task jobs to nodes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 448
    invoke-virtual {p0, v11, v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 378
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->taskCls:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->newTask(Ljava/lang/Class;)Lorg/apache/ignite/compute/ComputeTask;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->task:Lorg/apache/ignite/compute/ComputeTask;
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 391
    :cond_3
    :try_start_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->task:Lorg/apache/ignite/compute/ComputeTask;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->taskCls:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->internalTask(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->internal:Z

    .line 393
    const/16 v0, 0x14

    const-string v1, "Task started."

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->recordTaskEvent(ILjava/lang/String;)V

    .line 395
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->initializeSpis()V

    .line 397
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 399
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getTaskTopology()Ljava/util/List;

    move-result-object v9

    .line 402
    .local v9, "shuffledNodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->loadBalancing()Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0, v1, v9}, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->getLoadBalancer(Lorg/apache/ignite/internal/GridTaskSessionImpl;Ljava/util/List;)Lorg/apache/ignite/compute/ComputeLoadBalancer;

    move-result-object v4

    .line 404
    .local v4, "balancer":Lorg/apache/ignite/compute/ComputeLoadBalancer;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->task:Lorg/apache/ignite/compute/ComputeTask;

    const-class v3, Lorg/apache/ignite/resources/TaskContinuousMapperResource;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->isAnnotationPresent(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->continuous:Z

    .line 406
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 407
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Injected task resources [continuous="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->continuous:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 410
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->task:Lorg/apache/ignite/compute/ComputeTask;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mapper:Lorg/apache/ignite/compute/ComputeTaskContinuousMapper;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->inject(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Lorg/apache/ignite/compute/ComputeTask;Lorg/apache/ignite/internal/GridTaskSessionImpl;Lorg/apache/ignite/compute/ComputeLoadBalancer;Lorg/apache/ignite/compute/ComputeTaskContinuousMapper;)V

    .line 412
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$2;

    invoke-direct {v1, p0, v9}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$2;-><init>(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Ljava/util/List;)V

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->wrapThreadLoader(Ljava/lang/ClassLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 419
    .local v8, "mappedJobs":Ljava/util/Map;, "Ljava/util/Map<+Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 420
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mapped task jobs to nodes [jobCnt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v8, :cond_6

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mappedJobs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ses="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 423
    :cond_5
    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 424
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 426
    :try_start_4
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 427
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task map operation produced no mapped jobs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 444
    .end local v4    # "balancer":Lorg/apache/ignite/compute/ComputeLoadBalancer;
    .end local v8    # "mappedJobs":Ljava/util/Map;, "Ljava/util/Map<+Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v9    # "shuffledNodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :catch_2
    move-exception v6

    goto/16 :goto_1

    .line 380
    :catch_3
    move-exception v6

    .line 383
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->taskCls:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->internalTask(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->internal:Z

    .line 385
    const/16 v0, 0x14

    const-string v1, "Task started."

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->recordTaskEvent(ILjava/lang/String;)V

    .line 387
    throw v6
    :try_end_5
    .catch Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 454
    .end local v6    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_4
    move-exception v6

    .line 455
    .local v6, "e":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to map task jobs to nodes due to undeclared user exception [cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 458
    .local v7, "errMsg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v7, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 460
    new-instance v0, Lorg/apache/ignite/compute/ComputeUserUndeclaredException;

    invoke-direct {v0, v7, v6}, Lorg/apache/ignite/compute/ComputeUserUndeclaredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v11, v0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/Throwable;
    .end local v7    # "errMsg":Ljava/lang/String;
    .restart local v4    # "balancer":Lorg/apache/ignite/compute/ComputeLoadBalancer;
    .restart local v8    # "mappedJobs":Ljava/util/Map;, "Ljava/util/Map<+Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v9    # "shuffledNodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_6
    move v0, v10

    .line 420
    goto/16 :goto_2

    .line 428
    :cond_7
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 433
    :goto_3
    :try_start_7
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catch Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 434
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->lockRespProc:Z

    .line 435
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 437
    :try_start_9
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->processDelayedResponses()V

    goto/16 :goto_0

    .line 431
    :cond_8
    invoke-direct {p0, v8}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->processMappedJobs(Ljava/util/Map;)V
    :try_end_9
    .catch Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    .line 435
    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0
    :try_end_b
    .catch Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 450
    .end local v4    # "balancer":Lorg/apache/ignite/compute/ComputeLoadBalancer;
    .end local v8    # "mappedJobs":Ljava/util/Map;, "Ljava/util/Map<+Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v9    # "shuffledNodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local v6, "e":Ljava/lang/Exception;
    :cond_9
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to map task jobs to nodes due to task cancellation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public endTime()J
    .locals 2

    .prologue
    .line 334
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getEndTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1342
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    if-ne p0, p1, :cond_0

    .line 1343
    const/4 v0, 0x1

    .line 1350
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 1345
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    .line 1346
    const/4 v0, 0x0

    goto :goto_0

    .line 1348
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    instance-of v0, p1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1350
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    check-cast p1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1291
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    .local p1, "res":Ljava/lang/Object;, "TR;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;Z)V

    .line 1292
    return-void
.end method

.method finishTask(Ljava/lang/Object;Ljava/lang/Throwable;Z)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "cancelChildren"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1302
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    .local p1, "res":Ljava/lang/Object;, "TR;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 1303
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    sget-object v2, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->REDUCING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    sget-object v2, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->FINISHING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    if-ne v0, v2, :cond_1

    .line 1304
    :cond_0
    monitor-exit v1

    .line 1327
    :goto_0
    return-void

    .line 1306
    :cond_1
    sget-object v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->FINISHING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    .line 1307
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1310
    if-nez p2, :cond_3

    .line 1311
    const/16 v0, 0x15

    :try_start_1
    const-string v1, "Task finished."

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->recordTaskEvent(ILjava/lang/String;)V

    .line 1316
    :goto_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->evtLsnr:Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;

    invoke-interface {v0, p0}, Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;->onTaskFinished(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)V

    .line 1318
    if-eqz p3, :cond_2

    .line 1319
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->cancelChildren()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1323
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->fut:Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 1325
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->onDone()V

    goto :goto_0

    .line 1307
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1313
    :cond_3
    const/16 v0, 0x16

    :try_start_3
    const-string v1, "Task failed."

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->recordTaskEvent(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1323
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->fut:Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 1325
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->onDone()V

    throw v0
.end method

.method getDeployment()Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 1

    .prologue
    .line 287
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    return-object v0
.end method

.method getSession()Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .locals 1

    .prologue
    .line 271
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    return-object v0
.end method

.method public getTask()Lorg/apache/ignite/compute/ComputeTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->task:Lorg/apache/ignite/compute/ComputeTask;

    return-object v0
.end method

.method getTaskFuture()Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->fut:Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    return-object v0
.end method

.method getTaskSessionId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 264
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1355
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v0

    return v0
.end method

.method public isInternal()Z
    .locals 1

    .prologue
    .line 308
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->internal:Z

    return v0
.end method

.method onNodeLeft(Ljava/util/UUID;)V
    .locals 18
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 1185
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    const/4 v15, 0x0

    .line 1187
    .local v15, "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 1189
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    sget-object v3, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->WAITING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    if-eq v2, v3, :cond_1

    .line 1190
    monitor-exit v17

    .line 1225
    :cond_0
    return-void

    .line 1192
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    move-object/from16 v16, v15

    .end local v15    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    .local v16, "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    :goto_0
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/GridJobResultImpl;

    .line 1194
    .local v13, "jr":Lorg/apache/ignite/internal/GridJobResultImpl;
    invoke-virtual {v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->hasResponse()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating fake response because node left grid [job="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1201
    :cond_2
    new-instance v1, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/compute/ComputeJobContext;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v11}, Lorg/apache/ignite/internal/GridJobExecuteResponse;-><init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;[BLorg/apache/ignite/IgniteException;[BLjava/lang/Object;[BLjava/util/Map;Z)V

    .line 1204
    .local v1, "fakeRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    new-instance v2, Lorg/apache/ignite/cluster/ClusterTopologyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Node has left grid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/cluster/ClusterTopologyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->setFakeException(Lorg/apache/ignite/IgniteException;)V

    .line 1206
    if-nez v16, :cond_6

    .line 1207
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1209
    .end local v16    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    .restart local v15    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    :goto_1
    :try_start_2
    invoke-interface {v15, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v1    # "fakeRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    :goto_2
    move-object/from16 v16, v15

    .line 1211
    .end local v15    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    .restart local v16    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    goto/16 :goto_0

    .end local v13    # "jr":Lorg/apache/ignite/internal/GridJobResultImpl;
    :cond_3
    move-object/from16 v15, v16

    .line 1213
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    .restart local v15    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    :cond_4
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1215
    if-eqz v15, :cond_0

    .line 1219
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .line 1220
    .local v14, "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Simulating fake response from left node [res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1223
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->onResponse(Lorg/apache/ignite/internal/GridJobExecuteResponse;)V

    goto :goto_3

    .line 1213
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    :catchall_0
    move-exception v2

    :goto_4
    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .end local v15    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v16    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    :catchall_1
    move-exception v2

    move-object/from16 v15, v16

    .end local v16    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    .restart local v15    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    goto :goto_4

    .end local v15    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    .restart local v1    # "fakeRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    .restart local v13    # "jr":Lorg/apache/ignite/internal/GridJobResultImpl;
    .restart local v16    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    :cond_6
    move-object/from16 v15, v16

    .end local v16    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    .restart local v15    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    goto :goto_1

    .end local v1    # "fakeRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    .end local v15    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    .restart local v16    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    :cond_7
    move-object/from16 v15, v16

    .end local v16    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    .restart local v15    # "resList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/GridJobExecuteResponse;>;"
    goto :goto_2
.end method

.method onResponse(Lorg/apache/ignite/internal/GridJobExecuteResponse;)V
    .locals 17
    .param p1, "msg"    # Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .prologue
    .line 589
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    sget-boolean v13, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v13, :cond_0

    if-nez p1, :cond_0

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 591
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->fut:Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->isDone()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 592
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 593
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring job response since task has finished: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 811
    :cond_1
    :goto_0
    return-void

    .line 598
    :cond_2
    move-object/from16 v9, p1

    .line 600
    .local v9, "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    :cond_3
    :goto_1
    if-eqz v9, :cond_1

    .line 601
    const/4 v6, 0x0

    .line 605
    .local v6, "jobRes":Lorg/apache/ignite/internal/GridJobResultImpl;
    const/4 v12, 0x0

    .line 608
    .local v12, "selfOccupied":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 611
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    sget-object v15, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->WAITING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    if-eq v13, v15, :cond_6

    .line 612
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 613
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Ignoring response since task is already reducing or finishing [res="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", job="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", state="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x5d

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 616
    :cond_4
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 797
    if-eqz v12, :cond_1

    .line 798
    sget-boolean v13, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v13, :cond_5

    if-nez v6, :cond_5

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 800
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v14

    .line 801
    const/4 v13, 0x0

    :try_start_2
    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->setOccupied(Z)V

    .line 803
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->lockRespProc:Z

    .line 804
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 807
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->delayedRess:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    check-cast v9, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .restart local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    goto/16 :goto_0

    .line 804
    :catchall_0
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v13

    .line 619
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lorg/apache/ignite/internal/GridJobResultImpl;

    move-object v6, v0

    .line 621
    if-nez v6, :cond_9

    .line 622
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 623
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Received response for unknown child job (was job presumed failed?): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 625
    :cond_7
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 797
    if-eqz v12, :cond_1

    .line 798
    sget-boolean v13, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v13, :cond_8

    if-nez v6, :cond_8

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 800
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v14

    .line 801
    const/4 v13, 0x0

    :try_start_5
    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->setOccupied(Z)V

    .line 803
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->lockRespProc:Z

    .line 804
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 807
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->delayedRess:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    check-cast v9, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .restart local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    goto/16 :goto_0

    .line 804
    :catchall_1
    move-exception v13

    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v13

    .line 631
    :cond_9
    :try_start_7
    invoke-virtual {v6}, Lorg/apache/ignite/internal/GridJobResultImpl;->hasResponse()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 632
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 633
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Received redundant response for a job (will ignore): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 635
    :cond_a
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 797
    if-eqz v12, :cond_1

    .line 798
    sget-boolean v13, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v13, :cond_b

    if-nez v6, :cond_b

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 800
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v14

    .line 801
    const/4 v13, 0x0

    :try_start_8
    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->setOccupied(Z)V

    .line 803
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->lockRespProc:Z

    .line 804
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 807
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->delayedRess:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    check-cast v9, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .restart local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    goto/16 :goto_0

    .line 804
    :catchall_2
    move-exception v13

    :try_start_9
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v13

    .line 638
    :cond_c
    :try_start_a
    invoke-virtual {v6}, Lorg/apache/ignite/internal/GridJobResultImpl;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->getNodeId()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 639
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 640
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Ignoring stale response as job was already resent to other node [res="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", jobRes="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x5d

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 644
    :cond_d
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->setOccupied(Z)V

    .line 646
    const/4 v12, 0x1

    .line 649
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 797
    if-eqz v12, :cond_3

    .line 798
    sget-boolean v13, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v13, :cond_e

    if-nez v6, :cond_e

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 800
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v14

    .line 801
    const/4 v13, 0x0

    :try_start_b
    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->setOccupied(Z)V

    .line 803
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->lockRespProc:Z

    .line 804
    monitor-exit v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 807
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->delayedRess:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    check-cast v9, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .restart local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    goto/16 :goto_1

    .line 804
    :catchall_3
    move-exception v13

    :try_start_c
    monitor-exit v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v13

    .line 652
    :cond_f
    :try_start_d
    invoke-virtual {v6}, Lorg/apache/ignite/internal/GridJobResultImpl;->isOccupied()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 653
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 654
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Adding response to delayed queue (job is either being sent or processing another response): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 657
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->delayedRess:Ljava/util/Queue;

    invoke-interface {v13, v9}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 659
    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 797
    if-eqz v12, :cond_1

    .line 798
    sget-boolean v13, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v13, :cond_11

    if-nez v6, :cond_11

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 800
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v14

    .line 801
    const/4 v13, 0x0

    :try_start_e
    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->setOccupied(Z)V

    .line 803
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->lockRespProc:Z

    .line 804
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 807
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->delayedRess:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    check-cast v9, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .restart local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    goto/16 :goto_0

    .line 804
    :catchall_4
    move-exception v13

    :try_start_f
    monitor-exit v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v13

    .line 662
    :cond_12
    :try_start_10
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->lockRespProc:Z

    if-eqz v13, :cond_14

    .line 663
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->delayedRess:Ljava/util/Queue;

    invoke-interface {v13, v9}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 665
    monitor-exit v14
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 797
    if-eqz v12, :cond_1

    .line 798
    sget-boolean v13, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v13, :cond_13

    if-nez v6, :cond_13

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 800
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v14

    .line 801
    const/4 v13, 0x0

    :try_start_11
    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->setOccupied(Z)V

    .line 803
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->lockRespProc:Z

    .line 804
    monitor-exit v14
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 807
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->delayedRess:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    check-cast v9, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .restart local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    goto/16 :goto_0

    .line 804
    :catchall_5
    move-exception v13

    :try_start_12
    monitor-exit v14
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw v13

    .line 668
    :cond_14
    const/4 v13, 0x1

    :try_start_13
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->lockRespProc:Z

    .line 670
    const/4 v12, 0x1

    .line 673
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->setOccupied(Z)V

    .line 676
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->resCache:Z

    if-nez v13, :cond_15

    .line 677
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    :cond_15
    monitor-exit v14
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 680
    :try_start_14
    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->getFakeException()Lorg/apache/ignite/IgniteException;

    move-result-object v13

    if-eqz v13, :cond_17

    .line 681
    const/4 v13, 0x0

    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->getFakeException()Lorg/apache/ignite/IgniteException;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v13, v14, v15, v0}, Lorg/apache/ignite/internal/GridJobResultImpl;->onResponse(Ljava/lang/Object;Lorg/apache/ignite/IgniteException;Ljava/util/Map;Z)V

    .line 710
    :cond_16
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->resCache:Z

    if-nez v13, :cond_1c

    .line 711
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 718
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->result(Lorg/apache/ignite/compute/ComputeJobResult;Ljava/util/List;)Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    move-result-object v8

    .line 720
    .local v8, "plc":Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    if-nez v8, :cond_1e

    .line 721
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to obtain remote job result policy for result from GridComputeTask.result(..) method that returned null (will fail the whole task): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 724
    .local v4, "errMsg":Ljava/lang/String;
    const/4 v13, 0x0

    new-instance v14, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v14, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_14
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 797
    if-eqz v12, :cond_1

    .line 798
    sget-boolean v13, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v13, :cond_1d

    if-nez v6, :cond_1d

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 678
    .end local v4    # "errMsg":Ljava/lang/String;
    .end local v8    # "plc":Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    :catchall_6
    move-exception v13

    :try_start_15
    monitor-exit v14
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    throw v13
    :try_end_16
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 788
    :catch_0
    move-exception v3

    .line 789
    .local v3, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to obtain topology [ses="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", err="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x5d

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 791
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 797
    if-eqz v12, :cond_3

    .line 798
    sget-boolean v13, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v13, :cond_27

    if-nez v6, :cond_27

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 683
    .end local v3    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_17
    :try_start_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;
    :try_end_18
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    move-result-object v2

    .line 686
    .local v2, "clsLdr":Ljava/lang/ClassLoader;
    :try_start_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v13}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->getNodeId()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v13}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isMarshalLocalJobs()Z

    move-result v13

    if-nez v13, :cond_18

    const/4 v7, 0x1

    .line 688
    .local v7, "loc":Z
    :goto_4
    if-eqz v7, :cond_19

    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->getJobResult()Ljava/lang/Object;

    move-result-object v10

    .line 690
    .local v10, "res0":Ljava/lang/Object;
    :goto_5
    if-eqz v7, :cond_1a

    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v5

    .line 693
    .local v5, "ex":Lorg/apache/ignite/IgniteException;
    :goto_6
    if-eqz v7, :cond_1b

    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->getJobAttributes()Ljava/util/Map;

    move-result-object v1

    .line 696
    .local v1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_7
    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->isCancelled()Z

    move-result v13

    invoke-virtual {v6, v10, v5, v1, v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->onResponse(Ljava/lang/Object;Lorg/apache/ignite/IgniteException;Ljava/util/Map;Z)V

    .line 698
    if-eqz v7, :cond_16

    .line 699
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v13}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/GridJobResultImpl;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v15

    const-class v16, Lorg/apache/ignite/compute/ComputeJobAfterSend;

    invoke-virtual/range {v13 .. v16}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->invokeAnnotated(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_19
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    goto/16 :goto_2

    .line 701
    .end local v1    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "ex":Lorg/apache/ignite/IgniteException;
    .end local v7    # "loc":Z
    .end local v10    # "res0":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 702
    .restart local v3    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error deserializing job response: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 704
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1a
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    goto/16 :goto_2

    .line 797
    .end local v2    # "clsLdr":Ljava/lang/ClassLoader;
    .end local v3    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_7
    move-exception v13

    if-eqz v12, :cond_29

    .line 798
    sget-boolean v14, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v14, :cond_28

    if-nez v6, :cond_28

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 686
    .restart local v2    # "clsLdr":Ljava/lang/ClassLoader;
    :cond_18
    const/4 v7, 0x0

    goto :goto_4

    .line 688
    .restart local v7    # "loc":Z
    :cond_19
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->getJobResultBytes()[B

    move-result-object v14

    invoke-interface {v13, v14, v2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_5

    .line 690
    .restart local v10    # "res0":Ljava/lang/Object;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->getExceptionBytes()[B

    move-result-object v14

    invoke-interface {v13, v14, v2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/IgniteException;

    move-object v5, v13

    goto :goto_6

    .line 693
    .restart local v5    # "ex":Lorg/apache/ignite/IgniteException;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->getJobAttributesBytes()[B

    move-result-object v14

    invoke-interface {v13, v14, v2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;
    :try_end_1b
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    move-object v1, v13

    goto :goto_7

    .line 713
    .end local v2    # "clsLdr":Ljava/lang/ClassLoader;
    .end local v5    # "ex":Lorg/apache/ignite/IgniteException;
    .end local v7    # "loc":Z
    .end local v10    # "res0":Ljava/lang/Object;
    :cond_1c
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v14
    :try_end_1c
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 714
    :try_start_1d
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getRemoteResults()Ljava/util/List;

    move-result-object v11

    .line 715
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    monitor-exit v14

    goto/16 :goto_3

    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    :catchall_8
    move-exception v13

    monitor-exit v14
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    :try_start_1e
    throw v13
    :try_end_1e
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 800
    .restart local v4    # "errMsg":Ljava/lang/String;
    .restart local v8    # "plc":Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v14

    .line 801
    const/4 v13, 0x0

    :try_start_1f
    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->setOccupied(Z)V

    .line 803
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->lockRespProc:Z

    .line 804
    monitor-exit v14
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    .line 807
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->delayedRess:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    check-cast v9, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .restart local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    goto/16 :goto_0

    .line 804
    :catchall_9
    move-exception v13

    :try_start_20
    monitor-exit v14
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    throw v13

    .line 729
    .end local v4    # "errMsg":Ljava/lang/String;
    :cond_1e
    :try_start_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v14
    :try_end_21
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    .line 732
    :try_start_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    sget-object v15, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->WAITING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    if-eq v13, v15, :cond_21

    .line 733
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 734
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Ignoring GridComputeTask.result(..) value since task is already reducing orfinishing [res="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", job="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", state="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x5d

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 737
    :cond_1f
    monitor-exit v14
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    .line 797
    if-eqz v12, :cond_1

    .line 798
    sget-boolean v13, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v13, :cond_20

    if-nez v6, :cond_20

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 800
    :cond_20
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v14

    .line 801
    const/4 v13, 0x0

    :try_start_23
    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->setOccupied(Z)V

    .line 803
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->lockRespProc:Z

    .line 804
    monitor-exit v14
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    .line 807
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->delayedRess:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    check-cast v9, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .restart local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    goto/16 :goto_0

    .line 804
    :catchall_a
    move-exception v13

    :try_start_24
    monitor-exit v14
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    throw v13

    .line 740
    :cond_21
    :try_start_25
    sget-object v13, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$5;->$SwitchMap$org$apache$ignite$compute$ComputeJobResultPolicy:[I

    invoke-virtual {v8}, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->ordinal()I

    move-result v15

    aget v13, v13, v15

    packed-switch v13, :pswitch_data_0

    .line 773
    :cond_22
    :goto_8
    monitor-exit v14
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 776
    if-eqz v8, :cond_23

    .line 778
    :try_start_26
    sget-object v13, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->FAILOVER:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    if-ne v8, v13, :cond_25

    .line 779
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->sendFailoverRequest(Lorg/apache/ignite/internal/GridJobResultImpl;)V
    :try_end_26
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_26 .. :try_end_26} :catch_0
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    .line 797
    :cond_23
    :goto_9
    if-eqz v12, :cond_3

    .line 798
    sget-boolean v13, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v13, :cond_26

    if-nez v6, :cond_26

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 743
    :pswitch_0
    :try_start_27
    sget-object v13, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->REDUCING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    goto :goto_8

    .line 773
    :catchall_b
    move-exception v13

    monitor-exit v14
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    :try_start_28
    throw v13
    :try_end_28
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_28 .. :try_end_28} :catch_0
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    .line 751
    :pswitch_1
    :try_start_29
    sget-boolean v13, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->$assertionsDisabled:Z

    if-nez v13, :cond_24

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v15

    if-le v13, v15, :cond_24

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 756
    :cond_24
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->jobRes:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v15

    if-ne v13, v15, :cond_22

    .line 757
    sget-object v8, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->REDUCE:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    .line 760
    sget-object v13, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->REDUCING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    goto :goto_8

    .line 767
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getTaskTopology()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v13}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->failover(Lorg/apache/ignite/internal/GridJobExecuteResponse;Lorg/apache/ignite/internal/GridJobResultImpl;Ljava/util/Collection;)Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    move-result v13

    if-nez v13, :cond_22

    .line 768
    const/4 v8, 0x0

    goto :goto_8

    .line 781
    :cond_25
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->evtLsnr:Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/GridJobResultImpl;->getSibling()Lorg/apache/ignite/internal/GridJobSiblingImpl;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-interface {v13, v0, v14}, Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;->onJobFinished(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Lorg/apache/ignite/internal/GridJobSiblingImpl;)V

    .line 783
    sget-object v13, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->REDUCE:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    if-ne v8, v13, :cond_23

    .line 784
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->reduce(Ljava/util/List;)V
    :try_end_2a
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2a .. :try_end_2a} :catch_0
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    goto :goto_9

    .line 800
    :cond_26
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v14

    .line 801
    const/4 v13, 0x0

    :try_start_2b
    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->setOccupied(Z)V

    .line 803
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->lockRespProc:Z

    .line 804
    monitor-exit v14
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c

    .line 807
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->delayedRess:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    check-cast v9, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .restart local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    goto/16 :goto_1

    .line 804
    :catchall_c
    move-exception v13

    :try_start_2c
    monitor-exit v14
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    throw v13

    .line 800
    .end local v8    # "plc":Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    .restart local v3    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_27
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v14

    .line 801
    const/4 v13, 0x0

    :try_start_2d
    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/GridJobResultImpl;->setOccupied(Z)V

    .line 803
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->lockRespProc:Z

    .line 804
    monitor-exit v14
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_d

    .line 807
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->delayedRess:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    check-cast v9, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .restart local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    goto/16 :goto_1

    .line 804
    :catchall_d
    move-exception v13

    :try_start_2e
    monitor-exit v14
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_d

    throw v13

    .line 800
    .end local v3    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_28
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v14

    .line 801
    const/4 v15, 0x0

    :try_start_2f
    invoke-virtual {v6, v15}, Lorg/apache/ignite/internal/GridJobResultImpl;->setOccupied(Z)V

    .line 803
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->lockRespProc:Z

    .line 804
    monitor-exit v14
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_e

    .line 807
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->delayedRess:Ljava/util/Queue;

    invoke-interface {v14}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    check-cast v9, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .restart local v9    # "res":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    :cond_29
    throw v13

    .line 804
    :catchall_e
    move-exception v13

    :try_start_30
    monitor-exit v14
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_e

    throw v13

    .line 740
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTimeout()V
    .locals 4

    .prologue
    .line 318
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 319
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->state:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    sget-object v3, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->WAITING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    if-eq v1, v3, :cond_0

    .line 320
    monitor-exit v2

    .line 330
    :goto_0
    return-void

    .line 321
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task has timed out: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 325
    const/16 v1, 0x17

    const-string v2, "Task has timed out."

    invoke-direct {p0, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->recordTaskEvent(ILjava/lang/String;)V

    .line 327
    new-instance v0, Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task timed out (check logs for error messages): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 321
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setTask(Lorg/apache/ignite/compute/ComputeTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    .local p1, "task":Lorg/apache/ignite/compute/ComputeTask;, "Lorg/apache/ignite/compute/ComputeTask<TT;TR;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->task:Lorg/apache/ignite/compute/ComputeTask;

    .line 302
    return-void
.end method

.method public timeoutId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1360
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<TT;TR;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 1361
    :try_start_0
    const-class v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
