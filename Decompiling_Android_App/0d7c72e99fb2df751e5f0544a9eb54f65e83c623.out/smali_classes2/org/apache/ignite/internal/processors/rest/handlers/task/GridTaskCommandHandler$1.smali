.class Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;
.super Ljava/lang/Object;
.source "GridTaskCommandHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

.field final synthetic val$ctx:Lorg/apache/ignite/internal/GridKernalContext;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 11
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 84
    instance-of v8, p2, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;

    if-nez v8, :cond_0

    .line 85
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    # getter for: Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->access$000(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received unexpected message instead of task result request: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 122
    :goto_0
    return-void

    .line 91
    :cond_0
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;

    move-object v4, v0

    .line 93
    .local v4, "req":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;
    new-instance v5, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;

    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;-><init>()V

    .line 95
    .local v5, "res":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->taskId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    .line 97
    .local v6, "taskId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    # getter for: Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->taskDescs:Ljava/util/Map;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->access$100(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;

    .line 99
    .local v1, "desc":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;
    if-eqz v1, :cond_2

    .line 100
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->found(Z)V

    .line 101
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->finished()Z

    move-result v8

    invoke-virtual {v5, v8}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->finished(Z)V

    .line 103
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->error()Ljava/lang/Throwable;

    move-result-object v3

    .line 105
    .local v3, "err":Ljava/lang/Throwable;
    if-eqz v3, :cond_1

    .line 106
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->error(Ljava/lang/String;)V

    .line 115
    .end local v3    # "err":Ljava/lang/Throwable;
    :goto_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v8

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->topicBytes()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    .line 117
    .local v7, "topic":Ljava/lang/Object;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v8

    sget-object v9, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v8, p1, v7, v5, v9}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Ljava/util/UUID;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    .end local v1    # "desc":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;
    .end local v5    # "res":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;
    .end local v6    # "taskId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v7    # "topic":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    # getter for: Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->access$200(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v8

    const-string v9, "Failed to send job task result response."

    invoke-static {v8, v9, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 108
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "desc":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;
    .restart local v3    # "err":Ljava/lang/Throwable;
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;
    .restart local v5    # "res":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;
    .restart local v6    # "taskId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->result()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->result(Ljava/lang/Object;)V

    .line 109
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v8

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->result()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->resultBytes([B)V

    goto :goto_1

    .line 113
    .end local v3    # "err":Ljava/lang/Throwable;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->found(Z)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
