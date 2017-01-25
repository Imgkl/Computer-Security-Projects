.class Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridQueryProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->rebuildIndexes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

.field final synthetic val$desc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

.field final synthetic val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

.field final synthetic val$space:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 318
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;->val$space:Ljava/lang/String;

    iput-object p6, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;->val$desc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    iput-object p7, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;->val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    return-void
.end method


# virtual methods
.method protected body()V
    .locals 4

    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->idx:Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->access$700(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;)Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;->val$space:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;->val$desc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;->rebuildIndexes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;)V

    .line 323
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;->val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->onDone()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 333
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;->val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rebuild indexes for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;->val$desc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$TypeDescriptor;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;->val$fut:Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
