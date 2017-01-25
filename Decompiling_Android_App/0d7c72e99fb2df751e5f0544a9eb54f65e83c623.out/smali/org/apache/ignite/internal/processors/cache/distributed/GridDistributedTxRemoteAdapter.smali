.class public Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;
.super Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;
.source "GridDistributedTxRemoteAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private commitAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private explicitVers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected readMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private rmtThreadId:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private started:Z
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected writeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->commitAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;ZJILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V
    .locals 22
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "rmtThreadId"    # J
    .param p5, "xidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p6, "commitVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p7, "sys"    # Z
    .param p8, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p9, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p10, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p11, "invalidate"    # Z
    .param p12, "timeout"    # J
    .param p14, "txSize"    # I
    .param p15, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17, "taskNameHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<**>;",
            "Ljava/util/UUID;",
            "J",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Z",
            "Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;",
            "Lorg/apache/ignite/transactions/TransactionConcurrency;",
            "Lorg/apache/ignite/transactions/TransactionIsolation;",
            "ZJI",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Ljava/util/UUID;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<**>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->last()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-wide/from16 v16, p12

    move/from16 v18, p14

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    move/from16 v21, p17

    invoke-direct/range {v5 .. v21}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V

    .line 75
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->commitAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->rmtThreadId:J

    .line 136
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->invalidate:Z

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->commitVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 141
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->started:Z

    .line 142
    return-void
.end method

