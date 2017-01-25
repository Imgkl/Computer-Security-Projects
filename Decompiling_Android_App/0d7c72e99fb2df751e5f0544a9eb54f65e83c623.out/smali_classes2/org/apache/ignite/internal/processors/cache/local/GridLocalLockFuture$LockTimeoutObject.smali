.class Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture$LockTimeoutObject;
.super Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;
.source "GridLocalLockFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockTimeoutObject"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;)V
    .locals 2

    .prologue
    .line 423
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture$LockTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>.LockTimeoutObject;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture$LockTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;

    .line 424
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->access$000(Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;-><init>(J)V

    .line 425
    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 3

    .prologue
    .line 430
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture$LockTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>.LockTimeoutObject;"
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->access$100()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->access$100()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out waiting for lock response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture$LockTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture;Z)V

    .line 434
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture$LockTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture<TK;TV;>.LockTimeoutObject;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalLockFuture$LockTimeoutObject;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
