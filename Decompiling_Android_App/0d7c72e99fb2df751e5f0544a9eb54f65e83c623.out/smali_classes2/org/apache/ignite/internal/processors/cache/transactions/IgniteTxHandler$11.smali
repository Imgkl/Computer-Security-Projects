.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;
.super Ljava/lang/Object;
.source "IgniteTxHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->prepareColocatedTx(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

.field final synthetic val$completeCb:Lorg/apache/ignite/lang/IgniteInClosure;

.field final synthetic val$locTx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

.field final synthetic val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;Lorg/apache/ignite/lang/IgniteInClosure;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;->val$locTx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;->val$completeCb:Lorg/apache/ignite/lang/IgniteInClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 180
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;->apply(Ljava/lang/Object;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "ex"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    if-eqz p2, :cond_0

    .line 183
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    invoke-direct {v0, p2}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;->val$locTx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->reads()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->writes()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->transactionNodes()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->last()Z

    move-result v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->lastBackups()Ljava/util/Collection;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;->val$completeCb:Lorg/apache/ignite/lang/IgniteInClosure;

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->prepareAsyncLocal(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;ZLjava/util/Collection;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v7

    .line 193
    .local v7, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;->val$locTx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->isRollbackOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$11;->val$locTx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 196
    :cond_1
    return-object v7
.end method
