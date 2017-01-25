.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->update(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)Lorg/apache/ignite/igfs/IgfsFile;
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
        "Lorg/apache/ignite/igfs/IgfsFile;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;

.field final synthetic val$props:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 541
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->val$props:Ljava/util/Map;

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
    .line 541
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->call()Lorg/apache/ignite/igfs/IgfsFile;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/ignite/igfs/IgfsFile;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v10, 0x79

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 543
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 544
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set file properties [path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", props="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->val$props:Ljava/util/Map;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 546
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;
    invoke-static {v5, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v3

    .line 548
    .local v3, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    sget-object v5, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    if-eq v3, v5, :cond_4

    .line 549
    sget-boolean v5, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    sget-object v5, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_SYNC:Lorg/apache/ignite/igfs/IgfsMode;

    if-eq v3, v5, :cond_1

    sget-object v5, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_ASYNC:Lorg/apache/ignite/igfs/IgfsMode;

    if-eq v3, v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 551
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    new-array v7, v9, [Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    aput-object v9, v7, v8

    invoke-virtual {v5, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->await([Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 553
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->val$props:Ljava/util/Map;

    invoke-virtual {v5, v7, v8, v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->updateDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v2

    .line 555
    .local v2, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v2, :cond_3

    .line 579
    .end local v2    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_2
    :goto_0
    return-object v6

    .line 558
    .restart local v2    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_3
    new-instance v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->groupBlockSize()J

    move-result-wide v8

    invoke-direct {v6, v5, v2, v8, v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J)V

    goto :goto_0

    .line 561
    .end local v2    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_4
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v5, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileIds(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/List;

    move-result-object v1

    .line 563
    .local v1, "fileIds":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteUuid;

    .line 565
    .local v0, "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    if-eqz v0, :cond_2

    .line 568
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/lang/IgniteUuid;

    move-object v4, v5

    .line 570
    .local v4, "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    :goto_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v7}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->val$props:Ljava/util/Map;

    invoke-virtual {v5, v4, v0, v7, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->updateProperties(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v2

    .line 572
    .restart local v2    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-eqz v2, :cond_2

    .line 573
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 574
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v5

    new-instance v6, Lorg/apache/ignite/events/IgfsEvent;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->val$props:Ljava/util/Map;

    invoke-direct {v6, v7, v8, v10, v9}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;ILjava/util/Map;)V

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 576
    :cond_5
    new-instance v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->groupBlockSize()J

    move-result-wide v8

    invoke-direct {v6, v5, v2, v8, v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J)V

    goto/16 :goto_0

    .end local v2    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .end local v4    # "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_6
    move-object v4, v6

    .line 568
    goto :goto_1
.end method
