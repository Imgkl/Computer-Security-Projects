.class Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6$1;
.super Ljava/lang/Object;
.source "IgfsDataManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;->call()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;)V
    .locals 0

    .prologue
    .line 1048
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1048
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1052
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 1054
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;->val$completionFut:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;->val$nodeId:Ljava/util/UUID;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;

    iget-wide v4, v3, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;->val$batchId:J

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->onWriteAck(Ljava/util/UUID;J)V
    invoke-static {v1, v2, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->access$1600(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;Ljava/util/UUID;J)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    :goto_0
    return-void

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;->val$completionFut:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;->val$nodeId:Ljava/util/UUID;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->onError(Ljava/util/UUID;Lorg/apache/ignite/IgniteCheckedException;)V
    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;Ljava/util/UUID;Lorg/apache/ignite/IgniteCheckedException;)V

    goto :goto_0
.end method
