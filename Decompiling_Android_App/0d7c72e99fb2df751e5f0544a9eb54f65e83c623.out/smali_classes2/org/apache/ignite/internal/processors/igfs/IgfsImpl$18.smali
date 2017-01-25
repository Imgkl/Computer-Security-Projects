.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->affinity(Lorg/apache/ignite/igfs/IgfsPath;JJJ)Ljava/util/Collection;
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
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/igfs/IgfsBlockLocation;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

.field final synthetic val$len:J

.field final synthetic val$maxLen:J

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;

.field final synthetic val$start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1301
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;JJJ)V
    .locals 1

    .prologue
    .line 1301
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->val$start:J

    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->val$len:J

    iput-wide p7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->val$maxLen:J

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
    .line 1301
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->call()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsBlockLocation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1303
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get affinity for file block [path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->val$start:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->val$len:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1306
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;
    invoke-static {v0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v9

    .line 1309
    .local v9, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileId(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    .line 1310
    .local v8, "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v1

    .line 1312
    .local v1, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v1, :cond_3

    sget-object v0, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    if-eq v9, v0, :cond_3

    .line 1313
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_SYNC:Lorg/apache/ignite/igfs/IgfsMode;

    if-eq v9, v0, :cond_1

    sget-object v0, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_ASYNC:Lorg/apache/ignite/igfs/IgfsMode;

    if-eq v9, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1314
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1317
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->synchronizeFileDual(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v1

    .line 1320
    :cond_3
    if-nez v1, :cond_4

    .line 1321
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1323
    :cond_4
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1324
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPathIsDirectoryException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get affinity for path because it is not a file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/ignite/igfs/IgfsPathIsDirectoryException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1327
    :cond_5
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->val$start:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->val$len:J

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;->val$maxLen:J

    invoke-virtual/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->affinity(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;JJJ)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
