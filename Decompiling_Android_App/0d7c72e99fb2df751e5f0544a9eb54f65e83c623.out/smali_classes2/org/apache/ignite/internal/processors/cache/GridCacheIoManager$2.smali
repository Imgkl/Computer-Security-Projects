.class Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;
.super Ljava/lang/Object;
.source "GridCacheIoManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->onMessage0(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

.field final synthetic val$c:Lorg/apache/ignite/lang/IgniteBiInClosure;

.field final synthetic val$cacheMsg:Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

.field final synthetic val$nodeId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->val$nodeId:Ljava/util/UUID;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->val$cacheMsg:Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->val$c:Lorg/apache/ignite/lang/IgniteBiInClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 219
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

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
    .line 221
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runLocalSafe(Ljava/lang/Runnable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 256
    return-void
.end method
