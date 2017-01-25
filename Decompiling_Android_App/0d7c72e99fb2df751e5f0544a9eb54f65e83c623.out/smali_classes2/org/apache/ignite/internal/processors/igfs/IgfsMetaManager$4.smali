.class Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;
.super Ljava/lang/Object;
.source "IgfsMetaManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$SynchronizationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->appendDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
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
        "Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private out:Ljava/io/OutputStream;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

.field final synthetic val$bufSize:I

.field final synthetic val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;I)V
    .locals 0

    .prologue
    .line 1766
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    iput p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->val$bufSize:I

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
    .line 1766
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->onFailure(Ljava/lang/Exception;)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public onFailure(Ljava/lang/Exception;)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
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
    .line 1809
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->out:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1811
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File append in DUAL mode failed [path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bufferSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->val$bufSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1814
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to append to the file due to secondary file system exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

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
    .line 1766
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->onSuccess(Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Ljava/util/Map;)Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "infos":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;>;"
    const/4 v11, 0x0

    .line 1772
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 1774
    .local v2, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open output stream to the file in the secondary file system because the path points to a directory: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fsException(Ljava/lang/String;)Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$700(Ljava/lang/String;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v1

    throw v1

    .line 1778
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->val$bufSize:I

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v11, v5}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->append(Lorg/apache/ignite/igfs/IgfsPath;IZLjava/util/Map;)Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->out:Ljava/io/OutputStream;

    .line 1781
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v8

    .line 1782
    .local v8, "len":J
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v7

    .line 1784
    .local v7, "blockSize":I
    int-to-long v4, v7

    rem-long v4, v8, v4

    long-to-int v10, v4

    .line 1786
    .local v10, "remainder":I
    if-lez v10, :cond_1

    .line 1787
    int-to-long v4, v7

    div-long v4, v8, v4

    long-to-int v0, v4

    .line 1789
    .local v0, "blockIdx":I
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->val$fs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->val$bufSize:I

    invoke-interface {v1, v3, v4}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->open(Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;

    move-result-object v6

    .line 1792
    .local v6, "reader":Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->data()Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    int-to-long v4, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataBlock(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/igfs/IgfsPath;JLorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1795
    invoke-interface {v6}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;->close()V

    .line 1800
    .end local v0    # "blockIdx":I
    .end local v6    # "reader":Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->lockInfo(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v2

    .line 1802
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->metaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->access$1100(Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v1

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    new-array v4, v11, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v1, v3, v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCache;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    .line 1804
    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1}, Lorg/apache/ignite/igfs/IgfsPath;->parent()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager$4;->out:Ljava/io/OutputStream;

    invoke-direct {v3, v1, v2, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryOutputStreamDescriptor;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Ljava/io/OutputStream;)V

    return-object v3

    .line 1795
    .restart local v0    # "blockIdx":I
    .restart local v6    # "reader":Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;->close()V

    throw v1
.end method
