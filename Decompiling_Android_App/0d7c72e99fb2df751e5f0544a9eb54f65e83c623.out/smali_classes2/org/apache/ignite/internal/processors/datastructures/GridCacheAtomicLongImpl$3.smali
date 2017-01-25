.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$3;
.super Ljava/lang/Object;
.source "GridCacheAtomicLongImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$3;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$3;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$300(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$3;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v9, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-static {v6, v7, v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txStartInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .local v1, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v7, 0x0

    .line 84
    :try_start_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$3;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v6

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$3;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;

    .line 86
    .local v4, "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;
    if-nez v4, :cond_1

    .line 87
    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to find atomic long with given name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$3;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->name:Ljava/lang/String;
    invoke-static {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    .end local v4    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;
    :catch_0
    move-exception v6

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :catchall_0
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    :goto_0
    if-eqz v1, :cond_0

    if-eqz v7, :cond_4

    :try_start_3
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_1
    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 99
    .end local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$3;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to increment and get: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 102
    throw v0

    .line 89
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v4    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;
    :cond_1
    :try_start_5
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;->get()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long v2, v8, v10

    .line 91
    .local v2, "retVal":J
    invoke-virtual {v4, v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;->set(J)V

    .line 93
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$3;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v6

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$3;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v6, v8, v4, v9}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    .line 95
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V

    .line 97
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    .line 98
    if-eqz v1, :cond_2

    if-eqz v7, :cond_3

    :try_start_6
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_3
    return-object v6

    :catch_2
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 99
    .end local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v2    # "retVal":J
    .end local v4    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;
    .end local v5    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    goto :goto_2

    .line 98
    .restart local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v2    # "retVal":J
    .restart local v4    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;
    :cond_3
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_3

    .end local v2    # "retVal":J
    .end local v4    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;
    :catch_4
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catchall_1
    move-exception v6

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
    .line 81
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$3;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
