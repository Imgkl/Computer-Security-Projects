.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;
.super Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;
.source "DataStructuresProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->countDownLatch(Ljava/lang/String;IZZ)Lorg/apache/ignite/IgniteCountDownLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX",
        "<",
        "Lorg/apache/ignite/IgniteCountDownLatch;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

.field final synthetic val$autoDel:Z

.field final synthetic val$cnt:I

.field final synthetic val$create:Z

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 850
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;ZIZ)V
    .locals 0

    .prologue
    .line 850
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->val$name:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->val$create:Z

    iput p4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->val$cnt:I

    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->val$autoDel:Z

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
    .line 850
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->applyx()Lorg/apache/ignite/IgniteCountDownLatch;

    move-result-object v0

    return-object v0
.end method

.method public applyx()Lorg/apache/ignite/IgniteCountDownLatch;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 852
    new-instance v5, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->val$name:Ljava/lang/String;

    invoke-direct {v5, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;-><init>(Ljava/lang/String;)V

    .line 854
    .local v5, "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 856
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v4, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-static {v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txStartInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .local v9, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v13, 0x0

    .line 857
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v2

    invoke-interface {v2, v5}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;

    # invokes: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$200(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;

    .line 861
    .local v10, "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$300(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;

    # invokes: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$200(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;

    .line 863
    .local v0, "latch":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;
    if-eqz v0, :cond_4

    .line 864
    sget-boolean v1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v10, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 856
    .end local v0    # "latch":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;
    .end local v10    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 886
    :catchall_0
    move-exception v2

    move-object v12, v1

    move-object v1, v2

    :goto_0
    if-eqz v9, :cond_0

    if-eqz v12, :cond_b

    :try_start_3
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_1
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 887
    .end local v9    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 888
    .local v8, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_5
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$300(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$1900(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create count down latch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 892
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 895
    .end local v8    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1

    .line 886
    .restart local v0    # "latch":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;
    .restart local v9    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v10    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    :cond_1
    if-eqz v9, :cond_2

    if-eqz v12, :cond_3

    :try_start_6
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 895
    :cond_2
    :goto_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    move-object v1, v0

    :goto_4
    return-object v1

    .line 886
    :catch_2
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 887
    .end local v0    # "latch":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;
    .end local v9    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v10    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v1

    move-object v8, v1

    goto :goto_2

    .line 886
    .restart local v0    # "latch":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;
    .restart local v9    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v10    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    :cond_3
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 869
    :cond_4
    if-nez v10, :cond_7

    :try_start_8
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->val$create:Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v1, :cond_7

    .line 886
    if-eqz v9, :cond_5

    if-eqz v12, :cond_6

    :try_start_9
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 895
    :cond_5
    :goto_5
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    move-object v1, v12

    goto :goto_4

    .line 886
    :catch_4
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    :try_start_a
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 872
    :cond_7
    if-nez v10, :cond_8

    .line 873
    :try_start_b
    new-instance v10, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;

    .end local v10    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    iget v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->val$cnt:I

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->val$autoDel:Z

    invoke-direct {v10, v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;-><init>(IZ)V

    .line 875
    .restart local v10    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v1, v5, v10, v2}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    .line 878
    :cond_8
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    .end local v0    # "latch":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->val$name:Ljava/lang/String;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->get()I

    move-result v2

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->initialCount()I

    move-result v3

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;->autoDelete()Z

    move-result v4

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->cntDownLatchView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$1800(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;-><init>(Ljava/lang/String;IIZLorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 881
    .restart local v0    # "latch":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$300(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1, v5, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 886
    if-eqz v9, :cond_9

    if-eqz v12, :cond_a

    :try_start_c
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 895
    :cond_9
    :goto_6
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$14;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    move-object v1, v0

    goto/16 :goto_4

    .line 886
    :catch_5
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    :try_start_d
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_6

    .end local v0    # "latch":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;
    .end local v10    # "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;
    :catch_6
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_d
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_1

    :catchall_2
    move-exception v1

    goto/16 :goto_0
.end method
