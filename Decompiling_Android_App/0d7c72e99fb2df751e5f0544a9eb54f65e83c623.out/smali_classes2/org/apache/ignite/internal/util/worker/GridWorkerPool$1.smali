.class Lorg/apache/ignite/internal/util/worker/GridWorkerPool$1;
.super Ljava/lang/Object;
.source "GridWorkerPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->execute(Lorg/apache/ignite/internal/util/worker/GridWorker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/worker/GridWorkerPool;

.field final synthetic val$w:Lorg/apache/ignite/internal/util/worker/GridWorker;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/worker/GridWorkerPool;Lorg/apache/ignite/internal/util/worker/GridWorker;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool$1;->this$0:Lorg/apache/ignite/internal/util/worker/GridWorkerPool;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool$1;->val$w:Lorg/apache/ignite/internal/util/worker/GridWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool$1;->val$w:Lorg/apache/ignite/internal/util/worker/GridWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool$1;->this$0:Lorg/apache/ignite/internal/util/worker/GridWorkerPool;

    # getter for: Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->workers:Ljava/util/Collection;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->access$000(Lorg/apache/ignite/internal/util/worker/GridWorkerPool;)Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool$1;->val$w:Lorg/apache/ignite/internal/util/worker/GridWorker;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool$1;->this$0:Lorg/apache/ignite/internal/util/worker/GridWorkerPool;

    # getter for: Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->workers:Ljava/util/Collection;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->access$000(Lorg/apache/ignite/internal/util/worker/GridWorkerPool;)Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool$1;->val$w:Lorg/apache/ignite/internal/util/worker/GridWorker;

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    throw v0
.end method
