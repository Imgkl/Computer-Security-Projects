.class Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;
.super Ljava/lang/Object;
.source "GridTaskProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskEventListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final msgLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1016
    const-class v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)V
    .locals 4

    .prologue
    .line 1017
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    new-instance v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobMessageListener;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobMessageListener;-><init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;ZLorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->msgLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;

    .prologue
    .line 1017
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;-><init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)V

    return-void
.end method


# virtual methods
.method public onJobFailover(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Lorg/apache/ignite/internal/GridJobSiblingImpl;Ljava/util/UUID;)V
    .locals 3
    .param p2, "sib"    # Lorg/apache/ignite/internal/GridJobSiblingImpl;
    .param p3, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/task/GridTaskWorker",
            "<**>;",
            "Lorg/apache/ignite/internal/GridJobSiblingImpl;",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1037
    .local p1, "worker":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$700(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    .line 1040
    .local v0, "ioMgr":Lorg/apache/ignite/internal/managers/communication/GridIoManager;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getSession()Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->isFullSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1041
    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridJobSiblingImpl;->taskTopic()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->msgLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    .line 1043
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getSession()Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v2

    monitor-enter v2

    .line 1045
    :try_start_0
    invoke-virtual {p2, p3}, Lorg/apache/ignite/internal/GridJobSiblingImpl;->nodeId(Ljava/util/UUID;)V

    .line 1046
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridJobSiblingImpl;->taskTopic()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->msgLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 1058
    :goto_0
    return-void

    .line 1046
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1053
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getSession()Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v2

    monitor-enter v2

    .line 1055
    :try_start_2
    invoke-virtual {p2, p3}, Lorg/apache/ignite/internal/GridJobSiblingImpl;->nodeId(Ljava/util/UUID;)V

    .line 1056
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onJobFinished(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Lorg/apache/ignite/internal/GridJobSiblingImpl;)V
    .locals 2
    .param p2, "sib"    # Lorg/apache/ignite/internal/GridJobSiblingImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/task/GridTaskWorker",
            "<**>;",
            "Lorg/apache/ignite/internal/GridJobSiblingImpl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1063
    .local p1, "worker":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getSession()Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v1

    monitor-enter v1

    .line 1064
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridJobSiblingImpl;->onJobDone()V

    .line 1065
    monitor-exit v1

    .line 1066
    return-void

    .line 1065
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onJobSend(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Lorg/apache/ignite/internal/GridJobSiblingImpl;)V
    .locals 3
    .param p2, "sib"    # Lorg/apache/ignite/internal/GridJobSiblingImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/task/GridTaskWorker",
            "<**>;",
            "Lorg/apache/ignite/internal/GridJobSiblingImpl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1030
    .local p1, "worker":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getSession()Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->isFullSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$600(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridJobSiblingImpl;->taskTopic()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->msgLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 1033
    :cond_0
    return-void
.end method

.method public onTaskFinished(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/task/GridTaskWorker",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 1070
    .local p1, "worker":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getSession()Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v6

    .line 1072
    .local v6, "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    invoke-virtual {v6}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->isFullSupport()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1073
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getSession()Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v9

    monitor-enter v9

    .line 1074
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getSession()Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->onClosed()V

    .line 1075
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$800(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->checkpoint()Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->onSessionEnd(Lorg/apache/ignite/internal/GridTaskSessionInternal;Z)V

    .line 1080
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$900(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->session()Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->removeSession(Lorg/apache/ignite/lang/IgniteUuid;)Z

    .line 1083
    :cond_0
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$1000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getTaskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-interface {v8, v9, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 1085
    .local v4, "rmv":Z
    sget-boolean v8, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    if-nez v4, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1075
    .end local v4    # "rmv":Z
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1088
    .restart local v4    # "rmv":Z
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->endTime()J

    move-result-wide v8

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 1089
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$1100(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 1091
    :cond_2
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getDeployment()Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v9

    # invokes: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->release(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    invoke-static {v8, v9}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$1200(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    .line 1093
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->isInternal()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1094
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execTasks:Lorg/jsr166/LongAdder8;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$1300(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/jsr166/LongAdder8;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jsr166/LongAdder8;->increment()V

    .line 1097
    :cond_3
    invoke-virtual {v6}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->isFullSupport()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1099
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getSession()Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getJobSiblings()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/compute/ComputeJobSibling;

    .line 1100
    .local v7, "sibling":Lorg/apache/ignite/compute/ComputeJobSibling;
    move-object v0, v7

    check-cast v0, Lorg/apache/ignite/internal/GridJobSiblingImpl;

    move-object v5, v0

    .line 1102
    .local v5, "s":Lorg/apache/ignite/internal/GridJobSiblingImpl;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$1400(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridJobSiblingImpl;->taskTopic()Ljava/lang/Object;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->msgLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    invoke-virtual {v8, v9, v10}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z
    :try_end_2
    .catch Lorg/apache/ignite/IgniteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1105
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "s":Lorg/apache/ignite/internal/GridJobSiblingImpl;
    .end local v7    # "sibling":Lorg/apache/ignite/compute/ComputeJobSibling;
    :catch_0
    move-exception v2

    .line 1106
    .local v2, "e":Lorg/apache/ignite/IgniteException;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$1500(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v8

    const-string v9, "Failed to unregister job communication message listeners and counters."

    invoke-static {v8, v9, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1109
    .end local v2    # "e":Lorg/apache/ignite/IgniteException;
    :cond_4
    return-void
.end method

.method public onTaskStarted(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/task/GridTaskWorker",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 1024
    .local p1, "worker":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->endTime()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1025
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$500(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 1026
    :cond_0
    return-void
.end method
