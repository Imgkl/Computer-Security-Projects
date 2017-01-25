.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;
.super Ljava/lang/Object;
.source "GridCacheAtomicStampedImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->internalCompareAndSet(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

.field final synthetic val$expStampPred:Lorg/apache/ignite/lang/IgnitePredicate;

.field final synthetic val$expValPred:Lorg/apache/ignite/lang/IgnitePredicate;

.field final synthetic val$newStampClos:Lorg/apache/ignite/lang/IgniteClosure;

.field final synthetic val$newValClos:Lorg/apache/ignite/lang/IgniteClosure;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;Lorg/apache/ignite/lang/IgniteClosure;)V
    .locals 0

    .prologue
    .line 295
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl.7;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->val$expValPred:Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->val$expStampPred:Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->val$newValClos:Lorg/apache/ignite/lang/IgniteClosure;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->val$newStampClos:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl.7;"
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->access$300(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v7, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-static {v4, v5, v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txStartInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .local v2, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v5, 0x0

    .line 298
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v4

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;

    .line 300
    .local v1, "stmp":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    if-nez v1, :cond_1

    .line 301
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find atomic stamped with given name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->name:Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 297
    .end local v1    # "stmp":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    :catch_0
    move-exception v4

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v5, :cond_7

    :try_start_3
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_1
    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 318
    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catch_1
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to compare and set [expValPred="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->val$expValPred:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newValClos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->val$newValClos:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", expStampPred="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->val$expStampPred:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newStampClos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->val$newStampClos:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", atomicStamped="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 323
    throw v0

    .line 303
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "stmp":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_1
    :try_start_5
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->val$expValPred:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->value()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->val$expStampPred:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->stamp()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 304
    :cond_2
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->setRollbackOnly()Z

    .line 306
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    .line 317
    if-eqz v2, :cond_3

    if-eqz v5, :cond_4

    :try_start_6
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_3
    return-object v4

    :catch_2
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 318
    .end local v1    # "stmp":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    goto/16 :goto_2

    .line 317
    .restart local v1    # "stmp":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_4
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 309
    :cond_5
    :try_start_8
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->val$newValClos:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->value()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->val$newStampClos:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->stamp()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 311
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v4

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v4, v6, v1, v7}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    .line 313
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V

    .line 315
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v4

    .line 317
    if-eqz v2, :cond_3

    if-eqz v5, :cond_6

    :try_start_9
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    :catch_4
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    :try_start_a
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_3

    .end local v1    # "stmp":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    :catch_5
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    :catchall_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl.7;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
