.class Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$2;
.super Ljava/lang/Object;
.source "GridCacheProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->onKernalStart()V
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 680
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$2;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

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
    .line 682
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->marshallerContext()Lorg/apache/ignite/internal/MarshallerContextImpl;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/MarshallerContextImpl;->onMarshallerCacheReady(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 683
    return-void
.end method
