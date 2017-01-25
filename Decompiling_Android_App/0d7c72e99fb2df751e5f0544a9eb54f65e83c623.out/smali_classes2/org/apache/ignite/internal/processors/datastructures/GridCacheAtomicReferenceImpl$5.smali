.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;
.super Ljava/lang/Object;
.source "GridCacheAtomicReferenceImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->internalSet(Ljava/lang/Object;)Ljava/util/concurrent/Callable;
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

.field final synthetic val$val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 221
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl.5;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;->val$val:Ljava/lang/Object;

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
    .line 223
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl.5;"
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->access$300(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

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

    .line 224
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v4

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;

    .line 226
    .local v1, "ref":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    if-nez v1, :cond_1

    .line 227
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find atomic reference with given name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->name:Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)Ljava/lang/String;

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

    .line 223
    .end local v1    # "ref":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    :catch_0
    move-exception v4

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v5, :cond_4

    :try_start_3
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_1
    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 237
    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catch_1
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set value [val="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;->val$val:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", atomicReference="

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

    .line 240
    throw v0

    .line 229
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "ref":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_1
    :try_start_5
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;->val$val:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;->set(Ljava/lang/Object;)V

    .line 231
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v4

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v4, v6, v1, v7}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    .line 233
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V

    .line 235
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    .line 236
    if-eqz v2, :cond_2

    if-eqz v5, :cond_3

    :try_start_6
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_3
    return-object v4

    :catch_2
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 237
    .end local v1    # "ref":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    goto :goto_2

    .line 236
    .restart local v1    # "ref":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_3
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_3

    .end local v1    # "ref":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    :catch_4
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catchall_1
    move-exception v4

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
    .line 221
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl.5;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
