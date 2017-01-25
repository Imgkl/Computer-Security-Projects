.class abstract Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncInOp;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AsyncInOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
        "<TK;TV;>.AsyncOp<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 5543
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncInOp;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.AsyncInOp;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncInOp;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 5544
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/lang/Object;)V

    .line 5545
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 5550
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncInOp;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.AsyncInOp;"
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncInOp;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 5551
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;)V

    .line 5552
    return-void
.end method


# virtual methods
.method public abstract inOp(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public final op(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5557
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncInOp;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.AsyncInOp;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncInOp;->inOp(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method
