.class Lorg/apache/ignite/internal/processors/job/GridJobWorker$2;
.super Ljava/lang/Object;
.source "GridJobWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/job/GridJobWorker;->execute0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/job/GridJobWorker;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker$2;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 475
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker$2;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    # getter for: Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->access$000(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker$2;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    # getter for: Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->access$100(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker$2;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    # getter for: Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->access$100(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->internal(Z)V

    .line 478
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker$2;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    # getter for: Lorg/apache/ignite/internal/processors/job/GridJobWorker;->job:Lorg/apache/ignite/compute/ComputeJob;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->access$200(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeJob;->execute()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 481
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker$2;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    # getter for: Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->access$000(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker$2;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    # getter for: Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->access$100(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker$2;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    # getter for: Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->access$100(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->internal(Z)V

    :cond_1
    return-object v0

    .line 481
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker$2;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    # getter for: Lorg/apache/ignite/internal/processors/job/GridJobWorker;->internal:Z
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->access$000(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker$2;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    # getter for: Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->access$100(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 482
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobWorker$2;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    # getter for: Lorg/apache/ignite/internal/processors/job/GridJobWorker;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->access$100(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->internal(Z)V

    :cond_2
    throw v0
.end method
