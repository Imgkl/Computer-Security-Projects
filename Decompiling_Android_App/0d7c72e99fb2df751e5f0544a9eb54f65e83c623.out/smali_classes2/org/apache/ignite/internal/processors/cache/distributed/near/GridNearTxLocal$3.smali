.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$3;
.super Ljava/lang/Object;
.source "GridNearTxLocal.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->commitAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 752
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$3;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 6
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
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    const/4 v5, 0x0

    .line 754
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->commitFut:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->access$000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;

    .line 758
    .local v1, "fut0":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 760
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->finish(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 761
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->finish()V

    .line 776
    :goto_0
    return-void

    .line 763
    :cond_0
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to commit transaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txString(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->commitErr:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 769
    throw v0

    .line 771
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 772
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->commitErr:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 774
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 766
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_2
    move-exception v0

    goto :goto_1
.end method
