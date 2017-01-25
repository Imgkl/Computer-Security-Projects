.class Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$6;
.super Ljava/lang/Object;
.source "IgfsMetaManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->synchronizeFileDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
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


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 0

    .prologue
    .line 1916
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$6;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$6;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

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
    .line 1916
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$6;->onFailure(Ljava/lang/Exception;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

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
    .line 1923
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to synchronize path due to secondary file system exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$6;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

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
    .line 1916
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$6;->onSuccess(Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 1
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
    .line 1919
    .local p1, "infos":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$6;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    return-object v0
.end method
