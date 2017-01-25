.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;
.super Ljava/lang/Object;
.source "GridCacheAtomicLongImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->internalCompareAndSet(JJ)Ljava/util/concurrent/Callable;
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

.field final synthetic val$expVal:J

.field final synthetic val$newVal:J


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;JJ)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;->val$expVal:J

    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;->val$newVal:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 487
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$300(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v8, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-static {v5, v6, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txStartInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .local v2, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v6, 0x0

    .line 488
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;

    .line 490
    .local v3, "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;
    if-nez v3, :cond_1

    .line 491
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to find atomic long with given name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->name:Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 487
    .end local v3    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;
    :catch_0
    move-exception v5

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 504
    :catchall_0
    move-exception v6

    move-object v12, v6

    move-object v6, v5

    move-object v5, v12

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v6, :cond_6

    :try_start_3
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_1
    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 505
    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catch_1
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to compare and set: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 508
    throw v0

    .line 493
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v3    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;->get()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;->val$expVal:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_2

    const/4 v1, 0x1

    .line 495
    .local v1, "retVal":Z
    :cond_2
    if-eqz v1, :cond_3

    .line 496
    iget-wide v8, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;->val$newVal:J

    invoke-virtual {v3, v8, v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;->set(J)V

    .line 498
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v5, v7, v3, v8}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    .line 500
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V

    .line 503
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v5

    .line 504
    if-eqz v2, :cond_4

    if-eqz v6, :cond_5

    :try_start_6
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_3
    return-object v5

    :catch_2
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 505
    .end local v1    # "retVal":Z
    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v3    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    goto :goto_2

    .line 504
    .restart local v1    # "retVal":Z
    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v3    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;
    :cond_5
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_3

    .end local v1    # "retVal":Z
    .end local v3    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;
    :catch_4
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catchall_1
    move-exception v5

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 485
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
