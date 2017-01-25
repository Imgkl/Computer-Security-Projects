.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;
.super Ljava/lang/Object;
.source "GridCacheCountDownLatchImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountDownCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

.field private final val:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 345
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;I)V
    .locals 1
    .param p2, "val"    # I

    .prologue
    .line 352
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 355
    :cond_0
    iput p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->val:I

    .line 356
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;ILorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$1;

    .prologue
    .line 345
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;I)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->latchView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v7, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-static {v4, v5, v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txStartInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v2

    .local v2, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v5, 0x0

    .line 361
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->latchView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v4

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$300(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;

    .line 363
    .local v0, "latchVal":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    if-nez v0, :cond_5

    .line 364
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 365
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find count down latch with given name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->name:Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$500(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 367
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->cnt:I
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$600(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)I

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 360
    .end local v0    # "latchVal":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    :catch_0
    move-exception v4

    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v5, :cond_9

    :try_start_2
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    throw v4

    .line 369
    .restart local v0    # "latchVal":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    :cond_2
    :try_start_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->cnt:I
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$600(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 390
    if-eqz v2, :cond_3

    if-eqz v5, :cond_4

    :try_start_4
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    return-object v4

    :catch_1
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_2

    .line 374
    :cond_5
    :try_start_5
    iget v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->val:I

    if-lez v4, :cond_7

    .line 375
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->get()I

    move-result v4

    iget v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->val:I

    sub-int v1, v4, v6

    .line 377
    .local v1, "retVal":I
    if-gez v1, :cond_6

    .line 378
    const/4 v1, 0x0

    .line 383
    :cond_6
    :goto_3
    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->set(I)V

    .line 385
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->latchView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v4

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->access$300(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v4, v6, v0, v7}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    .line 387
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V

    .line 389
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    .line 390
    if-eqz v2, :cond_3

    if-eqz v5, :cond_8

    :try_start_6
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 381
    .end local v1    # "retVal":I
    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "retVal":I
    goto :goto_3

    .line 390
    :cond_8
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_2

    .end local v0    # "latchVal":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    .end local v1    # "retVal":I
    :catch_3
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

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
    .line 345
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
