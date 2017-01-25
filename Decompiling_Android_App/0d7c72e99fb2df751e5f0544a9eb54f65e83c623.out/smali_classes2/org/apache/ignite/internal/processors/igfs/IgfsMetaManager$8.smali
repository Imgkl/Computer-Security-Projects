.class Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;
.super Ljava/lang/Object;
.source "IgfsMetaManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->renameDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

.field final synthetic val$dest:Lorg/apache/ignite/igfs/IgfsPath;

.field final synthetic val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

.field final synthetic val$pendingEvts:Ljava/util/Collection;

.field final synthetic val$src:Lorg/apache/ignite/igfs/IgfsPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2047
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 2047
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$pendingEvts:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "err"    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2098
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path rename in DUAL mode failed [source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", destination="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2101
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to rename the path due to secondary file system exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic onFailure(Ljava/lang/Exception;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2047
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->onFailure(Ljava/lang/Exception;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "infos":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    const/16 v11, 0x7d

    const/16 v10, 0x75

    .line 2049
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 2050
    .local v8, "srcInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 2051
    .local v9, "srcParentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 2052
    .local v6, "destInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-object v7, v0

    .line 2055
    .local v7, "destParentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :goto_0
    if-nez v8, :cond_1

    .line 2056
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to rename (source path not found): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$1200(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v0

    throw v0

    .line 2052
    .end local v7    # "destParentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 2059
    .restart local v7    # "destParentInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_1
    if-nez v6, :cond_2

    if-nez v7, :cond_2

    .line 2060
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to rename (destination path not found): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$1200(Lorg/apache/ignite/igfs/IgfsException;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v0

    throw v0

    .line 2064
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->rename(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 2067
    if-nez v6, :cond_5

    .line 2069
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez v7, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2071
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v4}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->moveNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V
    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 2083
    :goto_1
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2084
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2085
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$pendingEvts:Ljava/util/Collection;

    new-instance v2, Lorg/apache/ignite/events/IgfsEvent;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    if-nez v6, :cond_7

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    :goto_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->locNode:Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4, v10}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2094
    :cond_4
    :goto_3
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2075
    :cond_5
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to rename the path in the local file system because destination path already exists and it is a file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Ljava/lang/String;)Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$700(Ljava/lang/String;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v0

    throw v0

    .line 2079
    :cond_6
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v4}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->moveNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V
    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V

    goto :goto_1

    .line 2085
    :cond_7
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v5}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/ignite/igfs/IgfsPath;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Ljava/lang/String;)V

    goto :goto_2

    .line 2091
    :cond_8
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2092
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$pendingEvts:Ljava/util/Collection;

    new-instance v1, Lorg/apache/ignite/events/IgfsEvent;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$src:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->val$dest:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->locNode:Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v11}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public bridge synthetic onSuccess(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2047
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$8;->onSuccess(Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
