.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;
.super Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;
.source "DataStructuresProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicReference(Ljava/lang/String;Ljava/lang/Object;Z)Lorg/apache/ignite/IgniteAtomicReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX",
        "<",
        "Lorg/apache/ignite/IgniteAtomicReference;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

.field final synthetic val$create:Z

.field final synthetic val$initVal:Ljava/lang/Object;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 483
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->val$name:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->val$create:Z

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->val$initVal:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->applyx()Lorg/apache/ignite/IgniteAtomicReference;

    move-result-object v0

    return-object v0
.end method

.method public applyx()Lorg/apache/ignite/IgniteAtomicReference;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/IgniteAtomicReference",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 485
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->val$name:Ljava/lang/String;

    invoke-direct {v1, v7}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;-><init>(Ljava/lang/String;)V

    .line 487
    .local v1, "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 489
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v8

    sget-object v9, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v10, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-static {v7, v8, v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txStartInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .local v3, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v7, 0x0

    .line 490
    :try_start_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v9}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v9

    invoke-interface {v9, v1}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-class v10, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;

    # invokes: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v8, v9, v10}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$200(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;

    .line 494
    .local v4, "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v9}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$300(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-class v10, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceEx;

    # invokes: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v8, v9, v10}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$200(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceEx;

    .line 497
    .local v2, "ref":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceEx;
    if-eqz v2, :cond_4

    .line 498
    sget-boolean v8, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    if-nez v4, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 489
    .end local v2    # "ref":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceEx;
    .end local v4    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;
    :catch_0
    move-exception v6

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 519
    :catchall_0
    move-exception v7

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    :goto_0
    if-eqz v3, :cond_0

    if-eqz v7, :cond_b

    :try_start_3
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_1
    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 520
    .end local v3    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 521
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_5
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$300(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$1200(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to make atomic reference: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->val$name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 525
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 528
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v6

    .line 519
    .restart local v2    # "ref":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceEx;
    .restart local v3    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v4    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v6, :cond_3

    :try_start_6
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 528
    :cond_2
    :goto_3
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    move-object v6, v2

    :goto_4
    return-object v6

    .line 519
    :catch_2
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 520
    .end local v2    # "ref":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceEx;
    .end local v3    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v4    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;
    .end local v5    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v6

    move-object v0, v6

    goto :goto_2

    .line 519
    .restart local v2    # "ref":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceEx;
    .restart local v3    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v4    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;
    :cond_3
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 503
    :cond_4
    if-nez v4, :cond_7

    :try_start_8
    iget-boolean v8, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->val$create:Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v8, :cond_7

    .line 519
    if-eqz v3, :cond_5

    if-eqz v6, :cond_6

    :try_start_9
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 528
    :cond_5
    :goto_5
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_4

    .line 519
    :catch_4
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    :try_start_a
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 506
    :cond_7
    if-nez v4, :cond_8

    .line 507
    :try_start_b
    new-instance v4, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;

    .end local v4    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->val$initVal:Ljava/lang/Object;

    invoke-direct {v4, v8}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;-><init>(Ljava/lang/Object;)V

    .line 509
    .restart local v4    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v8, v1, v4, v9}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    .line 512
    :cond_8
    new-instance v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    .end local v2    # "ref":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceEx;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->val$name:Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicRefView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v9}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$1100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v10}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v10

    invoke-direct {v2, v8, v1, v9, v10}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 514
    .restart local v2    # "ref":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceEx;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$300(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    invoke-interface {v8, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 519
    if-eqz v3, :cond_9

    if-eqz v6, :cond_a

    :try_start_c
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 528
    :cond_9
    :goto_6
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$6;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    move-object v6, v2

    goto :goto_4

    .line 519
    :catch_5
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    :try_start_d
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_6

    .end local v2    # "ref":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceEx;
    .end local v4    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;
    :catch_6
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_d
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_1

    :catchall_2
    move-exception v7

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    goto/16 :goto_0
.end method
