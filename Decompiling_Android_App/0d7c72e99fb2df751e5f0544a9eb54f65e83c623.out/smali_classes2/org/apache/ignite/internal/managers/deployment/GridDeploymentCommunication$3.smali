.class Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$3;
.super Ljava/lang/Object;
.source "GridDeploymentCommunication.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


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

.field final synthetic val$qryMux:Ljava/lang/Object;

.field final synthetic val$res:Lorg/apache/ignite/internal/util/lang/GridTuple;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 411
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;Ljava/lang/Object;Lorg/apache/ignite/internal/util/lang/GridTuple;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$3;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    iput-object p2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$3;->val$qryMux:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$3;->val$res:Lorg/apache/ignite/internal/util/lang/GridTuple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 413
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$3;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 414
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$3;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 416
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$3;->val$qryMux:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    :try_start_0
    instance-of v0, p2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;

    if-nez v0, :cond_2

    .line 418
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$3;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    invoke-static {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->access$100(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unknown peer class loading response [node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 424
    .end local p2    # "msg":Ljava/lang/Object;
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$3;->val$qryMux:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 425
    monitor-exit v1

    .line 426
    return-void

    .line 422
    .restart local p2    # "msg":Ljava/lang/Object;
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication$3;->val$res:Lorg/apache/ignite/internal/util/lang/GridTuple;

    check-cast p2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;

    .end local p2    # "msg":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/util/lang/GridTuple;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
