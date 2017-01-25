.class Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobCancelListener;
.super Ljava/lang/Object;
.source "GridJobProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobCancelListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1679
    const-class v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobCancelListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V
    .locals 0

    .prologue
    .line 1679
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobCancelListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;

    .prologue
    .line 1679
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobCancelListener;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 1682
    sget-boolean v1, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobCancelListener;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1683
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobCancelListener;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    move-object v0, p2

    .line 1685
    check-cast v0, Lorg/apache/ignite/internal/GridJobCancelRequest;

    .line 1687
    .local v0, "cancelMsg":Lorg/apache/ignite/internal/GridJobCancelRequest;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobCancelListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$5800(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1688
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobCancelListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$5900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received job cancel request [cancelMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1690
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobCancelListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridJobCancelRequest;->sessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridJobCancelRequest;->jobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridJobCancelRequest;->system()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelJob(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Z)V

    .line 1691
    return-void
.end method
