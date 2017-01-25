.class Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;
.super Ljava/lang/Object;
.source "GridTaskCommandHandler.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->handleAsyncUnsafe(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteInClosure",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

.field final synthetic val$async:Z

.field final synthetic val$fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

.field final synthetic val$locExec:Z

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$req:Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

.field final synthetic val$res:Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

.field final synthetic val$taskRestRes:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 227
    const-class v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;Ljava/lang/String;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;ZZLorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;Lorg/apache/ignite/internal/processors/rest/GridRestResponse;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$req:Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$async:Z

    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$locExec:Z

    iput-object p6, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$taskRestRes:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;

    iput-object p7, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$res:Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    iput-object p8, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 227
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "taskFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;

    const/4 v3, 0x1

    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;-><init>(ZLjava/lang/Object;Ljava/lang/Throwable;Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .local v0, "desc":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;
    :goto_0
    :try_start_1
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$async:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$locExec:Z

    if-eqz v3, :cond_3

    .line 248
    sget-boolean v3, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    instance-of v3, p1, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    .end local v0    # "desc":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;
    .end local p1    # "taskFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v3

    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$async:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 275
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v6, "Failed to execute task (see server logs for details)."

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    :cond_0
    throw v3

    .line 235
    .restart local p1    # "taskFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    const/4 v3, 0x2

    :try_start_2
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    # getter for: Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->access$500(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to execute task due to topology issues (are all mapped nodes alive?) [name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clientId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$req:Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", err="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 244
    :goto_1
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v1, v5}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;-><init>(ZLjava/lang/Object;Ljava/lang/Throwable;Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;)V

    .restart local v0    # "desc":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;
    goto/16 :goto_0

    .line 241
    .end local v0    # "desc":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    # getter for: Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->access$600(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to execute task [name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clientId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$req:Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 250
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v0    # "desc":Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;
    :cond_2
    check-cast p1, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    .end local p1    # "taskFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    .line 252
    .local v2, "tid":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;

    # getter for: Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->taskDescs:Ljava/util/Map;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;->access$100(Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .end local v2    # "tid":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_3
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$async:Z

    if-nez v3, :cond_4

    .line 256
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->error()Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    if-nez v3, :cond_6

    .line 258
    :try_start_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$taskRestRes:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->setFinished(Z)V

    .line 259
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$taskRestRes:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->result()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->setResult(Ljava/lang/Object;)V

    .line 261
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$res:Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$taskRestRes:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->setResponse(Ljava/lang/Object;)V

    .line 262
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$res:Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/apache/ignite/IgniteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    :cond_4
    :goto_2
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$async:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v3

    if-nez v3, :cond_5

    .line 275
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    const-string v5, "Failed to execute task (see server logs for details)."

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 277
    :cond_5
    return-void

    .line 264
    :catch_1
    move-exception v1

    .line 265
    .local v1, "e":Lorg/apache/ignite/IgniteException;
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to marshal task result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->result()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 270
    .end local v1    # "e":Lorg/apache/ignite/IgniteException;
    :cond_6
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$2;->val$fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->error()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method