.method private commitIfLocked()V
    .locals 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v2

    sget-object v8, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v2, v8, :cond_4

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v42

    .local v42, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 438
    .local v4, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing transaction entry for tx: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 459
    .local v35, "Entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_0
    move-exception v43

    .line 460
    .local v43, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got removed entry while committing (will retry): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 463
    :cond_1
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 441
    .end local v35    # "Entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v43    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_2
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v35

    .line 443
    .restart local v35    # "Entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez v35, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing cached entry for transaction entry: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 446
    :cond_3
    :try_start_0
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v48

    .line 449
    .local v48, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_0
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->groupLockEntry()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, v35

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedBy(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 450
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 451
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transaction does not own lock for entry (will wait) [entry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 677
    .end local v4    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v35    # "Entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v42    # "i$":Ljava/util/Iterator;
    .end local v48    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_4
    :goto_1
    return-void

    .line 446
    .restart local v4    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v35    # "Entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v42    # "i$":Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v48, v0
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 469
    .end local v4    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v35    # "Entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->commitAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 470
    const/16 v40, 0x0

    .line 472
    .local v40, "err":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->addCommittedTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    .line 477
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v15

    .line 480
    .local v15, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->near()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->allEntries()Ljava/util/Collection;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :cond_7
    :goto_3
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 481
    .restart local v4    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v36

    .line 483
    .local v36, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDrEnabled()Z

    move-result v46

    .line 488
    .local v46, "replicate":Z
    :goto_4
    :try_start_1
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v7

    .line 490
    .local v7, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-nez v7, :cond_8

    .line 491
    invoke-virtual/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 493
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->near()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->receiveEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v7, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 644
    .end local v7    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_1
    move-exception v44

    .line 645
    .local v44, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_2
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 646
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempting to commit a removed entry (will retry): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 649
    :cond_9
    invoke-virtual/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 653
    .end local v44    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catch_2
    move-exception v41

    .line 654
    .local v41, "ex":Ljava/lang/Throwable;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->uncommit()V

    .line 656
    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    .line 660
    new-instance v40, Lorg/apache/ignite/internal/transactions/IgniteTxHeuristicCheckedException;

    .end local v40    # "err":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Commit produced a runtime exception (all transaction entries will be invalidated): "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txString(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-direct {v0, v2, v1}, Lorg/apache/ignite/internal/transactions/IgniteTxHeuristicCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v40    # "err":Lorg/apache/ignite/IgniteCheckedException;
    goto/16 :goto_3

    .line 480
    .end local v4    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v36    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v41    # "ex":Ljava/lang/Throwable;
    .end local v46    # "replicate":Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeEntries()Ljava/util/Collection;

    move-result-object v2

    goto/16 :goto_2

    .line 499
    .restart local v4    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v7    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v36    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .restart local v46    # "replicate":Z
    :cond_b
    const/16 v45, 0x0

    .line 501
    .local v45, "nearCached":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    :try_start_3
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v2, v15}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->updateNearCache(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 502
    invoke-virtual/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v2

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    move-result-object v45

    .line 504
    :cond_c
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 505
    :cond_d
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 507
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->applyTransformClosures(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Z)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v47

    .line 510
    .local v47, "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    invoke-virtual/range {v47 .. v47}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 511
    .local v3, "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    invoke-virtual/range {v47 .. v47}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 513
    .local v5, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    .line 515
    .local v6, "explicitVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-nez v6, :cond_f

    .line 516
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    .line 518
    :cond_f
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl()J

    move-result-wide v8

    const-wide/16 v10, -0x2

    cmp-long v2, v8, v10

    if-nez v2, :cond_10

    .line 519
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 521
    :cond_10
    invoke-virtual/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->conflictNeedResolve()Z

    move-result v38

    .line 523
    .local v38, "conflictNeedResolve":Z
    const/16 v37, 0x0

    .line 525
    .local v37, "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;
    if-eqz v38, :cond_18

    move-object/from16 v2, p0

    .line 527
    invoke-virtual/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->conflictResolve(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v39

    .line 529
    .local v39, "drRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_11

    if-nez v39, :cond_11

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 531
    :cond_11
    invoke-virtual/range {v39 .. v39}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v37

    .end local v37    # "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;
    check-cast v37, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;

    .line 533
    .restart local v37    # "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;
    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isUseOld()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 534
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 552
    .end local v39    # "drRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;>;"
    :cond_12
    :goto_5
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v3, v2, :cond_13

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v3, v2, :cond_1e

    .line 554
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->isSystemInvalidate()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->isInvalidate()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 555
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->eventNodeId()Ljava/util/UUID;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->nodeId:Ljava/util/UUID;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v16

    if-eqz v46, :cond_19

    sget-object v17, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_BACKUP:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->near()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v18, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->resolveTaskName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v8, p0

    invoke-interface/range {v7 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerRemove(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/UUID;Ljava/util/UUID;ZZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/dr/GridDrType;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;

    .line 638
    :cond_15
    :goto_8
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_7

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v2

    sget-object v8, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->READ:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v2, v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->onePhaseCommit()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v7, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->hasLockCandidateUnsafe(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v7, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedByUnsafe(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transaction does not own lock for commit [entry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 535
    .restart local v39    # "drRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;>;"
    :cond_16
    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isUseNew()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 536
    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->ttl()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V

    .line 537
    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->expireTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime(J)V

    goto/16 :goto_5

    .line 539
    :cond_17
    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isMerge()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 540
    invoke-virtual/range {v39 .. v39}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 541
    .restart local v3    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->mergeValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v5

    .line 542
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    .line 544
    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->ttl()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V

    .line 545
    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->expireTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime(J)V

    goto/16 :goto_5

    .line 550
    .end local v39    # "drRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;>;"
    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 555
    :cond_19
    sget-object v17, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    goto/16 :goto_6

    :cond_1a
    move-object/from16 v18, v6

    goto/16 :goto_7

    .line 560
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->eventNodeId()Ljava/util/UUID;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->nodeId:Ljava/util/UUID;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl()J

    move-result-wide v23

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v28

    if-eqz v46, :cond_1c

    sget-object v29, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_BACKUP:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    :goto_9
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime()J

    move-result-wide v30

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->near()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v32, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->resolveTaskName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v16, v7

    move-object/from16 v17, p0

    move-object/from16 v20, v5

    move-object/from16 v27, v15

    invoke-interface/range {v16 .. v34}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerSet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZJZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/dr/GridDrType;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;

    .line 567
    if-eqz v45, :cond_15

    .line 568
    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->valueBytes()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v19

    .line 570
    .local v19, "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v18, v0

    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->expireTime()J

    move-result-wide v20

    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->ttl()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->nodeId:Ljava/util/UUID;

    move-object/from16 v24, v0

    move-object/from16 v17, v45

    move-object/from16 v25, v15

    invoke-virtual/range {v17 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->updateOrEvict(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLjava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_8

    .line 560
    .end local v19    # "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_1c
    sget-object v29, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    goto :goto_9

    :cond_1d
    move-object/from16 v32, v6

    goto :goto_a

    .line 579
    :cond_1e
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v3, v2, :cond_21

    .line 580
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->eventNodeId()Ljava/util/UUID;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->nodeId:Ljava/util/UUID;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v29

    if-eqz v46, :cond_1f

    sget-object v30, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_BACKUP:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->near()Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v31, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->resolveTaskName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v20, v7

    move-object/from16 v21, p0

    move-object/from16 v28, v15

    invoke-interface/range {v20 .. v33}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerRemove(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/UUID;Ljava/util/UUID;ZZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/dr/GridDrType;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;

    .line 585
    if-eqz v45, :cond_15

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->nodeId:Ljava/util/UUID;

    move-object/from16 v28, v0

    move-object/from16 v21, v45

    move-object/from16 v29, v15

    invoke-virtual/range {v21 .. v29}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->updateOrEvict(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLjava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_8

    .line 580
    :cond_1f
    sget-object v30, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    goto :goto_b

    :cond_20
    move-object/from16 v31, v6

    goto :goto_c

    .line 588
    :cond_21
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->RELOAD:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v3, v2, :cond_22

    .line 589
    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerReload()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v23

    .line 591
    .local v23, "reloaded":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v45, :cond_15

    .line 592
    invoke-virtual/range {v45 .. v45}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->innerReload()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 594
    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v22

    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->expireTime()J

    move-result-wide v24

    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->ttl()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->nodeId:Ljava/util/UUID;

    move-object/from16 v28, v0

    move-object/from16 v21, v45

    move-object/from16 v29, v15

    invoke-virtual/range {v21 .. v29}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->updateOrEvict(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLjava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_8

    .line 602
    .end local v23    # "reloaded":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_22
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->READ:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v3, v2, :cond_24

    .line 603
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_23

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->near()Z

    move-result v2

    if-nez v2, :cond_23

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 605
    :cond_23
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 606
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring READ entry when committing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 611
    :cond_24
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_25

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->groupLock()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->groupLockEntry()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->ownsLock(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v2

    if-nez v2, :cond_25

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transaction does not own lock for group lock entry during  commit [tx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", txEntry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 614
    :cond_25
    if-eqz v37, :cond_26

    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isUseOld()Z

    move-result v2

    if-nez v2, :cond_15

    .line 615
    :cond_26
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v2, v8, v10

    if-eqz v2, :cond_27

    .line 616
    const/4 v2, 0x0

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl()J

    move-result-wide v8

    invoke-interface {v7, v2, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->updateTtl(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;J)V

    .line 618
    :cond_27
    if-eqz v45, :cond_15

    .line 619
    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->valueBytes()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v19

    .line 621
    .restart local v19    # "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v26, v0

    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->expireTime()J

    move-result-wide v28

    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->ttl()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->nodeId:Ljava/util/UUID;

    move-object/from16 v32, v0

    move-object/from16 v25, v45

    move-object/from16 v27, v19

    move-object/from16 v33, v15

    invoke-virtual/range {v25 .. v33}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->updateOrEvict(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLjava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_8

    .line 666
    .end local v3    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v4    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v5    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v6    # "explicitVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v7    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v15    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v19    # "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v36    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v37    # "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;
    .end local v38    # "conflictNeedResolve":Z
    .end local v45    # "nearCached":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .end local v46    # "replicate":Z
    .end local v47    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_28
    if-eqz v40, :cond_29

    .line 667
    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    .line 669
    throw v40

    .line 672
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->commitTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 674
    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->COMMITTED:Lorg/apache/ignite/transactions/TransactionState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    goto/16 :goto_1
.end method

.method private doneRemote(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 8
    .param p1, "txEntry"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .param p2, "baseVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p3, "committedVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p4, "rolledbackVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p5, "pendingVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :goto_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    .line 275
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    .line 277
    .local v1, "doneVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->isSystemInvalidate()Z

    move-result v6

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->doneRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 291
    return-void

    .line 275
    .end local v1    # "doneVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 281
    :catch_0
    move-exception v7

    .line 282
    .local v7, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->obsoleteVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 284
    :cond_1
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replacing obsolete entry in remote transaction [entry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 288
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_0
.end method


# virtual methods
.method public activeCacheIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected addExplicit(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)V
    .locals 3
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .prologue
    .line 763
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 764
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->explicitVers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 765
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->explicitVers:Ljava/util/List;

    .line 767
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->explicitVers:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 768
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->explicitVers:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added explicit version to transaction [explicitVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 775
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->addAlternateVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 778
    :cond_2
    return-void
.end method

.method public allEntries()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->readEntries()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public alternateVersions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->explicitVers:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->explicitVers:Ljava/util/List;

    goto :goto_0
.end method

.method public clearEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)V
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->readMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method

.method public commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->optimistic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->PREPARED:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    .line 684
    :cond_0
    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 685
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v0

    .line 688
    .local v0, "state":Lorg/apache/ignite/transactions/TransactionState;
    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->COMMITTED:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v0, v1, :cond_2

    .line 703
    .end local v0    # "state":Lorg/apache/ignite/transactions/TransactionState;
    :cond_1
    :goto_0
    return-void

    .line 691
    .restart local v0    # "state":Lorg/apache/ignite/transactions/TransactionState;
    :cond_2
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 692
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set COMMITTING transaction state (will rollback): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 694
    :cond_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->setRollbackOnly()Z

    .line 696
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->isSystemInvalidate()Z

    move-result v1

    if-nez v1, :cond_4

    .line 697
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid transaction state for commit [state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 699
    :cond_4
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->rollback()V

    .line 702
    .end local v0    # "state":Lorg/apache/ignite/transactions/TransactionState;
    :cond_5
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->commitIfLocked()V

    goto :goto_0
.end method

.method public commitAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 717
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->commit()V

    .line 719
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_0
    return-object v1

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doneRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 7
    .param p1, "baseVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p2, "committedVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p3, "rolledbackVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p4, "pendingVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->readMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->readMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->readMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .local v1, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 249
    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->doneRemote(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    .line 252
    .end local v1    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .restart local v1    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 254
    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->doneRemote(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_1

    .line 256
    .end local v1    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public empty()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->readMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .locals 3
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    const/4 v2, 0x0

    .line 222
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    if-nez v1, :cond_1

    move-object v0, v2

    .line 224
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :goto_0
    if-nez v0, :cond_0

    .line 225
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->readMap:Ljava/util/Map;

    if-nez v1, :cond_2

    move-object v0, v2

    .line 227
    :cond_0
    :goto_1
    return-object v0

    .line 222
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-object v0, v1

    goto :goto_0

    .line 225
    .restart local v0    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->readMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-object v0, v1

    goto :goto_1
.end method

.method public eventNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public forceCommit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 711
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->commitIfLocked()V

    .line 712
    return-void
.end method

.method public groupLockKey(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)V
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    if-nez v0, :cond_0

    .line 205
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 206
    :cond_0
    return-void
.end method

.method public hasWriteKey(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    .line 367
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public invalidate(Z)V
    .locals 0
    .param p1, "invalidate"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->invalidate:Z

    .line 181
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->started:Z

    return v0
.end method

.method public masterNodeIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->nodeId:Ljava/util/UUID;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 4
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "owner"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 296
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->hasWriteKey(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->commitIfLocked()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    const/4 v1, 0x1

    .line 306
    :goto_0
    return v1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to commit remote transaction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 306
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public originatingNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public peek(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLorg/apache/ignite/internal/processors/cache/KeyCacheObject;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    .locals 3
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "failFast"    # Z
    .param p3, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Z",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
        }
    .end annotation

    .prologue
    .line 215
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method peek can only be called on user transaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method peek can only be called on user transaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 408
    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->PREPARING:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 410
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->PREPARING:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->optimistic()Z

    move-result v1

    if-nez v1, :cond_2

    .line 411
    :cond_0
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid transaction state for prepare: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 429
    :cond_1
    :goto_0
    return-void

    .line 419
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->prepareTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 421
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->pessimistic()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->isSystemInvalidate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    :cond_3
    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->PREPARED:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->setRollbackOnly()Z

    .line 427
    throw v0
.end method

.method public prepareAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 373
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public readEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->readMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public readMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->readMap:Ljava/util/Map;

    return-object v0
.end method

.method public readSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->readMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remoteThreadId()J
    .locals 2

    .prologue
    .line 318
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->rmtThreadId:J

    return-wide v0
.end method

.method public removed(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z
    .locals 3
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    .line 173
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 175
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rollback()V
    .locals 3

    .prologue
    .line 732
    :try_start_0
    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->ROLLING_BACK:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v1, v2, :cond_1

    .line 733
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->rollbackTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 735
    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->ROLLED_BACK:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 743
    :cond_1
    return-void

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    .line 741
    throw v0

    .line 738
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 747
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->rollback()V

    .line 749
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public seal()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public setWriteValue(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Z
    .locals 5
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .prologue
    .line 326
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->checkInternal(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z

    .line 328
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 330
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-nez v0, :cond_1

    .line 331
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->readMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 333
    .local v1, "rmv":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 336
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .end local v1    # "rmv":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->addExplicit(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)V

    .line 362
    const/4 v2, 0x1

    return v2

    .line 340
    .restart local v1    # "rmv":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 343
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 348
    .end local v1    # "rmv":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->hasWriteValue()Z

    move-result v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->hasReadValue()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZ)V

    .line 349
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors(Ljava/util/Collection;)V

    .line 350
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;)V

    .line 351
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V

    .line 352
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 353
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->groupLockEntry()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->groupLockEntry(Z)V

    .line 356
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 357
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime(J)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 782
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public writeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    return-object v0
.end method

.method public writeSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->writeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
