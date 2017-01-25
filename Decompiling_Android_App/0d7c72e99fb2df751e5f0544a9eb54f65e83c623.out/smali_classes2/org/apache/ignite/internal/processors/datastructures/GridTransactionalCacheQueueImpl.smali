.class public Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;
.super Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;
.source "GridTransactionalCacheQueueImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0
    .param p1, "queueName"    # Ljava/lang/String;
    .param p2, "hdr"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl<TT;>;"
    .local p3, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 43
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const-string v12, "items"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    const/4 v2, 0x0

    .local v2, "cnt":I
    move v3, v2

    .line 154
    .end local v2    # "cnt":I
    .local v3, "cnt":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    sget-object v13, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v14, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-virtual {v12, v13, v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    .local v10, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v13, 0x0

    .line 155
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->queueKey:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    new-instance v15, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->id:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v16, v0

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-direct/range {v15 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;-><init>(Lorg/apache/ignite/lang/IgniteUuid;I)V

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    move-result-object v12

    invoke-interface {v12}, Ljavax/cache/processor/EntryProcessorResult;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 157
    .local v6, "idx":Ljava/lang/Long;
    if-eqz v6, :cond_2

    .line 158
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->checkRemoved(Ljava/lang/Long;)V

    .line 160
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v8, "putMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;TT;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 163
    .local v7, "item":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->itemKey(Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;

    move-result-object v12

    invoke-interface {v8, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 166
    goto :goto_1

    .line 168
    .end local v7    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v14, 0x0

    invoke-virtual {v12, v8, v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->putAll(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 170
    const/4 v9, 0x1

    .line 175
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;TT;>;"
    .local v9, "retVal":Z
    :goto_2
    invoke-interface {v10}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    if-eqz v10, :cond_1

    if-eqz v13, :cond_3

    :try_start_2
    invoke-interface {v10}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 193
    :cond_1
    :goto_3
    return v9

    .line 173
    .end local v9    # "retVal":Z
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "retVal":Z
    goto :goto_2

    .line 178
    :catch_0
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 179
    .end local v6    # "idx":Ljava/lang/Long;
    .end local v9    # "retVal":Z
    .end local v10    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 180
    .local v4, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :try_start_4
    instance-of v12, v4, Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    if-eqz v12, :cond_6

    .line 181
    throw v4
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 195
    .end local v4    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_2
    move-exception v4

    move v2, v3

    .line 196
    .end local v3    # "cnt":I
    .restart local v2    # "cnt":I
    .local v4, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_4
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v12

    throw v12

    .line 178
    .end local v2    # "cnt":I
    .end local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v3    # "cnt":I
    .restart local v6    # "idx":Ljava/lang/Long;
    .restart local v9    # "retVal":Z
    .restart local v10    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_3
    :try_start_5
    invoke-interface {v10}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_5
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 154
    .end local v6    # "idx":Ljava/lang/Long;
    .end local v9    # "retVal":Z
    :catch_3
    move-exception v12

    :try_start_6
    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 178
    :catchall_0
    move-exception v13

    move-object/from16 v18, v13

    move-object v13, v12

    move-object/from16 v12, v18

    :goto_5
    if-eqz v10, :cond_4

    if-eqz v13, :cond_5

    :try_start_7
    invoke-interface {v10}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_6
    :try_start_8
    throw v12

    :catch_4
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v10}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_8
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    .line 183
    .end local v10    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .local v4, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :cond_6
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "cnt":I
    .restart local v2    # "cnt":I
    const/16 v12, 0x64

    if-ne v3, v12, :cond_7

    .line 184
    :try_start_9
    throw v4

    .line 195
    :catch_5
    move-exception v4

    goto :goto_4

    .line 186
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to add item, will retry [err="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x5d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 188
    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_9
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_5

    move v3, v2

    .line 190
    .end local v2    # "cnt":I
    .restart local v3    # "cnt":I
    goto/16 :goto_0

    .line 178
    .end local v4    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    .restart local v10    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catchall_1
    move-exception v12

    goto :goto_5
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const-string v7, "item"

    invoke-static {p1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    .local v0, "cnt":I
    move v1, v0

    .line 57
    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    sget-object v8, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v9, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .local v5, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v8, 0x0

    .line 58
    :try_start_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->queueKey:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    new-instance v10, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->id:Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;-><init>(Lorg/apache/ignite/lang/IgniteUuid;I)V

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v9, v10, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    move-result-object v7

    invoke-interface {v7}, Ljavax/cache/processor/EntryProcessorResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 60
    .local v3, "idx":Ljava/lang/Long;
    if-eqz v3, :cond_1

    .line 61
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->checkRemoved(Ljava/lang/Long;)V

    .line 63
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->itemKey(Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {v7, v9, p1, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    .line 65
    const/4 v4, 0x1

    .line 70
    .local v4, "retVal":Z
    :goto_1
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    if-eqz v5, :cond_0

    if-eqz v8, :cond_2

    :try_start_2
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 89
    :cond_0
    :goto_2
    return v4

    .line 68
    .end local v4    # "retVal":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "retVal":Z
    goto :goto_1

    .line 73
    :catch_0
    move-exception v6

    .local v6, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 75
    .end local v3    # "idx":Ljava/lang/Long;
    .end local v4    # "retVal":Z
    .end local v5    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v6    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 76
    .local v2, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :try_start_4
    instance-of v7, v2, Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    if-eqz v7, :cond_5

    .line 77
    throw v2
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 91
    .end local v2    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_2
    move-exception v2

    move v0, v1

    .line 92
    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_3
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v7

    throw v7

    .line 73
    .end local v0    # "cnt":I
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "cnt":I
    .restart local v3    # "idx":Ljava/lang/Long;
    .restart local v4    # "retVal":Z
    .restart local v5    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_2
    :try_start_5
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_5
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 57
    .end local v3    # "idx":Ljava/lang/Long;
    .end local v4    # "retVal":Z
    :catch_3
    move-exception v7

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 73
    :catchall_0
    move-exception v8

    move-object v13, v8

    move-object v8, v7

    move-object v7, v13

    :goto_4
    if-eqz v5, :cond_3

    if-eqz v8, :cond_4

    :try_start_7
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_3
    :goto_5
    :try_start_8
    throw v7

    :catch_4
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_8
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    .line 79
    .end local v5    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .local v2, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :cond_5
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    const/16 v7, 0x64

    if-ne v1, v7, :cond_6

    .line 80
    :try_start_9
    throw v2

    .line 91
    :catch_5
    move-exception v2

    goto :goto_3

    .line 82
    :cond_6
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to add item, will retry [err="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 84
    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_9
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_5

    move v1, v0

    .line 86
    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    goto/16 :goto_0

    .line 73
    .end local v2    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    .restart local v5    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catchall_1
    move-exception v7

    goto :goto_4
.end method

.method public poll()Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl<TT;>;"
    const/4 v9, 0x0

    .line 100
    const/4 v0, 0x0

    .local v0, "cnt":I
    move v1, v0

    .line 105
    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    sget-object v8, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v10, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-virtual {v7, v8, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .local v5, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v7, 0x0

    .line 106
    :try_start_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->queueKey:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    new-instance v11, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$PollProcessor;

    iget-object v12, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {v11, v12}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$PollProcessor;-><init>(Lorg/apache/ignite/lang/IgniteUuid;)V

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8, v10, v11, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    move-result-object v8

    invoke-interface {v8}, Ljavax/cache/processor/EntryProcessorResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 108
    .local v3, "idx":Ljava/lang/Long;
    if-eqz v3, :cond_1

    .line 109
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->checkRemoved(Ljava/lang/Long;)V

    .line 111
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->itemKey(Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    move-result-object v4

    .line 113
    .local v4, "retVal":Ljava/lang/Object;, "TT;"
    sget-boolean v8, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->$assertionsDisabled:Z

    if-nez v8, :cond_2

    if-nez v4, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    .end local v3    # "idx":Ljava/lang/Long;
    .end local v4    # "retVal":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v7

    :try_start_2
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :catchall_0
    move-exception v8

    move-object v13, v8

    move-object v8, v7

    move-object v7, v13

    :goto_1
    if-eqz v5, :cond_0

    if-eqz v8, :cond_5

    :try_start_3
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    :try_start_4
    throw v7
    :try_end_4
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 122
    .end local v5    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catch_1
    move-exception v2

    .line 123
    .local v2, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :try_start_5
    instance-of v7, v2, Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    if-eqz v7, :cond_6

    .line 124
    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 138
    .end local v2    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_2
    move-exception v2

    move v0, v1

    .line 139
    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_3
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v7

    throw v7

    .line 116
    .end local v0    # "cnt":I
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "cnt":I
    .restart local v3    # "idx":Ljava/lang/Long;
    .restart local v5    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_1
    const/4 v4, 0x0

    .line 118
    :cond_2
    :try_start_6
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 121
    if-eqz v5, :cond_3

    if-eqz v9, :cond_4

    :try_start_7
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_2

    .line 136
    :cond_3
    :goto_4
    return-object v4

    .line 121
    :catch_3
    move-exception v6

    .local v6, "x2":Ljava/lang/Throwable;
    :try_start_8
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_4

    .end local v3    # "idx":Ljava/lang/Long;
    :catch_4
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_8
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 126
    .end local v5    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .local v2, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :cond_6
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    const/16 v7, 0x64

    if-ne v1, v7, :cond_7

    .line 127
    :try_start_9
    throw v2

    .line 138
    :catch_5
    move-exception v2

    goto :goto_3

    .line 129
    :cond_7
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to add item, will retry [err="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x5d

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 131
    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_9
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_5

    move v1, v0

    .line 133
    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    goto/16 :goto_0

    .line 121
    .end local v2    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    .restart local v5    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catchall_1
    move-exception v7

    move-object v8, v9

    goto :goto_1
.end method

.method protected removeItem(J)V
    .locals 15
    .param p1, "rmvIdx"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl<TT;>;"
    const/4 v0, 0x0

    .local v0, "cnt":I
    move v1, v0

    .line 207
    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    sget-object v8, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v9, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .local v5, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v8, 0x0

    .line 208
    :try_start_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->queueKey:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    new-instance v10, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Long;)V

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v9, v10, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    move-result-object v7

    invoke-interface {v7}, Ljavax/cache/processor/EntryProcessorResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 210
    .local v3, "idx":Ljava/lang/Long;
    if-eqz v3, :cond_1

    .line 211
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->checkRemoved(Ljava/lang/Long;)V

    .line 213
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->itemKey(Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {v7, v9, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removex(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v4

    .line 215
    .local v4, "rmv":Z
    sget-boolean v7, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    if-nez v4, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    .end local v3    # "idx":Ljava/lang/Long;
    .end local v4    # "rmv":Z
    :catch_0
    move-exception v7

    :try_start_2
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    :catchall_0
    move-exception v8

    move-object v13, v8

    move-object v8, v7

    move-object v7, v13

    :goto_1
    if-eqz v5, :cond_0

    if-eqz v8, :cond_4

    :try_start_3
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    :try_start_4
    throw v7
    :try_end_4
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 222
    .end local v5    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catch_1
    move-exception v2

    .line 223
    .local v2, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :try_start_5
    instance-of v7, v2, Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    if-eqz v7, :cond_5

    .line 224
    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 236
    .end local v2    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_2
    move-exception v2

    move v0, v1

    .line 237
    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_3
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v7

    throw v7

    .line 218
    .end local v0    # "cnt":I
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "cnt":I
    .restart local v3    # "idx":Ljava/lang/Long;
    .restart local v5    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_1
    :try_start_6
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 221
    if-eqz v5, :cond_2

    if-eqz v8, :cond_3

    :try_start_7
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_2

    .line 239
    :cond_2
    :goto_4
    return-void

    .line 221
    :catch_3
    move-exception v6

    .local v6, "x2":Ljava/lang/Throwable;
    :try_start_8
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_4

    .end local v3    # "idx":Ljava/lang/Long;
    :catch_4
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_8
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 226
    .end local v5    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .local v2, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :cond_5
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    const/16 v7, 0x64

    if-ne v1, v7, :cond_6

    .line 227
    :try_start_9
    throw v2

    .line 236
    :catch_5
    move-exception v2

    goto :goto_3

    .line 229
    :cond_6
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to add item, will retry [err="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 231
    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_9
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_5

    move v1, v0

    .line 233
    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    goto/16 :goto_0

    .line 221
    .end local v2    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    .restart local v5    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catchall_1
    move-exception v7

    goto :goto_1
.end method
