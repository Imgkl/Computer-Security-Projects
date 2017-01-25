.class Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$2;
.super Ljava/lang/Object;
.source "GridServiceProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->onDeployment(Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private id:Lorg/apache/ignite/lang/IgniteUuid;

.field private start:J

.field final synthetic this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

.field final synthetic val$dep:Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

.field final synthetic val$topVer:J


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V
    .locals 3

    .prologue
    .line 1000
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$2;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$2;->val$dep:Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$2;->val$topVer:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$2;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 1003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$2;->start:J

    return-void
.end method


# virtual methods
.method public endTime()J
    .locals 4

    .prologue
    .line 1010
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$2;->start:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public onTimeout()V
    .locals 4

    .prologue
    .line 1014
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$2;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    :goto_0
    return-void

    .line 1019
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$2;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$2;->val$dep:Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$2;->val$topVer:J

    # invokes: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->onDeployment(Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V
    invoke-static {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->access$1300(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$2;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$2;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0
.end method

.method public timeoutId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$DeploymentListener$2;->id:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method
