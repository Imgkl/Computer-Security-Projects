.class Lorg/apache/ignite/internal/processors/task/GridTaskWorker$4;
.super Ljava/lang/Object;
.source "GridTaskWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->reduce(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 904
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker$4;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker.4;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$4;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$4;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 906
    .local p0, "this":Lorg/apache/ignite/internal/processors/task/GridTaskWorker$4;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker.4;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$4;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->task:Lorg/apache/ignite/compute/ComputeTask;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->access$500(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/compute/ComputeTask;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$4;->val$results:Ljava/util/List;

    invoke-interface {v0, v1}, Lorg/apache/ignite/compute/ComputeTask;->reduce(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
