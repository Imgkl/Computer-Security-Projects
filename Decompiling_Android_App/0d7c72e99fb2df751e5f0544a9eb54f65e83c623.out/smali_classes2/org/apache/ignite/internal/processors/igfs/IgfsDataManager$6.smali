.class Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;
.super Ljava/lang/Object;
.source "IgfsDataManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridPlainCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->processBatch(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/lang/GridPlainCallable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

.field final synthetic val$batchId:J

.field final synthetic val$blocks:Ljava/util/Map;

.field final synthetic val$completionFut:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;

.field final synthetic val$nodeId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Ljava/util/Map;Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;Ljava/util/UUID;J)V
    .locals 1

    .prologue
    .line 1044
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;->val$blocks:Ljava/util/Map;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;->val$completionFut:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;->val$nodeId:Ljava/util/UUID;

    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;->val$batchId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1048
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;->val$blocks:Ljava/util/Map;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->storeBlocksAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$1700(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6$1;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 1062
    const/4 v0, 0x0

    return-object v0
.end method
