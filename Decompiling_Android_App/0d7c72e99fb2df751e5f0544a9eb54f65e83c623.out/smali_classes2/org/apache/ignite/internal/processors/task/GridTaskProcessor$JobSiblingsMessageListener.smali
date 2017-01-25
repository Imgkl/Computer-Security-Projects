.class Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;
.super Ljava/lang/Object;
.source "GridTaskProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobSiblingsMessageListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1171
    const-class v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)V
    .locals 0

    .prologue
    .line 1171
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;

    .prologue
    .line 1171
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;-><init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 11
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1174
    instance-of v8, p2, Lorg/apache/ignite/internal/GridJobSiblingsRequest;

    if-nez v8, :cond_0

    .line 1175
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2100(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received unexpected message instead of siblings request: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1237
    :goto_0
    return-void

    .line 1180
    :cond_0
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 1183
    :try_start_0
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->stopping:Z
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2200(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->waiting:Z
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2300(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1184
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2400(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received job siblings request while stopping grid (will ignore): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 1189
    :cond_1
    :try_start_1
    move-object v0, p2

    check-cast v0, Lorg/apache/ignite/internal/GridJobSiblingsRequest;

    move-object v3, v0

    .line 1191
    .local v3, "req":Lorg/apache/ignite/internal/GridJobSiblingsRequest;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$1000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridJobSiblingsRequest;->sessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1195
    .local v6, "worker":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    if-eqz v6, :cond_2

    .line 1197
    :try_start_2
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getSession()Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getJobSiblings()Ljava/util/Collection;
    :try_end_2
    .catch Lorg/apache/ignite/IgniteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 1214
    .local v4, "siblings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridJobSiblingsRequest;->topic()Ljava/lang/Object;

    move-result-object v5

    .line 1216
    .local v5, "topic":Ljava/lang/Object;
    if-nez v5, :cond_5

    .line 1217
    sget-boolean v8, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->$assertionsDisabled:Z

    if-nez v8, :cond_4

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridJobSiblingsRequest;->topicBytes()[B

    move-result-object v8

    if-nez v8, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1230
    .end local v5    # "topic":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1231
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_4
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$3100(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v7

    const-string v8, "Failed to send job sibling response."

    invoke-static {v7, v8, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1235
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_2
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto/16 :goto_0

    .line 1199
    .end local v4    # "siblings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    :catch_1
    move-exception v1

    .line 1200
    .local v1, "e":Lorg/apache/ignite/IgniteException;
    :try_start_5
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2500(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get job siblings [request="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ses="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getSession()Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1203
    const/4 v4, 0x0

    .line 1204
    .restart local v4    # "siblings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    goto :goto_1

    .line 1207
    .end local v1    # "e":Lorg/apache/ignite/IgniteException;
    .end local v4    # "siblings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    :cond_2
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2600(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1208
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2700(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received job siblings request for unknown or finished task (will ignore): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1210
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "siblings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    goto/16 :goto_1

    .line 1219
    .restart local v5    # "topic":Ljava/lang/Object;
    :cond_4
    :try_start_6
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2800(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v8

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridJobSiblingsRequest;->topicBytes()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    .line 1222
    :cond_5
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2900(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1224
    .local v2, "loc":Z
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$3000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v9

    new-instance v10, Lorg/apache/ignite/internal/GridJobSiblingsResponse;

    if-eqz v2, :cond_6

    move-object v8, v4

    :goto_3
    if-eqz v2, :cond_7

    :goto_4
    invoke-direct {v10, v8, v7}, Lorg/apache/ignite/internal/GridJobSiblingsResponse;-><init>(Ljava/util/Collection;[B)V

    sget-object v7, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v9, p1, v5, v10, v7}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Ljava/util/UUID;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 1235
    .end local v2    # "loc":Z
    .end local v3    # "req":Lorg/apache/ignite/internal/GridJobSiblingsRequest;
    .end local v4    # "siblings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    .end local v5    # "topic":Ljava/lang/Object;
    .end local v6    # "worker":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v7

    .restart local v2    # "loc":Z
    .restart local v3    # "req":Lorg/apache/ignite/internal/GridJobSiblingsRequest;
    .restart local v4    # "siblings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    .restart local v5    # "topic":Ljava/lang/Object;
    .restart local v6    # "worker":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    :cond_6
    move-object v8, v7

    .line 1224
    goto :goto_3

    :cond_7
    :try_start_7
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2800(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v7

    invoke-interface {v7, v4}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v7

    goto :goto_4
.end method
