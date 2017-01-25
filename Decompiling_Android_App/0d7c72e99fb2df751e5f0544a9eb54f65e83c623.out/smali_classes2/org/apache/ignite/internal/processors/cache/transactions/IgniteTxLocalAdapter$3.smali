.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;
.super Ljava/lang/Object;
.source "IgniteTxLocalAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->checkMissed(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;ZZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI2",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private nextVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

.field final synthetic val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field final synthetic val$deserializePortable:Z

.field final synthetic val$keepCacheObjects:Z

.field final synthetic val$loaded:Ljava/util/Collection;

.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$missedMap:Ljava/util/Map;

.field final synthetic val$skipVals:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1462
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLjava/util/Map;ZZLjava/util/Collection;)V
    .locals 0

    .prologue
    .line 1462
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$missedMap:Ljava/util/Map;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$skipVals:Z

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$map:Ljava/util/Map;

    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$keepCacheObjects:Z

    iput-boolean p7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$deserializePortable:Z

    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$loaded:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1462
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V
    .locals 17
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 1467
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isRollbackOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1468
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1469
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring loaded value for read because transaction was rolled back: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1587
    :cond_0
    :goto_0
    return-void

    .line 1475
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$missedMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 1477
    .local v16, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-nez v16, :cond_2

    .line 1478
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1479
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value from storage was never asked for [key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", val="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1484
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v9

    .line 1486
    .local v9, "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object v4, v9

    .line 1488
    .local v4, "visibleVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v15

    .line 1490
    .local v15, "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v1, v15}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v14

    .line 1492
    .local v14, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz v14, :cond_4

    .line 1493
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1494
    invoke-virtual {v14, v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->readValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 1496
    :cond_3
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1497
    invoke-virtual {v14, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->applyEntryProcessors(Lorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    .line 1502
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->pessimistic()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1503
    const/16 v16, 0x0

    .line 1506
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->nextVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    if-nez v1, :cond_6

    .line 1507
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->nextVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 1510
    :cond_6
    :goto_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->$assertionsDisabled:Z

    if-nez v1, :cond_7

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$skipVals:Z

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1512
    :cond_7
    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, v2, v15}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v10

    .line 1520
    .local v10, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->nextVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, v16

    invoke-interface {v10, v9, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->versionedValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 1544
    .local v13, "set":Z
    :try_start_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->pessimistic()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1583
    .end local v13    # "set":Z
    :catch_0
    move-exception v11

    .line 1584
    .local v11, "ex":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to put value for cache entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v11}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1512
    .end local v10    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v11    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    :cond_8
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v10

    goto :goto_2

    .line 1522
    .restart local v10    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_1
    move-exception v12

    .line 1523
    .local v12, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_2
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1524
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got removed entry in transaction getAll method (will try again): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1527
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->pessimistic()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isRollbackOnly()Z

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1529
    :cond_a
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent transaction state (entry got removed while holding lock) [entry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1532
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    goto/16 :goto_0

    .line 1537
    :cond_b
    if-eqz v14, :cond_6

    .line 1538
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, v2, v15}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto/16 :goto_1

    .line 1546
    .end local v12    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v13    # "set":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v1

    if-nez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v1

    if-nez v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$skipVals:Z

    if-eqz v1, :cond_f

    .line 1547
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 1549
    if-eqz v4, :cond_e

    .line 1550
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$map:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$skipVals:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$keepCacheObjects:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$deserializePortable:Z

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->addResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZZZ)V

    .line 1575
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$loaded:Ljava/util/Collection;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1577
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1578
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set value loaded from store into entry from transaction [set="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", matchVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->nextVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", entry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1560
    :cond_f
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    if-nez v14, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1562
    :cond_10
    invoke-virtual {v14, v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->setAndMarkValid(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 1564
    if-eqz v4, :cond_e

    .line 1565
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$map:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$skipVals:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$keepCacheObjects:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;->val$deserializePortable:Z

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->addResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZZZ)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method
