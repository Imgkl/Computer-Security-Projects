.class Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;
.super Ljava/lang/Object;
.source "GridEventStorageManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1005
    const-class v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)V
    .locals 0

    .prologue
    .line 1005
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;

    .prologue
    .line 1005
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;-><init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 18
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 1008
    sget-boolean v1, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1009
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1011
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # invokes: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->enterBusy()Z
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$700(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1104
    :goto_0
    return-void

    .line 1015
    :cond_2
    :try_start_0
    move-object/from16 v0, p2

    instance-of v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;

    if-nez v1, :cond_3

    .line 1016
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$800(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unknown message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # invokes: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->leaveBusy()V
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$2200(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)V

    goto :goto_0

    .line 1021
    :cond_3
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;

    move-object/from16 v16, v0

    .line 1023
    .local v16, "req":Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$900(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v15

    .line 1025
    .local v15, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v15, :cond_4

    .line 1026
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$1000(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve sender node that does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1102
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # invokes: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->leaveBusy()V
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$2200(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)V

    goto :goto_0

    .line 1031
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$1100(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1032
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$1200(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received event query request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1034
    :cond_5
    const/4 v13, 0x0

    .line 1036
    .local v13, "ex":Ljava/lang/Throwable;
    const/4 v14, 0x0

    .line 1041
    .local v14, "filter":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/events/Event;>;"
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->responseTopicBytes()[B

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1042
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$400(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->responseTopicBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->responseTopic(Ljava/lang/Object;)V

    .line 1044
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$1300(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->filterClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->filterClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->userVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->loaderParticipants()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getGlobalDeployment(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v10

    .line 1054
    .local v10, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v10, :cond_9

    .line 1055
    new-instance v1, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to obtain deployment for event filter (is peer class loading turned on?): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1066
    .end local v10    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :catch_0
    move-exception v11

    .line 1067
    .local v11, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$1500(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query events [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", filter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1069
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 1071
    .local v12, "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/events/Event;>;"
    move-object v13, v11

    .line 1083
    .end local v11    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_1
    new-instance v17, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;

    move-object/from16 v0, v17

    invoke-direct {v0, v12, v13}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;-><init>(Ljava/util/Collection;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1086
    .local v17, "res":Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$1700(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1087
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$1800(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending event query response to node [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1089
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$1900(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1090
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$400(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->events()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->eventsBytes([B)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$400(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->exception()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->exceptionBytes([B)V

    .line 1094
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$2000(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->responseTopic()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-object/from16 v0, v17

    invoke-virtual {v1, v15, v2, v0, v3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1102
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # invokes: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->leaveBusy()V
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$2200(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)V

    goto/16 :goto_0

    .line 1058
    .end local v12    # "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/events/Event;>;"
    .end local v17    # "res":Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;
    .restart local v10    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :cond_9
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$400(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->filter()[B

    move-result-object v2

    invoke-virtual {v10}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/ignite/lang/IgnitePredicate;

    move-object v14, v0

    .line 1061
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$1400(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->filterClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v10, v2, v14}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->inject(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    invoke-virtual {v1, v14}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->localEvents(Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v12

    .restart local v12    # "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/events/Event;>;"
    goto/16 :goto_1

    .line 1073
    .end local v10    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v12    # "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/events/Event;>;"
    :catch_1
    move-exception v11

    .line 1074
    .local v11, "e":Ljava/lang/Throwable;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$1600(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query events due to user exception [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", filter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1077
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 1079
    .restart local v12    # "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/events/Event;>;"
    move-object v13, v11

    goto/16 :goto_1

    .line 1096
    .end local v11    # "e":Ljava/lang/Throwable;
    .restart local v17    # "res":Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;
    :catch_2
    move-exception v11

    .line 1097
    .local v11, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # getter for: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$2100(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send event query response to node [node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 1102
    .end local v11    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v12    # "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/events/Event;>;"
    .end local v13    # "ex":Ljava/lang/Throwable;
    .end local v14    # "filter":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/events/Event;>;"
    .end local v15    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v16    # "req":Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;
    .end local v17    # "res":Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$RequestListener;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    # invokes: Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->leaveBusy()V
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->access$2200(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;)V

    throw v1
.end method
