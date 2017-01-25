.class public Lorg/apache/ignite/internal/processors/job/GridJobWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridJobWorker.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final HOLD:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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
.field private final createTime:J

.field private final ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private final dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

.field private final evtLsnr:Lorg/apache/ignite/internal/processors/job/GridJobEventListener;

.field private volatile finishTime:J

.field private final finishing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final held:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final holdLsnr:Lorg/apache/ignite/internal/processors/job/GridJobHoldListener;

.field private final internal:Z

.field private volatile isStarted:Z

.field private job:Lorg/apache/ignite/compute/ComputeJob;

.field private jobBytes:[B

.field private final jobCtx:Lorg/apache/ignite/internal/GridJobContextImpl;

.field private final jobTopic:Ljava/lang/Object;

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private final marsh:Lorg/apache/ignite/marshaller/Marshaller;

.field private final masterLeaveGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

.field private volatile startTime:J

.field private volatile sysCancelled:Z

.field private volatile sysStopping:Z

.field private final taskNode:Lorg/apache/ignite/cluster/ClusterNode;

.field private final taskTopic:Ljava/lang/Object;

.field private volatile timedOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    .line 49
    new-instance v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->HOLD:Ljava/lang/ThreadLocal;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;JLorg/apache/ignite/internal/GridJobSessionImpl;Lorg/apache/ignite/internal/GridJobContextImpl;[BLorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;ZLorg/apache/ignite/internal/processors/job/GridJobEventListener;Lorg/apache/ignite/internal/processors/job/GridJobHoldListener;)V
    .locals 5
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .param p3, "createTime"    # J
    .param p5, "ses"    # Lorg/apache/ignite/internal/GridJobSessionImpl;
    .param p6, "jobCtx"    # Lorg/apache/ignite/internal/GridJobContextImpl;
    .param p7, "jobBytes"    # [B
    .param p8, "job"    # Lorg/apache/ignite/compute/ComputeJob;
    .param p9, "taskNode"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p10, "internal"    # Z
    .param p11, "evtLsnr"    # Lorg/apache/ignite/internal/processors/job/GridJobEventListener;
    .param p12, "holdLsnr"    # Lorg/apache/ignite/internal/processors/job/GridJobHoldListener;

    .prologue
    .line 155
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "grid-job-worker"

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 104
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->masterLeaveGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->held:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 157
    sget-boolean v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 158
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p5, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 159
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p6, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 160
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez p9, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 161
    :cond_3
    sget-boolean v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez p11, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 162
    :cond_4
    sget-boolean v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    if-nez p2, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 163
    :cond_5
    sget-boolean v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    if-nez p12, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 165
    :cond_6
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 166
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->createTime:J

    .line 167
    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->evtLsnr:Lorg/apache/ignite/internal/processors/job/GridJobEventListener;

    .line 168
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 169
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    .line 170
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->jobCtx:Lorg/apache/ignite/internal/GridJobContextImpl;

    .line 171
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->jobBytes:[B

    .line 172
    iput-object p9, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->taskNode:Lorg/apache/ignite/cluster/ClusterNode;

    .line 173
    iput-boolean p10, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    .line 174
    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->holdLsnr:Lorg/apache/ignite/internal/processors/job/GridJobHoldListener;

    .line 176
    if-eqz p8, :cond_7

    .line 177
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    .line 179
    :cond_7
    sget-object v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v2, p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    .line 181
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    .line 183
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    .line 185
    .local v1, "locNodeId":Ljava/util/UUID;
    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {p5}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/apache/ignite/internal/GridTopic;->topic(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->jobTopic:Ljava/lang/Object;

    .line 186
    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TASK:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {p5}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/apache/ignite/internal/GridTopic;->topic(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->taskTopic:Ljava/lang/Object;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    return v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Lorg/apache/ignite/compute/ComputeJob;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    return-object v0
.end method

.method private execute0(Z)V
    .locals 11
    .param p1, "skipNtf"    # Z

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x5d

    const/4 v7, 0x0

    .line 439
    sget-object v6, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->HOLD:Ljava/lang/ThreadLocal;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 441
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 443
    invoke-super {p0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->cancel()V

    .line 445
    :cond_0
    if-nez p1, :cond_2

    .line 446
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->holdLsnr:Lorg/apache/ignite/internal/processors/job/GridJobHoldListener;

    invoke-interface {v6, p0}, Lorg/apache/ignite/internal/processors/job/GridJobHoldListener;->onUnhold(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V

    .line 448
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->held:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 450
    .local v0, "c":I
    if-lez v0, :cond_2

    .line 451
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 452
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring job execution (job was held several times) [c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 531
    .end local v0    # "c":I
    :cond_1
    :goto_0
    return-void

    .line 458
    :cond_2
    const/4 v5, 0x1

    .line 460
    .local v5, "sndRes":Z
    const/4 v4, 0x0

    .line 462
    .local v4, "res":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 465
    .local v2, "ex":Lorg/apache/ignite/IgniteException;
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskSession(Lorg/apache/ignite/compute/ComputeTaskSession;)V

    .line 469
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isTimedOut()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_5

    .line 470
    const/4 v5, 0x0

    .line 526
    .end local v4    # "res":Ljava/lang/Object;
    :cond_3
    :goto_1
    sget-object v6, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->HOLD:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 527
    invoke-virtual {p0, v4, v2, v5}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishJob(Ljava/lang/Object;Lorg/apache/ignite/IgniteException;Z)V

    .line 529
    :cond_4
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v6

    invoke-virtual {v6, v10}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskSession(Lorg/apache/ignite/compute/ComputeTaskSession;)V

    goto :goto_0

    .line 472
    .restart local v4    # "res":Ljava/lang/Object;
    :cond_5
    :try_start_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    new-instance v7, Lorg/apache/ignite/internal/processors/job/GridJobWorker$2;

    invoke-direct {v7, p0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker$2;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->wrapThreadLoader(Ljava/lang/ClassLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v4

    .line 487
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 488
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Job execution has successfully finished [job="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", res="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 491
    .end local v4    # "res":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 492
    .local v1, "e":Lorg/apache/ignite/IgniteException;
    :try_start_2
    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->sysStopping:Z

    if-eqz v6, :cond_7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/InterruptedException;

    aput-object v8, v6, v7

    invoke-virtual {v1, v6}, Lorg/apache/ignite/IgniteException;->hasCause([Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 493
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->handleThrowable(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteException;

    move-result-object v2

    .line 495
    sget-boolean v6, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v6, :cond_a

    if-nez v2, :cond_a

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 526
    .end local v1    # "e":Lorg/apache/ignite/IgniteException;
    :catchall_0
    move-exception v6

    move-object v7, v6

    sget-object v6, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->HOLD:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    .line 527
    invoke-virtual {p0, v4, v2, v5}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishJob(Ljava/lang/Object;Lorg/apache/ignite/IgniteException;Z)V

    .line 529
    :cond_6
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v6

    invoke-virtual {v6, v10}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskSession(Lorg/apache/ignite/compute/ComputeTaskSession;)V

    throw v7

    .line 498
    .restart local v1    # "e":Lorg/apache/ignite/IgniteException;
    :cond_7
    const/4 v6, 0x1

    :try_start_3
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lorg/apache/ignite/internal/GridInternalException;

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lorg/apache/ignite/igfs/IgfsOutOfSpaceException;

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 500
    :cond_8
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 501
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to execute job [jobId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ses="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 514
    :cond_9
    :goto_2
    move-object v2, v1

    .line 526
    :cond_a
    sget-object v6, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->HOLD:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_b

    .line 527
    invoke-virtual {p0, v4, v2, v5}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishJob(Ljava/lang/Object;Lorg/apache/ignite/IgniteException;Z)V

    .line 529
    :cond_b
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v6

    invoke-virtual {v6, v10}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskSession(Lorg/apache/ignite/compute/ComputeTaskSession;)V

    goto/16 :goto_0

    .line 503
    :cond_c
    const/4 v6, 0x1

    :try_start_4
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/InterruptedException;

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Job was cancelled [jobId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, "msg":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 507
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v6, v3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 509
    :cond_d
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v6, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_2

    .line 512
    .end local v3    # "msg":Ljava/lang/String;
    :cond_e
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to execute job [jobId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ses="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 519
    .end local v1    # "e":Lorg/apache/ignite/IgniteException;
    :catch_1
    move-exception v1

    .line 520
    .local v1, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->handleThrowable(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteException;

    move-result-object v2

    .line 522
    sget-boolean v6, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v6, :cond_f

    if-nez v2, :cond_f

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 526
    :cond_f
    sget-object v6, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->HOLD:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_10

    .line 527
    invoke-virtual {p0, v4, v2, v5}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishJob(Ljava/lang/Object;Lorg/apache/ignite/IgniteException;Z)V

    .line 529
    :cond_10
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v6

    invoke-virtual {v6, v10}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskSession(Lorg/apache/ignite/compute/ComputeTaskSession;)V

    goto/16 :goto_0
.end method

.method private handleThrowable(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteException;
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/16 v5, 0x5d

    .line 541
    const/4 v1, 0x0

    .line 543
    .local v1, "msg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 547
    .local v0, "ex":Lorg/apache/ignite/IgniteException;
    instance-of v2, p1, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->sysStopping:Z

    if-nez v2, :cond_2

    .line 548
    const-string v1, "Failed to execute job due to interrupted exception."

    .line 551
    new-instance v0, Lorg/apache/ignite/IgniteException;

    .end local v0    # "ex":Lorg/apache/ignite/IgniteException;
    invoke-direct {v0, v1, p1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    .restart local v0    # "ex":Lorg/apache/ignite/IgniteException;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute job due to unexpected runtime exception [jobId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    new-instance v0, Lorg/apache/ignite/compute/ComputeUserUndeclaredException;

    .end local v0    # "ex":Lorg/apache/ignite/IgniteException;
    invoke-direct {v0, v1, p1}, Lorg/apache/ignite/compute/ComputeUserUndeclaredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    .restart local v0    # "ex":Lorg/apache/ignite/IgniteException;
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    if-nez v1, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 555
    :cond_2
    instance-of v2, p1, Ljava/lang/NoClassDefFoundError;

    if-nez v2, :cond_3

    instance-of v2, p1, Ljava/lang/ClassNotFoundException;

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute job due to class or resource loading exception (make sure that task originating node is still in grid and requested class is in the task class path) [jobId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 561
    new-instance v0, Lorg/apache/ignite/compute/ComputeUserUndeclaredException;

    .end local v0    # "ex":Lorg/apache/ignite/IgniteException;
    invoke-direct {v0, v1, p1}, Lorg/apache/ignite/compute/ComputeUserUndeclaredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v0    # "ex":Lorg/apache/ignite/IgniteException;
    goto :goto_0

    .line 563
    :cond_4
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->sysStopping:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/InterruptedException;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    const-string v1, "Job got interrupted due to system stop (will attempt failover)."

    .line 566
    new-instance v0, Lorg/apache/ignite/compute/ComputeExecutionRejectedException;

    .end local v0    # "ex":Lorg/apache/ignite/IgniteException;
    invoke-direct {v0, p1}, Lorg/apache/ignite/compute/ComputeExecutionRejectedException;-><init>(Ljava/lang/Throwable;)V

    .restart local v0    # "ex":Lorg/apache/ignite/IgniteException;
    goto/16 :goto_0

    .line 577
    :cond_5
    sget-boolean v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    if-nez v0, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 579
    :cond_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 581
    return-object v0
.end method

.method private isDeadNode(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "uid"    # Ljava/util/UUID;

    .prologue
    .line 856
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

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

.method private recordEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "evtType"    # I
    .param p2, "msg"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 627
    sget-boolean v1, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 628
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 630
    :cond_1
    new-instance v0, Lorg/apache/ignite/events/JobEvent;

    invoke-direct {v0}, Lorg/apache/ignite/events/JobEvent;-><init>()V

    .line 632
    .local v0, "evt":Lorg/apache/ignite/events/JobEvent;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/JobEvent;->jobId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 633
    invoke-virtual {v0, p2}, Lorg/apache/ignite/events/JobEvent;->message(Ljava/lang/String;)V

    .line 634
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/JobEvent;->node(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 635
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/JobEvent;->taskName(Ljava/lang/String;)V

    .line 636
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getTaskClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/JobEvent;->taskClassName(Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/JobEvent;->taskSessionId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 638
    invoke-virtual {v0, p1}, Lorg/apache/ignite/events/JobEvent;->type(I)V

    .line 639
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->taskNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/JobEvent;->taskNode(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 640
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridJobSessionImpl;->subjectId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/JobEvent;->taskSubjectId(Ljava/util/UUID;)V

    .line 642
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 643
    return-void
.end method


# virtual methods
.method addEvent(Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "evt"    # Ljava/lang/Integer;
    .param p3, "msg"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 838
    .local p1, "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 839
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 841
    :cond_1
    if-nez p1, :cond_2

    .line 842
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .restart local p1    # "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_2
    invoke-static {p2, p3}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 846
    return-object p1
.end method

.method protected body()V
    .locals 4

    .prologue
    const/16 v3, 0x2c

    const/4 v2, 0x1

    .line 411
    sget-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 413
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->startTime:J

    .line 415
    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isStarted:Z

    .line 418
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->evtLsnr:Lorg/apache/ignite/internal/processors/job/GridJobEventListener;

    invoke-interface {v0, p0}, Lorg/apache/ignite/internal/processors/job/GridJobEventListener;->onJobStarted(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V

    .line 420
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->recordEvent(ILjava/lang/String;)V

    .line 423
    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->execute0(Z)V

    .line 424
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->cancel(Z)V

    .line 587
    return-void
.end method

.method public cancel(Z)V
    .locals 5
    .param p1, "sys"    # Z

    .prologue
    .line 594
    :try_start_0
    invoke-super {p0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->cancel()V

    .line 596
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    .line 598
    .local v1, "job0":Lorg/apache/ignite/compute/ComputeJob;
    if-eqz p1, :cond_0

    .line 599
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->sysCancelled:Z

    .line 601
    :cond_0
    if-eqz v1, :cond_2

    .line 602
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelling job: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 605
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/job/GridJobWorker$3;

    invoke-direct {v3, p0, v1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker$3;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobWorker;Lorg/apache/ignite/compute/ComputeJob;)V

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->wrapThreadLoader(Ljava/lang/ClassLoader;Ljava/lang/Runnable;)V

    .line 612
    :cond_2
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 613
    const/16 v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Job was cancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->recordEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    .end local v1    # "job0":Lorg/apache/ignite/compute/ComputeJob;
    :cond_3
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to cancel job due to undeclared user exception [jobId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ses="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public endTime()J
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getEndTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 861
    if-ne p0, p1, :cond_0

    .line 862
    const/4 v2, 0x1

    .line 875
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v2

    .line 864
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    .line 865
    const/4 v2, 0x0

    goto :goto_0

    .line 867
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    instance-of v2, p1, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 869
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    .line 870
    .local v0, "jobId1":Lorg/apache/ignite/lang/IgniteUuid;
    check-cast p1, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p1, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    .line 872
    .local v1, "jobId2":Lorg/apache/ignite/lang/IgniteUuid;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 873
    :cond_3
    sget-boolean v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 875
    :cond_4
    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public execute()V
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->execute0(Z)V

    .line 431
    return-void
.end method

.method finishJob(Ljava/lang/Object;Lorg/apache/ignite/IgniteException;Z)V
    .locals 21
    .param p1, "res"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ex"    # Lorg/apache/ignite/IgniteException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "sndReply"    # Z

    .prologue
    .line 655
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 800
    :goto_0
    return-void

    .line 659
    :cond_0
    if-eqz p3, :cond_1

    .line 660
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->sysCancelled:Z

    if-nez v3, :cond_4

    const/16 p3, 0x1

    .line 663
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->taskNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v19

    .line 665
    .local v19, "sndNode":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishTime:J

    .line 667
    const/4 v15, 0x0

    .line 670
    .local v15, "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridJobSessionImpl;->isFullSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 671
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->evtLsnr:Lorg/apache/ignite/internal/processors/job/GridJobEventListener;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lorg/apache/ignite/internal/processors/job/GridJobEventListener;->onBeforeJobResponseSent(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V

    .line 674
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isTimedOut()Z

    move-result v3

    if-nez v3, :cond_19

    .line 675
    if-eqz p3, :cond_16

    .line 676
    if-nez v19, :cond_5

    .line 677
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->onMasterNodeLeft()Z

    .line 679
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to reply to sender node because it left grid [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->taskNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ses="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", jobId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", job="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 683
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 684
    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Job reply failed (task node left grid): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3, v4}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->addEvent(Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 792
    :cond_3
    :goto_2
    if-eqz v15, :cond_1a

    .line 793
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 794
    .local v20, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->recordEvent(ILjava/lang/String;)V

    goto :goto_3

    .line 660
    .end local v15    # "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "sndNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v20    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_4
    const/16 p3, 0x0

    goto/16 :goto_1

    .line 688
    .restart local v15    # "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .restart local v19    # "sndNode":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_5
    if-eqz p2, :cond_9

    .line 689
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isStarted:Z

    if-eqz v3, :cond_8

    .line 691
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 692
    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Job failed due to exception [ex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", job="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3, v4}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->addEvent(Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v15

    .line 702
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isMarshalLocalJobs()Z

    move-result v3

    if-nez v3, :cond_a

    const/16 v17, 0x1

    .line 704
    .local v17, "loc":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->jobCtx:Lorg/apache/ignite/internal/GridJobContextImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridJobContextImpl;->getAttributes()Ljava/util/Map;

    move-result-object v13

    .line 706
    .local v13, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v2, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    if-eqz v17, :cond_b

    const/4 v6, 0x0

    :goto_6
    if-eqz v17, :cond_c

    move-object/from16 v7, p2

    :goto_7
    if-eqz v17, :cond_d

    const/4 v8, 0x0

    :goto_8
    if-eqz v17, :cond_e

    move-object/from16 v9, p1

    :goto_9
    if-eqz v17, :cond_f

    const/4 v10, 0x0

    :goto_a
    if-eqz v17, :cond_10

    move-object v11, v13

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isCancelled()Z

    move-result v12

    invoke-direct/range {v2 .. v12}, Lorg/apache/ignite/internal/GridJobExecuteResponse;-><init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;[BLorg/apache/ignite/IgniteException;[BLjava/lang/Object;[BLjava/util/Map;Z)V

    .line 718
    .local v2, "jobRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getEndTime()J

    move-result-wide v4

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v4, v6

    .line 720
    .local v8, "timeout":J
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-gtz v3, :cond_7

    .line 722
    const-wide/16 v8, 0x1

    .line 724
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridJobSessionImpl;->isFullSupport()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->taskTopic:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-eqz v4, :cond_11

    sget-object v7, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->MANAGEMENT_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    :goto_c
    const/4 v10, 0x0

    move-object/from16 v4, v19

    move-object v6, v2

    invoke-virtual/range {v3 .. v10}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->sendOrderedMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;JZ)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 742
    .end local v2    # "jobRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    .end local v8    # "timeout":J
    .end local v13    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v17    # "loc":Z
    :catch_0
    move-exception v14

    .line 744
    .local v14, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->taskNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isDeadNode(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 745
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->onMasterNodeLeft()Z

    .line 748
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to reply to sender node because it left grid [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->taskNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", jobId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ses="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", job="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 756
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 757
    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send reply for job [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->taskNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", job="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3, v4}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->addEvent(Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Collection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v15

    goto/16 :goto_2

    .line 695
    .end local v14    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 696
    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Job has not been started [ex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", job="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3, v4}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->addEvent(Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v15

    goto/16 :goto_4

    .line 699
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 700
    const/16 v3, 0x2d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3, v4}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->addEvent(Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v15

    goto/16 :goto_4

    .line 702
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 706
    .restart local v13    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v17    # "loc":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v6

    goto/16 :goto_6

    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v8

    goto/16 :goto_8

    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_9

    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-interface {v10, v13}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v10

    goto/16 :goto_a

    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_b

    .line 728
    .restart local v2    # "jobRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    .restart local v8    # "timeout":J
    :cond_11
    sget-object v7, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    goto/16 :goto_c

    .line 736
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 737
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->processJobExecuteResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/GridJobExecuteResponse;)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 762
    .end local v2    # "jobRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    .end local v8    # "timeout":J
    .end local v13    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v17    # "loc":Z
    :catch_1
    move-exception v14

    .line 763
    .local v14, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send reply for job [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->taskNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", job="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 765
    .local v18, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, v18

    invoke-static {v3, v0, v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 767
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 768
    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v3, v1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->addEvent(Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Collection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v15

    goto/16 :goto_2

    .line 740
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v18    # "msg":Ljava/lang/String;
    .restart local v2    # "jobRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    .restart local v8    # "timeout":J
    .restart local v13    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v17    # "loc":Z
    :cond_13
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TASK:Lorg/apache/ignite/internal/GridTopic;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-eqz v3, :cond_14

    sget-object v3, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->MANAGEMENT_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    :goto_e
    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v5, v2, v3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 792
    .end local v2    # "jobRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    .end local v8    # "timeout":J
    .end local v13    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v17    # "loc":Z
    :catchall_0
    move-exception v3

    move-object v4, v3

    if-eqz v15, :cond_1b

    .line 793
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 794
    .restart local v20    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->recordEvent(ILjava/lang/String;)V

    goto :goto_f

    .line 740
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v20    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v2    # "jobRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    .restart local v8    # "timeout":J
    .restart local v13    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v17    # "loc":Z
    :cond_14
    :try_start_6
    sget-object v3, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_e

    .line 753
    .end local v2    # "jobRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    .end local v8    # "timeout":J
    .end local v13    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v17    # "loc":Z
    .local v14, "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_15
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending reply for job [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", jobId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ses="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", job="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 773
    .end local v14    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_16
    if-eqz p2, :cond_18

    .line 774
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isStarted:Z

    if-eqz v3, :cond_17

    .line 775
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 776
    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Job failed due to exception [ex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", job="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3, v4}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->addEvent(Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v15

    goto/16 :goto_2

    .line 779
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 780
    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Job has not been started [ex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", job="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3, v4}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->addEvent(Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v15

    goto/16 :goto_2

    .line 783
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 784
    const/16 v3, 0x2d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3, v4}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->addEvent(Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v15

    goto/16 :goto_2

    .line 788
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 789
    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Job failed due to timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3, v4}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->addEvent(Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Collection;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v15

    goto/16 :goto_2

    .line 798
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->evtLsnr:Lorg/apache/ignite/internal/processors/job/GridJobEventListener;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lorg/apache/ignite/internal/processors/job/GridJobEventListener;->onJobFinished(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->evtLsnr:Lorg/apache/ignite/internal/processors/job/GridJobEventListener;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lorg/apache/ignite/internal/processors/job/GridJobEventListener;->onJobFinished(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V

    throw v4
.end method

.method getCreateTime()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->createTime:J

    return-wide v0
.end method

.method public getDeployment()Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    return-object v0
.end method

.method getExecuteTime()J
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 281
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->startTime:J

    .line 282
    .local v2, "startTime0":J
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishTime:J

    .line 284
    .local v0, "finishTime0":J
    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    :goto_0
    return-wide v4

    :cond_0
    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    goto :goto_0

    :cond_1
    sub-long v4, v0, v2

    goto :goto_0
.end method

.method public getJob()Lorg/apache/ignite/compute/ComputeJob;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    return-object v0
.end method

.method public getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->jobCtx:Lorg/apache/ignite/internal/GridJobContextImpl;

    return-object v0
.end method

.method public getJobId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 2

    .prologue
    .line 225
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    .line 227
    .local v0, "jobId":Lorg/apache/ignite/lang/IgniteUuid;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 229
    :cond_0
    return-object v0
.end method

.method getJobTopic()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->jobTopic:Ljava/lang/Object;

    return-object v0
.end method

.method getQueuedTime()J
    .locals 6

    .prologue
    .line 292
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->startTime:J

    .line 294
    .local v0, "startTime0":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->createTime:J

    sub-long/2addr v2, v4

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->createTime:J

    sub-long v2, v0, v2

    goto :goto_0
.end method

.method public getSession()Lorg/apache/ignite/internal/GridJobSessionImpl;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    return-object v0
.end method

.method getTaskNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->taskNode:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method getTaskTopic()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->taskTopic:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 880
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    .line 882
    .local v0, "jobId":Lorg/apache/ignite/lang/IgniteUuid;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 884
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v1

    return v1
.end method

.method public held()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->held:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hold()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->held:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 360
    sget-object v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->HOLD:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->holdLsnr:Lorg/apache/ignite/internal/processors/job/GridJobHoldListener;

    invoke-interface {v0, p0}, Lorg/apache/ignite/internal/processors/job/GridJobHoldListener;->onHold(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V

    .line 363
    return-void
.end method

.method initialize(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z
    .locals 11
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p2, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 373
    sget-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 375
    :cond_0
    const/4 v7, 0x0

    .line 378
    .local v7, "ex":Lorg/apache/ignite/IgniteException;
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    if-nez v0, :cond_1

    .line 379
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->jobBytes:[B

    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/compute/ComputeJob;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->jobBytes:[B

    .line 386
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->jobCtx:Lorg/apache/ignite/internal/GridJobContextImpl;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->inject(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/compute/ComputeTaskSession;Lorg/apache/ignite/internal/GridJobContextImpl;)V

    .line 388
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    const/16 v0, 0x31

    const-string v1, "Job got queued for computation."

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->recordEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :cond_2
    if-eqz v7, :cond_3

    .line 403
    invoke-virtual {p0, v10, v7, v9}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishJob(Ljava/lang/Object;Lorg/apache/ignite/IgniteException;Z)V

    .line 406
    :cond_3
    :goto_0
    if-nez v7, :cond_6

    move v0, v9

    :goto_1
    return v0

    .line 391
    :catch_0
    move-exception v6

    .line 392
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initialize job [jobId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 394
    new-instance v8, Lorg/apache/ignite/IgniteException;

    invoke-direct {v8, v6}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    .end local v7    # "ex":Lorg/apache/ignite/IgniteException;
    .local v8, "ex":Lorg/apache/ignite/IgniteException;
    if-eqz v8, :cond_7

    .line 403
    invoke-virtual {p0, v10, v8, v9}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishJob(Ljava/lang/Object;Lorg/apache/ignite/IgniteException;Z)V

    move-object v7, v8

    .end local v8    # "ex":Lorg/apache/ignite/IgniteException;
    .restart local v7    # "ex":Lorg/apache/ignite/IgniteException;
    goto :goto_0

    .line 396
    .end local v6    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v6

    .line 397
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->handleThrowable(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteException;

    move-result-object v7

    .line 399
    sget-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez v7, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 402
    .end local v6    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 403
    invoke-virtual {p0, v10, v7, v9}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishJob(Ljava/lang/Object;Lorg/apache/ignite/IgniteException;Z)V

    :cond_4
    throw v0

    .line 402
    .restart local v6    # "e":Ljava/lang/Throwable;
    :cond_5
    if-eqz v7, :cond_3

    .line 403
    invoke-virtual {p0, v10, v7, v9}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishJob(Ljava/lang/Object;Lorg/apache/ignite/IgniteException;Z)V

    goto :goto_0

    .line 406
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .end local v7    # "ex":Lorg/apache/ignite/IgniteException;
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v8    # "ex":Lorg/apache/ignite/IgniteException;
    :cond_7
    move-object v7, v8

    .end local v8    # "ex":Lorg/apache/ignite/IgniteException;
    .restart local v7    # "ex":Lorg/apache/ignite/IgniteException;
    goto :goto_0
.end method

.method isFinishing()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isInternal()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    return v0
.end method

.method isSystemCanceled()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->sysCancelled:Z

    return v0
.end method

.method isTimedOut()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->timedOut:Z

    return v0
.end method

.method onMasterNodeLeft()Z
    .locals 6

    .prologue
    const/16 v5, 0x5d

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 809
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    instance-of v3, v3, Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;

    if-eqz v3, :cond_1

    .line 810
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->masterLeaveGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    check-cast v1, Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridJobSessionImpl;->session()Lorg/apache/ignite/internal/GridTaskSessionInternal;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;->onMasterNodeLeft(Lorg/apache/ignite/compute/ComputeTaskSession;)V

    .line 814
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully executed GridComputeJobMasterLeaveAware.onMasterNodeLeft() callback [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->taskNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", jobId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", job="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move v1, v2

    .line 827
    :cond_1
    return v1

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute GridComputeJobMasterLeaveAware.onMasterNodeLeft() callback [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->taskNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", jobId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", job="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStopping()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->sysStopping:Z

    .line 345
    return-void
.end method

.method public onTimeout()V
    .locals 4

    .prologue
    const/16 v3, 0x2e

    .line 327
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->timedOut:Z

    .line 332
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job has timed out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 334
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->cancel()V

    .line 336
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job has timed out: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->recordEvent(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public timeoutId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 2

    .prologue
    .line 304
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ses:Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    .line 306
    .local v0, "jobId":Lorg/apache/ignite/lang/IgniteUuid;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 308
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 889
    const-class v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
