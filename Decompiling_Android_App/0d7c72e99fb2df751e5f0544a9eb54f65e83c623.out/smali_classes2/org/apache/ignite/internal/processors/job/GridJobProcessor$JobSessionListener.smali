.class Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobSessionListener;
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
    name = "JobSessionListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1663
    const-class v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobSessionListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V
    .locals 0

    .prologue
    .line 1663
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobSessionListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;

    .prologue
    .line 1663
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobSessionListener;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 1666
    sget-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobSessionListener;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1667
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobSessionListener;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1669
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobSessionListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$5500(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1670
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobSessionListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$5600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received session attribute request message [msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1672
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobSessionListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    check-cast p2, Lorg/apache/ignite/internal/GridTaskSessionRequest;

    .end local p2    # "msg":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$5700(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/GridTaskSessionRequest;)V

    .line 1673
    return-void
.end method
