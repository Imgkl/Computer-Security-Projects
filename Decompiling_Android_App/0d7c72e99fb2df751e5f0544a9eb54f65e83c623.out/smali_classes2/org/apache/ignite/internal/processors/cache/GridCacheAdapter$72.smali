.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$72;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->asyncOp(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C2",
        "<TT;",
        "Ljava/lang/Exception;",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$op:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;

.field final synthetic val$tx0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)V
    .locals 0

    .prologue
    .line 4650
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$72;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.72;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$72;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$72;->val$op:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$72;->val$tx0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 4650
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$72;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.72;"
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$72;->apply(Ljava/lang/Object;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4652
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$72;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.72;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$72;->val$op:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$72;->val$tx0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;->op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$72$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$72$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$72;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method
