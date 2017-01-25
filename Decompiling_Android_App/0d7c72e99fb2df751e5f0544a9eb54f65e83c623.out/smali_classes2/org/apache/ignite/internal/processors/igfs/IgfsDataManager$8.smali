.class Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$8;
.super Ljava/lang/Object;
.source "IgfsDataManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->processBlocksMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;)V
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

.field final synthetic val$blocksMsg:Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;

.field final synthetic val$nodeId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;)V
    .locals 0

    .prologue
    .line 1280
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$8;->val$nodeId:Ljava/util/UUID;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$8;->val$blocksMsg:Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1280
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$8;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1282
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    const/4 v1, 0x0

    .line 1285
    .local v1, "err":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$8;->val$nodeId:Ljava/util/UUID;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->topic:Ljava/lang/Object;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$1500(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$8;->val$blocksMsg:Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$8;->val$blocksMsg:Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;->id()J

    move-result-wide v8

    invoke-direct {v5, v6, v8, v9, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;-><init>(Lorg/apache/ignite/lang/IgniteUuid;JLorg/apache/ignite/IgniteCheckedException;)V

    sget-object v6, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->send(Ljava/util/UUID;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1300
    :goto_1
    return-void

    .line 1287
    :catch_0
    move-exception v0

    .line 1288
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object v1, v0

    goto :goto_0

    .line 1296
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v0

    .line 1297
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send batch acknowledgement (did node leave the grid?) [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$8;->val$nodeId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fileId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$8;->val$blocksMsg:Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", batchId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$8;->val$blocksMsg:Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;->id()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method
