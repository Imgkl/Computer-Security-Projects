.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$LockTimeoutObject;
.super Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;
.source "GridNearLockFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockTimeoutObject"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)V
    .locals 2

    .prologue
    .line 1191
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$LockTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>.LockTimeoutObject;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$LockTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    .line 1192
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1300(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;-><init>(J)V

    .line 1193
    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 4

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$LockTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>.LockTimeoutObject;"
    const/4 v3, 0x1

    .line 1198
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

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

    .line 1201
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$LockTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1402(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Z)Z

    .line 1203
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$LockTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1500(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;ZZ)Z

    .line 1204
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1208
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$LockTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>.LockTimeoutObject;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$LockTimeoutObject;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
