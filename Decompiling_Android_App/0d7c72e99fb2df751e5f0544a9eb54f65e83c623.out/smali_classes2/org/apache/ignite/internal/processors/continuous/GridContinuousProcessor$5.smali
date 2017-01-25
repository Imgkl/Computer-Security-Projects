.class Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridContinuousProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->registerHandler(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

.field final synthetic val$hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

.field final synthetic val$info:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;

.field final synthetic val$interval:J

.field final synthetic val$nodeId:Ljava/util/UUID;

.field final synthetic val$routineId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;JLorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;)V
    .locals 1
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 1045
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->val$interval:J

    iput-object p7, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->val$info:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;

    iput-object p8, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->val$nodeId:Ljava/util/UUID;

    iput-object p9, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->val$routineId:Ljava/util/UUID;

    iput-object p10, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->val$hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    return-void
.end method


# virtual methods
.method protected body()V
    .locals 12

    .prologue
    .line 1048
    iget-wide v10, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->val$interval:J

    .line 1050
    .local v10, "interval0":J
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1052
    :try_start_0
    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->val$info:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->checkInterval()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v9

    .line 1060
    .local v9, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/Object;>;Ljava/lang/Long;>;"
    invoke-virtual {v9}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 1062
    .local v4, "toSnd":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    :try_start_1
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v6, v0, Lorg/apache/ignite/plugin/extensions/communication/Message;

    .line 1066
    .local v6, "msg":Z
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->val$nodeId:Ljava/util/UUID;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->val$routineId:Ljava/util/UUID;

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->val$hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;->orderedTopic()Ljava/lang/Object;

    move-result-object v5

    # invokes: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->sendNotification(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection;Ljava/lang/Object;Z)V
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$4700(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection;Ljava/lang/Object;Z)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1077
    .end local v6    # "msg":Z
    :cond_0
    :goto_1
    invoke-virtual {v9}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1078
    goto :goto_0

    .line 1054
    .end local v4    # "toSnd":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v9    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/Object;>;Ljava/lang/Long;>;"
    :catch_0
    move-exception v8

    .line 1079
    :cond_1
    return-void

    .line 1068
    .restart local v4    # "toSnd":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v9    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/Object;>;Ljava/lang/Long;>;"
    :catch_1
    move-exception v8

    .line 1069
    .local v8, "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send notification to node (is node alive?): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->val$nodeId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 1072
    .end local v8    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_2
    move-exception v7

    .line 1073
    .local v7, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send notification to node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$5;->val$nodeId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
