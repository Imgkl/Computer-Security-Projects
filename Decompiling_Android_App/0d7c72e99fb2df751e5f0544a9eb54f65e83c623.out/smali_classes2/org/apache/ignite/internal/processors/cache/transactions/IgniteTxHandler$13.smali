.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$13;
.super Ljava/lang/Object;
.source "IgniteTxHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->prepareNearTx(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

.field final synthetic val$tx0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$13;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$13;->val$tx0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 329
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$13;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

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
    .line 332
    .local p1, "txFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$13;->val$tx0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->setRollbackOnly()Z

    .line 337
    instance-of v1, v0, Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$13;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->access$400(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare DHT transaction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$13;->val$tx0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
