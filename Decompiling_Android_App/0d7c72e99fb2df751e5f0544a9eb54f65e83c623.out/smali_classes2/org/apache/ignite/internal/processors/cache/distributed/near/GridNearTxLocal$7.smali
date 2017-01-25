.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$7;
.super Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;
.source "GridNearTxLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->lockAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;ZZJ)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

.field final synthetic val$keys:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;ZLjava/util/Collection;)V
    .locals 0
    .param p2, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .param p3, "x1"    # Z

    .prologue
    .line 1099
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$7;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$7;->val$keys:Ljava/util/Collection;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic postLock(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1099
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$7;->postLock(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-result-object v0

    return-object v0
.end method

.method protected postLock(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 3
    .param p1, "ret"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .prologue
    .line 1101
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->access$1100()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->access$1200()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquired transaction lock on keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$7;->val$keys:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1104
    :cond_0
    return-object p1
.end method
