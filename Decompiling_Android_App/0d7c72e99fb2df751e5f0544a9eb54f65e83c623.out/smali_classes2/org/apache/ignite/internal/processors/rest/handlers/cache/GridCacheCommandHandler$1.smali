.class final Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;
.super Ljava/lang/Object;
.source "GridCacheCommandHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->appendOrPrepend(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cache:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$prepend:Z

.field final synthetic val$val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;->val$cache:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;->val$key:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;->val$val:Ljava/lang/Object;

    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;->val$prepend:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 419
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;->val$cache:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    sget-object v7, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v8, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v5, v7, v8}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v2

    .local v2, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v5, 0x0

    .line 420
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;->val$cache:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;->val$key:Ljava/lang/Object;

    invoke-interface {v7, v8}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 422
    .local v0, "curVal":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 423
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 432
    if-eqz v2, :cond_0

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 434
    :cond_0
    :goto_0
    return-object v4

    .line 432
    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_1
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_0

    .line 426
    :cond_2
    :try_start_2
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;->val$val:Ljava/lang/Object;

    iget-boolean v8, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;->val$prepend:Z

    if-nez v8, :cond_3

    move v4, v6

    :cond_3
    # invokes: Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->appendOrPrepend(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    invoke-static {v0, v7, v4}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->access$300(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    .line 429
    .local v1, "newVal":Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;->val$cache:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;->val$key:Ljava/lang/Object;

    const/4 v8, 0x0

    new-array v8, v8, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v4, v7, v1, v8}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    .line 431
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 432
    if-eqz v2, :cond_4

    if-eqz v5, :cond_5

    :try_start_3
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 434
    :cond_4
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 432
    :catch_1
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_1

    .line 419
    .end local v0    # "curVal":Ljava/lang/Object;
    .end local v1    # "newVal":Ljava/lang/Object;
    :catch_2
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 432
    :catchall_0
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_2
    if-eqz v2, :cond_6

    if-eqz v5, :cond_7

    :try_start_5
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_3
    throw v4

    :catch_3
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_3

    :catchall_1
    move-exception v4

    goto :goto_2
.end method
