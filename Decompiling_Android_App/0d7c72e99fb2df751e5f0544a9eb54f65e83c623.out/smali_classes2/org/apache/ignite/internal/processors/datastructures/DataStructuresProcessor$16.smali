.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;
.super Ljava/lang/Object;
.source "DataStructuresProcessor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;Ljava/lang/Class;)Z
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

.field final synthetic val$cls:Ljava/lang/Class;

.field final synthetic val$key:Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 957
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;->val$key:Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;->val$cls:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 959
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v8, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-static {v5, v6, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txStartInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .local v1, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v5, 0x0

    .line 961
    :try_start_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;->val$key:Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    invoke-interface {v7, v8}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;->val$cls:Ljava/lang/Class;

    # invokes: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v6, v7, v8}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$200(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 963
    .local v2, "val":Ljava/lang/Object;, "TR;"
    if-eqz v2, :cond_2

    .line 964
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;->val$key:Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    const/4 v8, 0x0

    new-array v8, v8, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->removex(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    .line 966
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V

    .line 971
    :goto_0
    if-eqz v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 972
    if-eqz v1, :cond_1

    if-eqz v5, :cond_4

    :try_start_2
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    return-object v4

    .line 969
    :cond_2
    :try_start_3
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->setRollbackOnly()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 959
    .end local v2    # "val":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 972
    :catchall_0
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v5, :cond_5

    :try_start_5
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_3
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 973
    .end local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catch_1
    move-exception v0

    .line 974
    .local v0, "e":Ljava/lang/Throwable;
    :goto_4
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$2100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remove data structure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;->val$key:Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 976
    throw v0

    .line 972
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v2    # "val":Ljava/lang/Object;, "TR;"
    :catch_2
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 973
    .end local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v2    # "val":Ljava/lang/Object;, "TR;"
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    goto :goto_4

    .line 972
    .restart local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v2    # "val":Ljava/lang/Object;, "TR;"
    :cond_4
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_1

    .end local v2    # "val":Ljava/lang/Object;, "TR;"
    :catch_4
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catchall_1
    move-exception v4

    goto :goto_2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 957
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$16;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
