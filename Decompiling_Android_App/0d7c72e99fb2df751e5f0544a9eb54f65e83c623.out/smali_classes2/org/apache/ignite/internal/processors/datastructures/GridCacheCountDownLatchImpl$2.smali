.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$2;
.super Ljava/lang/Object;
.source "GridCacheCountDownLatchImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->initializeLatch()V
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
        "Ljava/util/concurrent/CountDownLatch;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

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
    .line 251
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$2;->call()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/concurrent/CountDownLatch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->latchView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v6, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-static {v3, v4, v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txStartInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    .local v0, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v4, 0x0

    .line 254
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->latchView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$300(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;

    .line 256
    .local v1, "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    if-nez v1, :cond_5

    .line 257
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find count down latch with given name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->name:Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$500(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 260
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$2;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->cnt:I
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$600(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 253
    .end local v1    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    :catch_0
    move-exception v3

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :catchall_0
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v4, :cond_7

    :try_start_2
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    throw v3

    .line 262
    .restart local v1    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    :cond_2
    :try_start_3
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->cnt:I
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$600(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 268
    if-eqz v0, :cond_3

    if-eqz v4, :cond_4

    :try_start_4
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    return-object v3

    :catch_1
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_2

    .line 265
    :cond_5
    :try_start_5
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V

    .line 267
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->get()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 268
    if-eqz v0, :cond_3

    if-eqz v4, :cond_6

    :try_start_6
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_2

    .end local v1    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    :catch_3
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_1

    :catchall_1
    move-exception v3

    goto :goto_0
.end method
