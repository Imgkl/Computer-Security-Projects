.class Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$5;
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

.field final synthetic val$completionFut:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;

.field final synthetic val$msg:Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;

.field final synthetic val$nodeId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$5;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$5;->val$nodeId:Ljava/util/UUID;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$5;->val$msg:Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$5;->val$completionFut:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1034
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$5;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$5;->val$nodeId:Ljava/util/UUID;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$5;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->topic:Ljava/lang/Object;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$1500(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$5;->val$msg:Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;

    sget-object v5, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->send(Ljava/util/UUID;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$5;->val$completionFut:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$5;->val$nodeId:Ljava/util/UUID;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->onError(Ljava/util/UUID;Lorg/apache/ignite/IgniteCheckedException;)V
    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;Ljava/util/UUID;Lorg/apache/ignite/IgniteCheckedException;)V

    goto :goto_0
.end method
