.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$14;
.super Ljava/lang/Object;
.source "IgniteTxHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->processDhtTxFinishRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;)V
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

.field final synthetic val$nodeId:Ljava/util/UUID;

.field final synthetic val$req:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$14;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$14;->val$nodeId:Ljava/util/UUID;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$14;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 761
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$14;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 3
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
    .line 763
    .local p1, "igniteTxIgniteFuture":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$14;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$14;->val$nodeId:Ljava/util/UUID;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$14;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->sendReply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;)V

    .line 764
    return-void
.end method
