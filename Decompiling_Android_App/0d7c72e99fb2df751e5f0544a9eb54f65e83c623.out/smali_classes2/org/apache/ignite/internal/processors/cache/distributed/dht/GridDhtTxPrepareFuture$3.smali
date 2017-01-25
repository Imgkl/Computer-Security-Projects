.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$3;
.super Lorg/apache/ignite/internal/util/typedef/CIX1;
.source "GridDhtTxPrepareFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->onDone(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CIX1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

.field final synthetic val$res:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V
    .locals 0

    .prologue
    .line 501
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$3;->val$res:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CIX1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture.3;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$3;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
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
    .line 505
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture.3;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$3;->val$res:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$400()Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send prepare response for transaction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
