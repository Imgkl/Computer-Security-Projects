.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$20;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->size(Lorg/apache/ignite/igfs/IgfsPath;)J
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
        "Ljava/lang/Long;",
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
    .line 1382
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$20;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$20;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1384
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$20;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$20;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileId(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    .line 1386
    .local v0, "nextId":Lorg/apache/ignite/lang/IgniteUuid;
    if-nez v0, :cond_0

    .line 1387
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1393
    :goto_0
    return-object v2

    .line 1389
    :cond_0
    new-instance v1, Lorg/apache/ignite/igfs/IgfsPathSummary;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$20;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {v1, v2}, Lorg/apache/ignite/igfs/IgfsPathSummary;-><init>(Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 1391
    .local v1, "sum":Lorg/apache/ignite/igfs/IgfsPathSummary;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$20;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->summary0(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/igfs/IgfsPathSummary;)V
    invoke-static {v2, v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$1100(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/igfs/IgfsPathSummary;)V

    .line 1393
    invoke-virtual {v1}, Lorg/apache/ignite/igfs/IgfsPathSummary;->totalLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1382
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$20;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
