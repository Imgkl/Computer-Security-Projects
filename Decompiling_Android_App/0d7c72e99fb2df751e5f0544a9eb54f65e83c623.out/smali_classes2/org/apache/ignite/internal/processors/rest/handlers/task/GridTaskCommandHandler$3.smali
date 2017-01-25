.class Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;
.super Ljava/lang/Object;
.source "GridTaskCommandHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->requestTaskResult(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteBiTuple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

.field final synthetic val$cond:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$lock:Ljava/util/concurrent/locks/Lock;

.field final synthetic val$resHolderId:Ljava/util/UUID;

.field final synthetic val$t:Lorg/apache/ignite/lang/IgniteBiTuple;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;Ljava/util/UUID;Ljava/util/concurrent/locks/Lock;Lorg/apache/ignite/lang/IgniteBiTuple;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;->val$resHolderId:Ljava/util/UUID;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;->val$lock:Ljava/util/concurrent/locks/Lock;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;->val$t:Lorg/apache/ignite/lang/IgniteBiTuple;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;->val$cond:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 397
    const/4 v1, 0x0

    .line 398
    .local v1, "err":Ljava/lang/String;
    const/4 v2, 0x0

    .line 400
    .local v2, "res":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;
    instance-of v3, p2, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;

    if-nez v3, :cond_1

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received unexpected message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    # getter for: Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->access$700(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->resultBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->result(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 419
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;->val$t:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;->val$t:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v3, v1, v2}, Lorg/apache/ignite/lang/IgniteBiTuple;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 422
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;->val$cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 428
    return-void

    .line 402
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;->val$resHolderId:Ljava/util/UUID;

    invoke-virtual {p1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received task result response from unexpected node [resHolderId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;->val$resHolderId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v2, p2

    .line 407
    check-cast v2, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    # getter for: Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->access$800(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unmarshal task result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 426
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$3;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method
