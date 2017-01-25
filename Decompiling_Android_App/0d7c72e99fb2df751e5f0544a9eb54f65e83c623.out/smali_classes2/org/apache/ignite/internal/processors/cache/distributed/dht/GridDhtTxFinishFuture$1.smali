.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$1;
.super Ljava/lang/Object;
.source "GridDhtTxFinishFuture.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->nodes()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteClosure",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;",
        "Lorg/apache/ignite/cluster/ClusterNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;)V
    .locals 0

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture.1;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture.1;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;

    .end local p1    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .restart local p1    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    goto :goto_0
.end method
