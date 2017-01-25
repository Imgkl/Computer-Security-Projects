.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;
.super Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2;
.source "IgniteTxLocalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->getAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

.field final synthetic val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field final synthetic val$deserializePortable:Z

.field final synthetic val$keepCacheObjects:Z

.field final synthetic val$lockKeys:Ljava/util/Collection;

.field final synthetic val$missed:Ljava/util/Map;

.field final synthetic val$retMap:Ljava/util/Map;

.field final synthetic val$skipVals:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1651
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/util/Collection;ZLorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;ZLjava/util/Map;Z)V
    .locals 0

    .prologue
    .line 1651
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$lockKeys:Ljava/util/Collection;

    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$keepCacheObjects:Z

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$retMap:Ljava/util/Map;

    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$skipVals:Z

    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$missed:Ljava/util/Map;

    iput-boolean p8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$deserializePortable:Z

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)V

    return-void
.end method


# virtual methods
.method public postLock()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1653
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1654
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Acquired transaction lock for read on keys: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$lockKeys:Ljava/util/Collection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1657
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$lockKeys:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1658
    .local v20, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$keepCacheObjects:Z

    if-eqz v2, :cond_2

    move-object/from16 v24, v20

    .line 1661
    .local v24, "keyVal":Ljava/lang/Object;, "TK;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$retMap:Ljava/util/Map;

    move-object/from16 v0, v24

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1665
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v26

    .line 1667
    .local v26, "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v25

    .line 1669
    .local v25, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez v25, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1658
    .end local v24    # "keyVal":Ljava/lang/Object;, "TK;"
    .end local v25    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v26    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v24

    goto :goto_1

    .line 1718
    .local v1, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v24    # "keyVal":Ljava/lang/Object;, "TK;"
    .restart local v25    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v26    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :catch_0
    move-exception v23

    .line 1719
    .local v23, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1720
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got removed exception in get postLock (will retry): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1723
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 1673
    .end local v1    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v23    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_4
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 1676
    .restart local v1    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/typedef/T2;

    move-object v11, v2

    .line 1681
    .local v11, "transformClo":Lorg/apache/ignite/internal/util/typedef/T2;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$skipVals:Z

    if-nez v8, :cond_7

    const/4 v8, 0x1

    :goto_3
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iget-object v12, v12, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-static {v10, v12}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->resolveTaskName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface/range {v1 .. v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v5

    .line 1695
    .local v5, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v5, :cond_1

    .line 1696
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$missed:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->setAndMarkValid(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 1700
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1701
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->applyEntryProcessors(Lorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v5

    .line 1703
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$retMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$skipVals:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$keepCacheObjects:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$deserializePortable:Z

    const/4 v9, 0x0

    move-object/from16 v4, v20

    invoke-virtual/range {v2 .. v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->addResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZZZ)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1725
    .end local v5    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v11    # "transformClo":Lorg/apache/ignite/internal/util/typedef/T2;
    :catch_1
    move-exception v21

    .line 1727
    .local v21, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v5

    .line 1729
    .restart local v5    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v5, :cond_1

    .line 1732
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$missed:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->setAndMarkValid(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    goto/16 :goto_0

    .line 1676
    .end local v5    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v21    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1681
    .restart local v11    # "transformClo":Lorg/apache/ignite/internal/util/typedef/T2;
    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 1742
    .end local v1    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v11    # "transformClo":Lorg/apache/ignite/internal/util/typedef/T2;
    .end local v20    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v24    # "keyVal":Ljava/lang/Object;, "TK;"
    .end local v25    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v26    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$missed:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1743
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$retMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$missed:Ljava/util/Map;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$deserializePortable:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$skipVals:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;->val$keepCacheObjects:Z

    move/from16 v19, v0

    invoke-static/range {v12 .. v19}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->access$000(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;ZZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    .line 1752
    :goto_4
    return-object v2

    :cond_a
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    goto :goto_4
.end method
