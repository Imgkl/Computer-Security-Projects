.class Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;
.super Ljava/lang/Object;
.source "IgfsMetaManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->deleteDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Z)Z
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

.field final synthetic val$recursive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2139
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Z)V
    .locals 0

    .prologue
    .line 2139
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->val$recursive:Z

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
    .line 2167
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path delete in DUAL mode failed [path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", recursive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->val$recursive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2170
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "Failed to delete the path due to secondary file system exception: "

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
    .line 2139
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->onFailure(Ljava/lang/Exception;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 7
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
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2141
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 2143
    .local v0, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v0, :cond_0

    .line 2144
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2163
    :goto_0
    return-object v1

    .line 2146
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->val$recursive:Z

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->delete(Lorg/apache/ignite/igfs/IgfsPath;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2147
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 2149
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2150
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2152
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v3}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->softDeleteNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {v2, v1, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$1400(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;

    .line 2161
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->id2InfoPrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$900(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdatePath;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {v3, v4, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$UpdatePath;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$1;)V

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    .line 2163
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 2155
    :cond_3
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    sget-object v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2157
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->softDeleteNonTx(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {v1, v6, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$1400(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;

    goto :goto_1
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
    .line 2139
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$9;->onSuccess(Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
