.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;
.super Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;
.source "DataStructuresProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->sequence(Ljava/lang/String;JZ)Lorg/apache/ignite/IgniteAtomicSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX",
        "<",
        "Lorg/apache/ignite/IgniteAtomicSequence;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

.field final synthetic val$create:Z

.field final synthetic val$initVal:J

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/String;ZJ)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->val$name:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->val$create:Z

    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->val$initVal:J

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
    .line 154
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->applyx()Lorg/apache/ignite/IgniteAtomicSequence;

    move-result-object v0

    return-object v0
.end method

.method public applyx()Lorg/apache/ignite/IgniteAtomicSequence;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v4, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->val$name:Ljava/lang/String;

    invoke-direct {v4, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKeyImpl;-><init>(Ljava/lang/String;)V

    .line 158
    .local v4, "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 160
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v7, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-static {v3, v5, v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txStartInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v16

    .local v16, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/16 v18, 0x0

    .line 161
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-class v6, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;

    # invokes: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v3, v5, v6}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$200(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;

    .line 164
    .local v13, "seqVal":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$300(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-class v6, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceEx;

    # invokes: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v3, v5, v6}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$200(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceEx;

    .line 166
    .local v2, "seq":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceEx;
    if-eqz v2, :cond_4

    .line 167
    sget-boolean v3, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez v13, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 160
    .end local v2    # "seq":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceEx;
    .end local v13    # "seqVal":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;
    :catch_0
    move-exception v3

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    :catchall_0
    move-exception v5

    move-object/from16 v19, v5

    move-object v5, v3

    move-object/from16 v3, v19

    :goto_0
    if-eqz v16, :cond_0

    if-eqz v5, :cond_c

    :try_start_3
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_1
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    .end local v16    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catch_1
    move-exception v3

    move-object v12, v3

    .line 218
    .local v12, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$300(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$600(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to make atomic sequence: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->val$name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 222
    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 225
    .end local v12    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v3

    .line 216
    .restart local v2    # "seq":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceEx;
    .restart local v13    # "seqVal":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;
    .restart local v16    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_1
    if-eqz v16, :cond_2

    if-eqz v18, :cond_3

    :try_start_6
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 225
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    move-object v3, v2

    :goto_4
    return-object v3

    .line 216
    :catch_2
    move-exception v17

    .local v17, "x2":Ljava/lang/Throwable;
    :try_start_7
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 217
    .end local v2    # "seq":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceEx;
    .end local v13    # "seqVal":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;
    .end local v16    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v17    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v3

    move-object v12, v3

    goto :goto_2

    .line 216
    .restart local v2    # "seq":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceEx;
    .restart local v13    # "seqVal":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;
    .restart local v16    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_3
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 172
    :cond_4
    if-nez v13, :cond_7

    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->val$create:Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v3, :cond_7

    .line 173
    const/4 v3, 0x0

    .line 216
    if-eqz v16, :cond_5

    if-eqz v18, :cond_6

    :try_start_9
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 225
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_4

    .line 216
    :catch_4
    move-exception v17

    .restart local v17    # "x2":Ljava/lang/Throwable;
    :try_start_a
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v17    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 176
    :cond_7
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicCfg:Lorg/apache/ignite/configuration/AtomicConfiguration;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$400(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/configuration/AtomicConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/AtomicConfiguration;->getAtomicSequenceReserveSize()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicCfg:Lorg/apache/ignite/configuration/AtomicConfiguration;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$400(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/configuration/AtomicConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/AtomicConfiguration;->getAtomicSequenceReserveSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-long v14, v3

    .line 182
    .local v14, "off":J
    :goto_6
    if-nez v13, :cond_a

    .line 183
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->val$initVal:J

    .line 185
    .local v8, "locCntr":J
    add-long v10, v8, v14

    .line 188
    .local v10, "upBound":J
    new-instance v13, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;

    .end local v13    # "seqVal":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;
    const-wide/16 v6, 0x1

    add-long/2addr v6, v10

    invoke-direct {v13, v6, v7}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;-><init>(J)V

    .line 200
    .restart local v13    # "seqVal":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$100(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v3, v4, v13, v5}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    .line 203
    new-instance v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    .end local v2    # "seq":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceEx;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->val$name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->seqView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$500(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicCfg:Lorg/apache/ignite/configuration/AtomicConfiguration;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$400(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/configuration/AtomicConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/AtomicConfiguration;->getAtomicSequenceReserveSize()I

    move-result v7

    invoke-direct/range {v2 .. v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;IJJ)V

    .line 211
    .restart local v2    # "seq":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceEx;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$300(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 216
    if-eqz v16, :cond_8

    if-eqz v18, :cond_b

    :try_start_c
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 225
    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->dsCacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->access$000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    move-object v3, v2

    goto/16 :goto_4

    .line 176
    .end local v8    # "locCntr":J
    .end local v10    # "upBound":J
    .end local v14    # "off":J
    :cond_9
    const-wide/16 v14, 0x1

    goto :goto_6

    .line 191
    .restart local v14    # "off":J
    :cond_a
    :try_start_d
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;->get()J

    move-result-wide v8

    .line 193
    .restart local v8    # "locCntr":J
    add-long v10, v8, v14

    .line 196
    .restart local v10    # "upBound":J
    const-wide/16 v6, 0x1

    add-long/2addr v6, v10

    invoke-virtual {v13, v6, v7}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;->set(J)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_7

    .line 216
    .end local v2    # "seq":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceEx;
    .end local v8    # "locCntr":J
    .end local v10    # "upBound":J
    .end local v13    # "seqVal":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;
    .end local v14    # "off":J
    :catchall_2
    move-exception v3

    move-object/from16 v5, v18

    goto/16 :goto_0

    .restart local v2    # "seq":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceEx;
    .restart local v8    # "locCntr":J
    .restart local v10    # "upBound":J
    .restart local v13    # "seqVal":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;
    .restart local v14    # "off":J
    :catch_5
    move-exception v17

    .restart local v17    # "x2":Ljava/lang/Throwable;
    :try_start_e
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    .end local v17    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_8

    .end local v2    # "seq":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceEx;
    .end local v8    # "locCntr":J
    .end local v10    # "upBound":J
    .end local v13    # "seqVal":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;
    .end local v14    # "off":J
    :catch_6
    move-exception v17

    .restart local v17    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .end local v17    # "x2":Ljava/lang/Throwable;
    :cond_c
    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_e
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_1
.end method
