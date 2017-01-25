.class Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;
.super Ljava/lang/Object;
.source "GridServiceProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->redeploy(Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

.field final synthetic val$cp:Lorg/apache/ignite/services/Service;

.field final synthetic val$exe:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$svcCtx:Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/services/Service;Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$cp:Lorg/apache/ignite/services/Service;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$svcCtx:Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$exe:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 800
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$cp:Lorg/apache/ignite/services/Service;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$svcCtx:Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    invoke-interface {v2, v3}, Lorg/apache/ignite/services/Service;->execute(Lorg/apache/ignite/services/ServiceContext;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$exe:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 827
    :goto_0
    return-void

    .line 802
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 803
    .local v1, "ignore":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$300(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 804
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$400(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service thread was interrupted [name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$svcCtx:Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", execId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$svcCtx:Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->executionId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 825
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$exe:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    .line 807
    .end local v1    # "ignore":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 808
    .local v0, "e":Lorg/apache/ignite/IgniteException;
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/InterruptedException;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/ignite/IgniteException;->hasCause([Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/ignite/IgniteException;->hasCause([Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 810
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$500(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 811
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service thread was interrupted [name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$svcCtx:Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", execId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$svcCtx:Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->executionId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 825
    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$exe:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto/16 :goto_0

    .line 815
    :cond_3
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$700(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service execution stopped with error [name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$svcCtx:Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", execId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$svcCtx:Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->executionId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 825
    .end local v0    # "e":Lorg/apache/ignite/IgniteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$exe:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    throw v2

    .line 819
    :catch_2
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$800(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service execution stopped with error [name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$svcCtx:Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", execId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$svcCtx:Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->executionId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 825
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;->val$exe:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto/16 :goto_0

    .line 802
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v2

    move-object v1, v2

    goto/16 :goto_1
.end method
