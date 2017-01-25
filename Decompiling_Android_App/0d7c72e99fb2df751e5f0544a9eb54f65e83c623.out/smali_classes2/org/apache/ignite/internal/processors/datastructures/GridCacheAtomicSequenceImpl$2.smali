.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;
.super Ljava/lang/Object;
.source "GridCacheAtomicSequenceImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->internalUpdate(JZ)Ljava/util/concurrent/Callable;
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


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

.field final synthetic val$l:J

.field final synthetic val$updated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 438
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;JZ)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->val$l:J

    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->val$updated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->seqView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v20

    sget-object v21, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v22, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-static/range {v19 .. v22}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txStartInternal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v18

    .line 443
    .local v18, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->seqView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;

    .line 445
    .local v9, "seq":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    # invokes: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->checkRemoved()V
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$300(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)V

    .line 447
    sget-boolean v19, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->$assertionsDisabled:Z

    if-nez v19, :cond_0

    if-nez v9, :cond_0

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    .end local v9    # "seq":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;
    :catch_0
    move-exception v19

    move-object/from16 v8, v19

    .line 506
    .local v8, "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$800(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to get and add: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 508
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    .end local v8    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v19

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    throw v19

    .line 453
    .restart local v9    # "seq":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;
    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)Ljava/util/concurrent/locks/Lock;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 456
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$500(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)J

    move-result-wide v6

    .line 459
    .local v6, "curLocVal":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$500(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->val$l:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->upBound:J
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$600(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gtz v19, :cond_2

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$500(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)J

    move-result-wide v16

    .line 462
    .local v16, "retVal":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->val$l:J

    move-wide/from16 v20, v0

    # += operator for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J
    invoke-static/range {v19 .. v21}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$514(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;J)J

    .line 464
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->val$updated:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$500(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)J

    move-result-wide v16

    .end local v16    # "retVal":J
    :cond_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v19

    .line 493
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)Ljava/util/concurrent/locks/Lock;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 510
    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    :goto_1
    return-object v19

    .line 467
    :cond_2
    :try_start_5
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;->get()J

    move-result-wide v4

    .line 472
    .local v4, "curGlobalVal":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->batchSize:I
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$700(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->batchSize:I
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$700(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    int-to-long v14, v0

    .line 475
    .local v14, "off":J
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->val$l:J

    move-wide/from16 v20, v0

    add-long v20, v20, v6

    cmp-long v19, v20, v4

    if-ltz v19, :cond_5

    .line 476
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->val$l:J

    move-wide/from16 v20, v0

    add-long v10, v6, v20

    .line 478
    .local v10, "newLocVal":J
    add-long v12, v10, v14

    .line 486
    .local v12, "newUpBound":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # setter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J
    invoke-static {v0, v10, v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$502(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;J)J

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # setter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->upBound:J
    invoke-static {v0, v12, v13}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$602(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;J)J

    .line 489
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->val$updated:Z

    move/from16 v19, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v19, :cond_3

    .line 490
    move-wide v6, v10

    .line 493
    :cond_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)Ljava/util/concurrent/locks/Lock;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 497
    const-wide/16 v20, 0x1

    add-long v20, v20, v12

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;->set(J)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->seqView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v9, v2}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    .line 501
    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V

    .line 503
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v19

    .line 510
    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto/16 :goto_1

    .line 472
    .end local v10    # "newLocVal":J
    .end local v12    # "newUpBound":J
    .end local v14    # "off":J
    :cond_4
    const-wide/16 v14, 0x1

    goto :goto_2

    .line 481
    .restart local v14    # "off":J
    :cond_5
    move-wide v10, v4

    .line 483
    .restart local v10    # "newLocVal":J
    add-long v12, v10, v14

    .restart local v12    # "newUpBound":J
    goto :goto_3

    .line 493
    .end local v4    # "curGlobalVal":J
    .end local v6    # "curLocVal":J
    .end local v10    # "newLocVal":J
    .end local v12    # "newUpBound":J
    .end local v14    # "off":J
    :catchall_1
    move-exception v19

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)Ljava/util/concurrent/locks/Lock;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v19
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 505
    .end local v9    # "seq":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;
    :catch_1
    move-exception v19

    move-object/from16 v8, v19

    goto/16 :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
