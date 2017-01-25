.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1$1;
.super Ljava/lang/Object;
.source "GridDhtTransactionalCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
        ">;",
        "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1;

.field final synthetic val$resp:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    .locals 0

    .prologue
    .line 868
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1$1;->this$2:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1$1;->val$resp:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 868
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1.1;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;"
        }
    .end annotation

    .prologue
    .line 872
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1.1;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1$1;->this$2:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1$1;->this$2:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;->val$nearNode:Lorg/apache/ignite/cluster/ClusterNode;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1$1;->this$2:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1;->val$t:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1$1;->this$2:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1$1;->val$resp:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->sendLockReply(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    invoke-static {v1, v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->access$2100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V

    .line 880
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1$1;->val$resp:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    return-object v1

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e1":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$1$1;->val$resp:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
