.class Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;
.super Ljava/lang/Object;
.source "GridTaskWorker.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->result(Lorg/apache/ignite/compute/ComputeJobResult;Ljava/util/List;)Lorg/apache/ignite/compute/ComputeJobResultPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CO",
        "<",
        "Lorg/apache/ignite/compute/ComputeJobResultPolicy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

.field final synthetic val$jobRes:Lorg/apache/ignite/compute/ComputeJobResult;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Lorg/apache/ignite/compute/ComputeJobResult;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 822
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->val$jobRes:Lorg/apache/ignite/compute/ComputeJobResult;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 822
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker.3;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->apply()Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    move-result-object v0

    return-object v0
.end method

.method public apply()Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker.3;"
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v5, 0x0

    .line 826
    const/4 v3, 0x0

    .line 829
    .local v3, "plc":Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->task:Lorg/apache/ignite/compute/ComputeTask;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$500(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/compute/ComputeTask;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->val$jobRes:Lorg/apache/ignite/compute/ComputeJobResult;

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->val$results:Ljava/util/List;

    invoke-interface {v6, v7, v8}, Lorg/apache/ignite/compute/ComputeTask;->result(Lorg/apache/ignite/compute/ComputeJobResult;Ljava/util/List;)Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    move-result-object v3

    .line 831
    sget-object v6, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->FAILOVER:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    if-ne v3, v6, :cond_4

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->noFailover:Z
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$600(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 832
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->val$jobRes:Lorg/apache/ignite/compute/ComputeJobResult;

    invoke-interface {v6}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v0

    .line 834
    .local v0, "e":Lorg/apache/ignite/IgniteException;
    if-eqz v0, :cond_3

    .line 835
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    .end local v0    # "e":Lorg/apache/ignite/IgniteException;
    :catchall_0
    move-exception v6

    :try_start_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    const/16 v8, 0x29

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->val$jobRes:Lorg/apache/ignite/compute/ComputeJobResult;

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeJobContext;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->val$jobRes:Lorg/apache/ignite/compute/ComputeJobResult;

    invoke-interface {v10}, Lorg/apache/ignite/compute/ComputeJobResult;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Job got resulted with: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->recordJobEvent(ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)V
    invoke-static {v7, v8, v9, v10, v11}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$700(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lorg/apache/ignite/IgniteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .restart local v0    # "e":Lorg/apache/ignite/IgniteException;
    new-array v6, v14, [Ljava/lang/Class;

    const-class v7, Lorg/apache/ignite/internal/GridInternalException;

    aput-object v7, v6, v13

    invoke-static {v0, v6}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    new-array v6, v14, [Ljava/lang/Class;

    const-class v7, Lorg/apache/ignite/igfs/IgfsOutOfSpaceException;

    aput-object v7, v6, v13

    invoke-static {v0, v6}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 854
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$800(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 855
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$800(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to obtain remote job result policy for result from ComputeTask.result(..) method (will fail the whole task): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->val$jobRes:Lorg/apache/ignite/compute/ComputeJobResult;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 871
    :cond_1
    :goto_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    invoke-virtual {v6, v5, v0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v3, v5

    .line 888
    .end local v0    # "e":Lorg/apache/ignite/IgniteException;
    .end local v3    # "plc":Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    :cond_2
    :goto_1
    return-object v3

    .line 837
    .restart local v0    # "e":Lorg/apache/ignite/IgniteException;
    .restart local v3    # "plc":Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    :cond_3
    :try_start_2
    sget-object v3, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->WAIT:Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 841
    .end local v0    # "e":Lorg/apache/ignite/IgniteException;
    :cond_4
    :try_start_3
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    const/16 v7, 0x29

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->val$jobRes:Lorg/apache/ignite/compute/ComputeJobResult;

    invoke-interface {v8}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/compute/ComputeJobContext;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->val$jobRes:Lorg/apache/ignite/compute/ComputeJobResult;

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeJobResult;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Job got resulted with: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->recordJobEvent(ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)V
    invoke-static {v6, v7, v8, v9, v10}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$700(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)V

    .line 845
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$800(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 846
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$800(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Obtained job result policy [policy="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ses="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$100(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 875
    :catch_1
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to obtain remote job result policy for result fromGridComputeTask.result(..) method due to undeclared user exception (will fail the whole task): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->val$jobRes:Lorg/apache/ignite/compute/ComputeJobResult;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 880
    .local v2, "errMsg":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$800(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v6

    invoke-static {v6, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 882
    new-instance v4, Lorg/apache/ignite/compute/ComputeUserUndeclaredException;

    invoke-direct {v4, v2, v0}, Lorg/apache/ignite/compute/ComputeUserUndeclaredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 886
    .local v4, "tmp":Ljava/lang/Throwable;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    invoke-virtual {v6, v5, v4}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v3, v5

    .line 888
    goto/16 :goto_1

    .line 858
    .end local v2    # "errMsg":Ljava/lang/String;
    .end local v4    # "tmp":Ljava/lang/Throwable;
    .local v0, "e":Lorg/apache/ignite/IgniteException;
    :cond_5
    new-array v6, v14, [Ljava/lang/Class;

    const-class v7, Lorg/apache/ignite/compute/ComputeJobFailoverException;

    aput-object v7, v6, v13

    invoke-static {v0, v6}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 859
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v6, " Job was not failed over because ComputeJobResultPolicy.FAILOVER was not returned from ComputeTask.result(...) method for job result with GridComputeJobFailoverException."

    invoke-direct {v1, v6, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 863
    .local v1, "e0":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    invoke-virtual {v6, v5, v1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v3, v5

    .line 865
    goto/16 :goto_1

    .line 868
    .end local v1    # "e0":Lorg/apache/ignite/IgniteCheckedException;
    :cond_6
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$800(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to obtain remote job result policy for result from ComputeTask.result(..) method (will fail the whole task): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$3;->val$jobRes:Lorg/apache/ignite/compute/ComputeJobResult;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
