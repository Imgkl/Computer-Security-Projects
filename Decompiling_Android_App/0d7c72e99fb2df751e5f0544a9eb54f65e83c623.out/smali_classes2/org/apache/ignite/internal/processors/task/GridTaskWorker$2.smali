.class Lorg/apache/ignite/internal/processors/task/GridTaskWorker$2;
.super Ljava/lang/Object;
.source "GridTaskWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->body()V
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
        "Ljava/util/Map",
        "<+",
        "Lorg/apache/ignite/compute/ComputeJob;",
        "Lorg/apache/ignite/cluster/ClusterNode;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

.field final synthetic val$shuffledNodes:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 413
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker$2;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$2;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$2;->val$shuffledNodes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker$2;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker.2;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$2;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker$2;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker.2;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$2;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->task:Lorg/apache/ignite/compute/ComputeTask;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$500(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/compute/ComputeTask;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$2;->val$shuffledNodes:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$2;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->arg:Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$400(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/compute/ComputeTask;->map(Ljava/util/List;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
