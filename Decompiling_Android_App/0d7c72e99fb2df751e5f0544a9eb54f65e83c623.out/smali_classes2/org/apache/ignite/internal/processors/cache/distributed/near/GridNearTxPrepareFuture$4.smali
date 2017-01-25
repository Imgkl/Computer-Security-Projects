.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$4;
.super Ljava/lang/Object;
.source "GridNearTxPrepareFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->preparePessimistic()V
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
        "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

.field final synthetic val$fut:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;

.field final synthetic val$node:Lorg/apache/ignite/cluster/ClusterNode;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 0

    .prologue
    .line 610
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$4;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture.4;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$4;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$4;->val$fut:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$4;->val$node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 610
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$4;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture.4;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$4;->apply(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V
    .locals 2
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;

    .prologue
    .line 612
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$4;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture.4;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$4;->val$fut:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$4;->val$node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V

    .line 613
    return-void
.end method
