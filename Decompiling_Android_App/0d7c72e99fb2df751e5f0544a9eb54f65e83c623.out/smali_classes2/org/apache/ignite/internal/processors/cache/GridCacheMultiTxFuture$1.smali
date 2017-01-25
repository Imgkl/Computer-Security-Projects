.class Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture$1;
.super Ljava/lang/Object;
.source "GridCacheMultiTxFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->init()V
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
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

.field final synthetic val$tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 0

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture$1;->val$tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture.1;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture.1;"
    .local p1, "t":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->remainingTxs:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture$1;->val$tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->checkRemaining()Z
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;)Z

    .line 84
    return-void
.end method
