.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;
.super Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;
.source "GridDhtTxLocalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->obtainLockAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;ZZLjava/util/Set;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

.field final synthetic val$accessTtl:J

.field final synthetic val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field final synthetic val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field final synthetic val$passedKeys:Ljava/util/Collection;

.field final synthetic val$read:Z

.field final synthetic val$skipped:Ljava/util/Set;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Set;ZJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 1
    .param p2, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .prologue
    .line 642
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->val$passedKeys:Ljava/util/Collection;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->val$skipped:Ljava/util/Set;

    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->val$read:Z

    iput-wide p7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->val$accessTtl:J

    iput-object p9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/lang/Object;)V

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
    .line 642
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->postLock(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-result-object v0

    return-object v0
.end method

.method protected postLock(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 12
    .param p1, "ret"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 644
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->access$000()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->access$100()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquired transaction lock on keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->val$passedKeys:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 647
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->val$passedKeys:Ljava/util/Collection;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->val$skipped:Ljava/util/Set;

    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->val$read:Z

    iget-wide v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->val$accessTtl:J

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-nez v4, :cond_1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v10

    :goto_0
    move-object v4, p1

    move v6, v5

    move v11, v5

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->postLockWrite(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Iterable;Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;ZZZJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/util/Set;
    invoke-static/range {v0 .. v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Iterable;Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;ZZZJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/util/Set;

    .line 658
    return-object p1

    .line 647
    :cond_1
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;->val$filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    goto :goto_0
.end method
