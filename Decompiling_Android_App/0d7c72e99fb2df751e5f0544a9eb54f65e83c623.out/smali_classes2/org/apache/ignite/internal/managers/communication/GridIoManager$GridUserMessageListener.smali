.class Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;
.super Ljava/lang/Object;
.source "GridIoManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/communication/GridIoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridUserMessageListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final predLsnr:Lorg/apache/ignite/lang/IgniteBiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

.field private final topic:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1633
    const-class v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)V
    .locals 1
    .param p1    # Lorg/apache/ignite/internal/managers/communication/GridIoManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1646
    .local p3, "predLsnr":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Ljava/util/UUID;Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1647
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->topic:Ljava/lang/Object;

    .line 1648
    iput-object p3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->predLsnr:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 1650
    if-eqz p3, :cond_0

    .line 1651
    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {p1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$1800(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectGeneric(Ljava/lang/Object;)V

    .line 1652
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1741
    if-ne p0, p1, :cond_1

    .line 1749
    :cond_0
    :goto_0
    return v1

    .line 1744
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1745
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1747
    check-cast v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;

    .line 1749
    .local v0, "l":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->predLsnr:Lorg/apache/ignite/lang/IgniteBiPredicate;

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->predLsnr:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->topic:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->topic:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1754
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->predLsnr:Lorg/apache/ignite/lang/IgniteBiPredicate;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->predLsnr:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1756
    .local v0, "res":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->topic:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->topic:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 1758
    return v0

    .end local v0    # "res":I
    :cond_1
    move v0, v1

    .line 1754
    goto :goto_0
.end method

.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 17
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 1658
    move-object/from16 v0, p2

    instance-of v1, v0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;

    if-nez v1, :cond_1

    .line 1659
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$1900(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unknown message (potentially fatal problem): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1737
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v12, p2

    .line 1664
    check-cast v12, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;

    .line 1666
    .local v12, "ioMsg":Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$2000(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v16

    .line 1668
    .local v16, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v16, :cond_2

    .line 1669
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$2100(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve sender node (did the node left grid?): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 1674
    :cond_2
    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->body()Ljava/lang/Object;

    move-result-object v13

    .line 1676
    .local v13, "msgBody":Ljava/lang/Object;
    sget-boolean v1, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez v13, :cond_3

    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->bodyBytes()[B

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1679
    :cond_3
    :try_start_0
    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->topicBytes()[B

    move-result-object v15

    .line 1681
    .local v15, "msgTopicBytes":[B
    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->topic()Ljava/lang/Object;

    move-result-object v14

    .line 1683
    .local v14, "msgTopic":Ljava/lang/Object;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->deployment()Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v10

    .line 1685
    .local v10, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v10, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$2200(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->deploymentClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1687
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$2300(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v1

    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v2

    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->deploymentClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->deploymentClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->userVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->loaderParticipants()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getGlobalDeployment(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v10

    .line 1697
    if-nez v10, :cond_5

    .line 1698
    new-instance v1, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to obtain deployment information for user message. If you are using custom message or topic class, try implementing GridPeerDeployAware interface. [msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1726
    .end local v10    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v14    # "msgTopic":Ljava/lang/Object;
    .end local v15    # "msgTopicBytes":[B
    :catch_0
    move-exception v11

    .line 1727
    .local v11, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$2600(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unmarshal user message [node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1731
    .end local v11    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_4
    :goto_1
    if-eqz v13, :cond_0

    .line 1732
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->predLsnr:Lorg/apache/ignite/lang/IgniteBiPredicate;

    if-eqz v1, :cond_0

    .line 1733
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->predLsnr:Lorg/apache/ignite/lang/IgniteBiPredicate;

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v13}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1734
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_COMM_USER:Lorg/apache/ignite/internal/GridTopic;

    move-object/from16 v0, p0

    invoke-virtual {v1, v2, v0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    goto/16 :goto_0

    .line 1703
    .restart local v10    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .restart local v14    # "msgTopic":Ljava/lang/Object;
    .restart local v15    # "msgTopicBytes":[B
    :cond_5
    :try_start_1
    invoke-virtual {v12, v10}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->deployment(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    .line 1707
    :cond_6
    if-nez v14, :cond_7

    if-eqz v15, :cond_7

    .line 1708
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$2400(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v2

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_2
    invoke-interface {v2, v15, v1}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v14

    .line 1710
    invoke-virtual {v12, v14}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->topic(Ljava/lang/Object;)V

    .line 1713
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->topic:Ljava/lang/Object;

    invoke-static {v1, v14}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1716
    if-nez v13, :cond_8

    .line 1717
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$2400(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v2

    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->bodyBytes()[B

    move-result-object v3

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_3
    invoke-interface {v2, v3, v1}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v13

    .line 1719
    invoke-virtual {v12, v13}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->body(Ljava/lang/Object;)V

    .line 1723
    :cond_8
    if-eqz v10, :cond_4

    .line 1724
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$2500(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v1

    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->deploymentClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v10, v2, v13}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->inject(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1708
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 1717
    :cond_a
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1763
    const-class v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridUserMessageListener;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
