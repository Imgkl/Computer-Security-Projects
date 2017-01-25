.class Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;
.super Ljava/lang/Object;
.source "IgfsMetaManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->updateDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
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
        "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

.field final synthetic val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;

.field final synthetic val$props:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2206
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 2206
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->val$props:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Ljava/lang/Exception;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2206
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->onFailure(Ljava/lang/Exception;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public onFailure(Ljava/lang/Exception;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
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
    .line 2221
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path update in DUAL mode failed [path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", properties="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->val$props:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2224
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update the path due to secondary file system exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
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
    .line 2206
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->onSuccess(Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2209
    .local p1, "infos":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2210
    const/4 v0, 0x0

    .line 2216
    :goto_0
    return-object v0

    .line 2212
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->val$props:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->update(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)Lorg/apache/ignite/igfs/IgfsFile;

    .line 2214
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2216
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v3}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$10;->val$props:Ljava/util/Map;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->updatePropertiesNonTx(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    invoke-static {v1, v2, v0, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$1500(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    goto :goto_0
.end method
