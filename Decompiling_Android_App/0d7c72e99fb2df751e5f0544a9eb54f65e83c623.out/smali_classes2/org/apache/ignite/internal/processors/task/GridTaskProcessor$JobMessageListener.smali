.class Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobMessageListener;
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
    name = "JobMessageListener"
.end annotation


# instance fields
.field private final jobResOnly:Z

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;Z)V
    .locals 0
    .param p2, "jobResOnly"    # Z

    .prologue
    .line 1123
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobMessageListener;->jobResOnly:Z

    .line 1125
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;ZLorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;

    .prologue
    .line 1115
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobMessageListener;-><init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;Z)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 1129
    instance-of v0, p2, Lorg/apache/ignite/internal/GridTaskMessage;

    if-nez v0, :cond_0

    .line 1130
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$1600(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message of unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1143
    .end local p2    # "msg":Ljava/lang/Object;
    :goto_0
    return-void

    .line 1135
    .restart local p2    # "msg":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    if-eqz v0, :cond_1

    .line 1136
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    check-cast p2, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .end local p2    # "msg":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->processJobExecuteResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/GridJobExecuteResponse;)V

    goto :goto_0

    .line 1137
    .restart local p2    # "msg":Ljava/lang/Object;
    :cond_1
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobMessageListener;->jobResOnly:Z

    if-eqz v0, :cond_2

    .line 1138
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$1700(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message of type other than job response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 1139
    :cond_2
    instance-of v0, p2, Lorg/apache/ignite/internal/GridTaskSessionRequest;

    if-eqz v0, :cond_3

    .line 1140
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    check-cast p2, Lorg/apache/ignite/internal/GridTaskSessionRequest;

    .end local p2    # "msg":Ljava/lang/Object;
    # invokes: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->processTaskSessionRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/GridTaskSessionRequest;)V
    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$1800(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/GridTaskSessionRequest;)V

    goto :goto_0

    .line 1142
    .restart local p2    # "msg":Ljava/lang/Object;
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$1900(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message of unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method
