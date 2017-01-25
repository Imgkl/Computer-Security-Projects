.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->setTimes(Lorg/apache/ignite/igfs/IgfsPath;JJ)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

.field final synthetic val$accessTime:J

.field final synthetic val$modificationTime:J

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;JJLorg/apache/ignite/igfs/IgfsPath;)V
    .locals 0

    .prologue
    .line 1250
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;->val$accessTime:J

    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;->val$modificationTime:J

    iput-object p6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

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
    .line 1250
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    const/4 v9, 0x0

    .line 1252
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;->val$accessTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;->val$modificationTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1269
    :cond_0
    :goto_0
    return-object v9

    .line 1255
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->getFileDescriptor(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;

    move-result-object v8

    .line 1257
    .local v8, "desc":Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    if-nez v8, :cond_2

    .line 1258
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->checkConflictWithPrimary(Lorg/apache/ignite/igfs/IgfsPath;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 1260
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update times (path not found): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1264
    :cond_2
    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->parentId:Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$1600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->parentId:Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$1600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileId:Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$1900(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileName:Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$2100(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;->val$accessTime:J

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;->val$modificationTime:J

    invoke-virtual/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->updateTimes(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;JJ)V

    goto :goto_0
.end method
