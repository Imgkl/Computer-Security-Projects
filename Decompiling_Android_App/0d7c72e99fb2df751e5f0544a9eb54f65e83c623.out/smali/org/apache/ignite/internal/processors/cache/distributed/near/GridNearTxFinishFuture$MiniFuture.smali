.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridNearTxFinishFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private m:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;)V
    .locals 1
    .param p2, "m"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .prologue
    .line 424
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>.MiniFuture;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 415
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 425
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->m:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 426
    return-void
.end method


# virtual methods
.method futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 432
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public mapping()Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .locals 1

    .prologue
    .line 446
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->m:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    return-object v0
.end method

.method public node()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 439
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->m:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method onResult(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 453
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>.MiniFuture;"
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->access$200()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->access$200()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get future result [fut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 457
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 458
    return-void
.end method

.method onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V
    .locals 3
    .param p1, "e"    # Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    .prologue
    .line 464
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>.MiniFuture;"
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->access$200()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->access$200()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote node left grid while sending or waiting for reply (will fail): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 468
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    .line 469
    return-void
.end method

.method onResult(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;)V
    .locals 1
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;

    .prologue
    .line 475
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->error()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 479
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 483
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>.MiniFuture;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;

    const-string v2, "done"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->isDone()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "cancelled"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->isCancelled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "err"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->error()Ljava/lang/Throwable;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
