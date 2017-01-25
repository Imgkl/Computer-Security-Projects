.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$6;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->info(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsFile;
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


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$6;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$6;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

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
    .line 495
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$6;->call()Lorg/apache/ignite/igfs/IgfsFile;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/ignite/igfs/IgfsFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 497
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$6;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$6;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get file info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$6;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 500
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$6;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$6;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v1

    .line 502
    .local v1, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$6;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$6;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->resolveFileInfo(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    invoke-static {v2, v3, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$900(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    .line 504
    .local v0, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v0, :cond_1

    .line 505
    const/4 v2, 0x0

    .line 507
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$6;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$6;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->groupBlockSize()J

    move-result-wide v4

    invoke-direct {v2, v3, v0, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileImpl;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J)V

    goto :goto_0
.end method
