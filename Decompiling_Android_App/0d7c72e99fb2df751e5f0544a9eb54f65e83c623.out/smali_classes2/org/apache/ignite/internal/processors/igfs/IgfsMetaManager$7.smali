.class Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;
.super Ljava/lang/Object;
.source "IgfsMetaManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->mkdirsDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)Z
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

.field final synthetic val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;

.field final synthetic val$pendingEvts:Ljava/util/Deque;

.field final synthetic val$props:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1963
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;Ljava/util/Deque;)V
    .locals 0

    .prologue
    .line 1963
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->val$props:Ljava/util/Map;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->val$pendingEvts:Ljava/util/Deque;

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
    .line 1999
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory creation in DUAL mode failed [path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", properties="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->val$props:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2002
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create the path due to secondary file system exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

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
    .line 1963
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->onFailure(Ljava/lang/Exception;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 11
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
    const/16 v10, 0x7c

    const/4 v5, 0x1

    .line 1965
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->val$props:Ljava/util/Map;

    invoke-interface {v0, v1, v4}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->mkdirs(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)V

    .line 1967
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1970
    :cond_0
    const/4 v2, 0x0

    .line 1972
    .local v2, "parentPath":Lorg/apache/ignite/igfs/IgfsPath;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/igfs/IgfsPath;

    .line 1973
    .local v7, "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    if-eqz v2, :cond_2

    invoke-virtual {v7, v2}, Lorg/apache/ignite/igfs/IgfsPath;->isSubDirectoryOf(Lorg/apache/ignite/igfs/IgfsPath;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1974
    :cond_2
    move-object v2, v7

    goto :goto_0

    .line 1977
    .end local v7    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1979
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 1981
    .local v3, "parentPathInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    const/4 v6, 0x0

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->synchronize(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/igfs/IgfsPath;ZLjava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/igfs/IgfsPath;ZLjava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 1983
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1984
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 1986
    .local v8, "evtPath":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_5
    invoke-virtual {v2, v8}, Lorg/apache/ignite/igfs/IgfsPath;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1987
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->val$pendingEvts:Ljava/util/Deque;

    new-instance v1, Lorg/apache/ignite/events/IgfsEvent;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->locNode:Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-direct {v1, v8, v4, v10}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 1989
    invoke-virtual {v8}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v8

    .line 1991
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez v8, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1995
    .end local v8    # "evtPath":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
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
    .line 1963
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$7;->onSuccess(Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
