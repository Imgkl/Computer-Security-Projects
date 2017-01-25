.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$5;
.super Ljava/lang/Object;
.source "GridNearTxLocal.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->commitAsyncLocal()Lorg/apache/ignite/internal/IgniteInternalFuture;
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

.field final synthetic val$fut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$5;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$5;->val$fut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 984
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$5;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 4
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
    .line 987
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 989
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$5;->val$fut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->finish()V
    :try_end_0
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1002
    :goto_0
    return-void

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, "e":Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->access$700()Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->access$800()Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed optimistically to prepare transaction [tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 995
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$5;->val$fut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 997
    .end local v0    # "e":Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;
    :catch_1
    move-exception v0

    .line 998
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->access$900()Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare transaction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1000
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$5;->val$fut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
