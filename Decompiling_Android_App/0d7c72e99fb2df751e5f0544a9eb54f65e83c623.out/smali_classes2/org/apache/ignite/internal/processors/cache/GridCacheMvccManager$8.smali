.class Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$8;
.super Ljava/lang/Object;
.source "GridCacheMvccManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->finishLocks(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

.field final synthetic val$finishFut:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;)V
    .locals 0

    .prologue
    .line 1021
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$8;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$8;->val$finishFut:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1021
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$8;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1024
    .local p1, "e":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$8;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/Queue;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$8;->val$finishFut:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 1028
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$8;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 1029
    return-void
.end method
