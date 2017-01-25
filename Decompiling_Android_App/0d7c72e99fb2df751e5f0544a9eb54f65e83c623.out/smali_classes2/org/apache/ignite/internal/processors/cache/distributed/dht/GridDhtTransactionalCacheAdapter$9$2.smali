.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;
.super Ljava/lang/Object;
.source "GridDhtTransactionalCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;->apply(Ljava/lang/Object;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
        "Ljava/lang/Boolean;",
        "Ljava/lang/Exception;",
        "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;

.field final synthetic val$entries:Ljava/util/List;

.field final synthetic val$mappedVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0

    .prologue
    .line 902
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;->val$entries:Ljava/util/List;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;->val$mappedVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 902
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9.2;"
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;->apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;
    .locals 8
    .param p1, "b"    # Ljava/lang/Boolean;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9.2;"
    const/4 v4, 0x0

    .line 904
    if-eqz p2, :cond_1

    .line 905
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p2

    .line 909
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;->val$nearNode:Lorg/apache/ignite/cluster/ClusterNode;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;->val$entries:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;->val$mappedVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object v6, p2

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->createLockReply(Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Throwable;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->access$2000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Throwable;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    move-result-object v7

    .line 916
    .local v7, "res":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;->val$nearNode:Lorg/apache/ignite/cluster/ClusterNode;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->sendLockReply(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    invoke-static {v0, v1, v4, v2, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->access$2100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V

    .line 918
    return-object v7

    .line 906
    .end local v7    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    new-instance p2, Lorg/apache/ignite/internal/processors/cache/GridCacheLockTimeoutException;

    .end local p2    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheLockTimeoutException;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .restart local p2    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method
