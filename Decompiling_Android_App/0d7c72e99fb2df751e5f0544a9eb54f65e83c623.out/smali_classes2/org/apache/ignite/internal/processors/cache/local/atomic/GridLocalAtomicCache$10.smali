.class Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$10;
.super Ljava/lang/Object;
.source "GridLocalAtomicCache.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->asyncOp(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C2",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Exception;",
        "Lorg/apache/ignite/internal/IgniteInternalFuture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

.field final synthetic val$op:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 1589
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$10;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.10;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$10;->this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$10;->val$op:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1589
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$10;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.10;"
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$10;->apply(Ljava/lang/Object;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p1, "t"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1591
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$10;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.10;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$10;->this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

    # getter for: Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->access$200(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$10;->val$op:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method
