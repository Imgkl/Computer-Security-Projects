.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$1;
.super Ljava/lang/Object;
.source "GridNearTxPrepareFuture.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteReducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteReducer",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)V
    .locals 0

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$1;->val$tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic collect(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture.1;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$1;->collect(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    move-result v0

    return v0
.end method

.method public collect(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture.1;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic reduce()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$1;->reduce()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    return-object v0
.end method

.method public reduce()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$1;->val$tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    return-object v0
.end method
