.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$15;
.super Ljava/lang/Object;
.source "DataStructuresProcessor.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeCountDownLatch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteCallable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$15;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$15;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 911
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$15;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 914
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$15;->val$name:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;-><init>(Ljava/lang/String;)V

    .line 916
    .local v1, "key":Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$15;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 918
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$15;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$15;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v9, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-static {v5, v7, v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txStartInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .local v2, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v5, 0x0

    .line 920
    :try_start_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$15;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$15;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v8

    invoke-interface {v8, v1}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-class v9, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;

    # invokes: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v7, v8, v9}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$200(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;

    .line 923
    .local v3, "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    if-eqz v3, :cond_3

    .line 924
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->get()I

    move-result v7

    if-lez v7, :cond_1

    .line 925
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to remove count down latch with non-zero count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->get()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 918
    .end local v3    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    :catch_0
    move-exception v5

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 936
    :catchall_0
    move-exception v6

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v6, :cond_5

    :try_start_3
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_1
    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 937
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_5
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$15;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$2000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to remove data structure: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 939
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 941
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$15;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v5

    .line 929
    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v3    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    :cond_1
    :try_start_6
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$15;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v7, v1, v8}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->removex(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    .line 931
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 936
    :goto_3
    if-eqz v2, :cond_2

    if-eqz v6, :cond_4

    :try_start_7
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 941
    :cond_2
    :goto_4
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$15;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    return-object v6

    .line 933
    :cond_3
    :try_start_8
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->setRollbackOnly()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    .line 936
    .end local v3    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    :catchall_2
    move-exception v5

    goto :goto_0

    .restart local v3    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    :catch_2
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v3    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v5

    move-object v0, v5

    goto :goto_2

    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v3    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    :cond_4
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_4

    .end local v3    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    :catch_4
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_9
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1
.end method
