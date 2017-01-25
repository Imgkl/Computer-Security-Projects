.class Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;
.super Ljava/lang/Object;
.source "GridDeploymentCommunication.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->sendResourceRequest(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;J)Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

.field final synthetic val$dstNode:Lorg/apache/ignite/cluster/ClusterNode;

.field final synthetic val$qryMux:Ljava/lang/Object;

.field final synthetic val$res:Lorg/apache/ignite/internal/util/lang/GridTuple;

.field final synthetic val$rsrcName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 377
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/internal/util/lang/GridTuple;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    iput-object p2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;->val$dstNode:Lorg/apache/ignite/cluster/ClusterNode;

    iput-object p3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;->val$rsrcName:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;->val$qryMux:Ljava/lang/Object;

    iput-object p5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;->val$res:Lorg/apache/ignite/internal/util/lang/GridTuple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 6
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 379
    sget-boolean v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    instance-of v4, p1, Lorg/apache/ignite/events/DiscoveryEvent;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 381
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_1
    move-object v0, p1

    .line 383
    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 385
    .local v0, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    .line 387
    .local v3, "nodeId":Ljava/util/UUID;
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;->val$dstNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 408
    :goto_0
    return-void

    .line 391
    :cond_2
    new-instance v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;

    invoke-direct {v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;-><init>()V

    .line 393
    .local v2, "fake":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Originating node left grid (resource will not be peer loaded) [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;->val$dstNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rsrc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;->val$rsrcName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "errMsg":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    invoke-static {v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->access$100(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 398
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->success(Z)V

    .line 399
    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->errorMessage(Ljava/lang/String;)V

    .line 403
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;->val$qryMux:Ljava/lang/Object;

    monitor-enter v5

    .line 404
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;->val$res:Lorg/apache/ignite/internal/util/lang/GridTuple;

    invoke-virtual {v4, v2}, Lorg/apache/ignite/internal/util/lang/GridTuple;->set(Ljava/lang/Object;)V

    .line 406
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$2;->val$qryMux:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 407
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
