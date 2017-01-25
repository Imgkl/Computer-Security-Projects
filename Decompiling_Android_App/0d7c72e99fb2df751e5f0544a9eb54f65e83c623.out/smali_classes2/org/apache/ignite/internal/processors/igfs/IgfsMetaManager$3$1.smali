.class Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3$1;
.super Ljava/lang/Object;
.source "IgfsMetaManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->onSuccess(Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
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
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;)V
    .locals 0

    .prologue
    .line 1691
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1691
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

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
    .line 1694
    .local p1, "t":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 1696
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/events/IgfsEvent;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->locNode:Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    const/16 v5, 0x7f

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1704
    :goto_0
    return-void

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old file deletion failed in DUAL mode [path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simpleCreate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;

    iget-boolean v3, v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$simpleCreate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", props="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$props:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", overwrite="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;

    iget-boolean v3, v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$overwrite:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bufferSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;

    iget v3, v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$bufSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", replication="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;

    iget-short v3, v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$replication:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", blockSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;

    iget-wide v4, v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$3;->val$blockSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
