.class public abstract Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
.super Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;
.source "IgniteTxLocalAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;,
        Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostMissClosure;,
        Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2;,
        Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;,
        Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PMC;,
        Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2;,
        Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field protected activeCacheIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected commitErr:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private committedVers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation
.end field

.field private completedBase:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field protected doneFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected implicitRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

.field protected minVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field protected needRetVal:Z

.field private partLock:Z

.field protected readView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private rolledbackVers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation
.end field

.field private sndTransformedVals:Z

.field protected txMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field protected writeView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->doneFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->committedVers:Ljava/util/Collection;

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->rolledbackVers:Ljava/util/Collection;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitErr:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->activeCacheIds:Ljava/util/Set;

    .line 111
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JZZILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZLjava/util/UUID;I)V
    .locals 21
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "xidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "implicit"    # Z
    .param p4, "implicitSingle"    # Z
    .param p5, "sys"    # Z
    .param p6, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p7, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p8, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p9, "timeout"    # J
    .param p11, "invalidate"    # Z
    .param p12, "storeEnabled"    # Z
    .param p13, "txSize"    # I
    .param p14, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15, "partLock"    # Z
    .param p16, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17, "taskNameHash"    # I

    .prologue
    .line 146
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p16

    move/from16 v19, p17

    invoke-direct/range {v2 .. v19}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JZZILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V

    .line 77
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->doneFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->committedVers:Ljava/util/Collection;

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->rolledbackVers:Ljava/util/Collection;

    .line 95
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitErr:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->activeCacheIds:Ljava/util/Set;

    .line 149
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-eqz p15, :cond_0

    if-nez p14, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 151
    :cond_0
    move/from16 v0, p15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->partLock:Z

    .line 153
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->minVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;ZZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Ljava/util/Map;
    .param p4, "x4"    # Ljava/util/Collection;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z
    .param p7, "x7"    # Z

    .prologue
    .line 56
    invoke-direct/range {p0 .. p7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->checkMissed(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;ZZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p3, "x3"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->addInvokeResult(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V

    return-void
.end method

.method private addInvokeResult(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V
    .locals 21
    .param p1, "txEntry"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .param p2, "cacheVal"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p3, "ret"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .prologue
    .line 2470
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v8

    .line 2472
    .local v8, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    const/4 v4, 0x0

    .line 2473
    .local v4, "key0":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 2476
    .local v6, "val0":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 2478
    .local v11, "res":Ljava/lang/Object;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .end local v4    # "key0":Ljava/lang/Object;
    .end local v6    # "val0":Ljava/lang/Object;
    .end local v11    # "res":Ljava/lang/Object;
    .local v19, "i$":Ljava/util/Iterator;
    :goto_0
    :try_start_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/internal/util/typedef/T2;

    .line 2479
    .local v20, "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;[Ljava/lang/Object;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V

    .line 2482
    .local v1, "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavax/cache/processor/EntryProcessor;

    .line 2484
    .local v18, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;*>;"
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/util/typedef/T2;->get2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v0, v18

    invoke-interface {v0, v1, v2}, Ljavax/cache/processor/EntryProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 2486
    .restart local v11    # "res":Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->value()Ljava/lang/Object;

    move-result-object v6

    .line 2488
    .restart local v6    # "val0":Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->key()Ljava/lang/Object;

    move-result-object v4

    .line 2489
    .restart local v4    # "key0":Ljava/lang/Object;
    goto :goto_0

    .line 2491
    .end local v1    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "key0":Ljava/lang/Object;
    .end local v6    # "val0":Ljava/lang/Object;
    .end local v11    # "res":Ljava/lang/Object;
    .end local v18    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;*>;"
    .end local v20    # "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;[Ljava/lang/Object;>;"
    :cond_0
    if-eqz v11, :cond_1

    .line 2492
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v9

    const/4 v12, 0x0

    move-object/from16 v7, p3

    move-object v10, v4

    invoke-virtual/range {v7 .. v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->addEntryProcessResult(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2497
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    return-void

    .line 2494
    .restart local v4    # "key0":Ljava/lang/Object;
    .restart local v6    # "val0":Ljava/lang/Object;
    .restart local v11    # "res":Ljava/lang/Object;
    :catch_0
    move-exception v17

    move-object v15, v4

    .line 2495
    .end local v4    # "key0":Ljava/lang/Object;
    .end local v6    # "val0":Ljava/lang/Object;
    .end local v11    # "res":Ljava/lang/Object;
    .local v17, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v14

    const/16 v16, 0x0

    move-object/from16 v12, p3

    move-object v13, v8

    invoke-virtual/range {v12 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->addEntryProcessResult(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1

    .line 2494
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v19    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v17

    move-object v15, v4

    goto :goto_2
.end method

.method private checkCommitLocks(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 458
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->ownsLockUnsafe(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lock is not owned for commit in PESSIMISTIC mode [entry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 460
    :cond_0
    return-void
.end method

.method private checkMissed(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;ZZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 16
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p4    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "deserializePortable"    # Z
    .param p6, "skipVals"    # Z
    .param p7, "keepCacheObjects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;ZZZ)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1409
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p3, "missedMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p4, "redos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->pessimistic()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1411
    :cond_0
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1412
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading missed values for missed map: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1414
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1416
    .local v5, "loaded":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    new-instance v15, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Ljava/util/Map;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    new-instance v6, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p1

    move/from16 v10, p6

    move-object/from16 v11, p2

    move/from16 v12, p7

    move/from16 v13, p5

    move-object v14, v5

    invoke-direct/range {v6 .. v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$3;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLjava/util/Map;ZZLjava/util/Collection;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v9, v2

    move v10, v3

    move-object v11, v4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object v14, v6

    invoke-virtual/range {v7 .. v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->loadMissing(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZZLjava/util/Collection;ZZLorg/apache/ignite/lang/IgniteBiInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    invoke-direct {v15, v1, v2}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-object v15
.end method

.method private deserializePortables(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z
    .locals 2
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .prologue
    .line 2930
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    .line 2932
    .local v0, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->deserializePortables()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private enlistRead(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljavax/cache/expiry/ExpiryPolicy;Ljava/util/Map;Ljava/util/Map;IZZZ)Ljava/util/Collection;
    .locals 55
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p3, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "keysCnt"    # I
    .param p8, "deserializePortable"    # Z
    .param p9, "skipVals"    # Z
    .param p10, "keepCacheObjects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;IZZZ)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1134
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p5, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p6, "missed":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1135
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v4

    move/from16 v0, p7

    if-eq v0, v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1136
    :cond_1
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    if-eqz p3, :cond_2

    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-interface/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1138
    :cond_2
    sget-object v4, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 1140
    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLockSanityCheck(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Iterable;)V

    .line 1142
    const/4 v4, 0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_6

    const/16 v50, 0x1

    .line 1144
    .local v50, "single":Z
    :goto_0
    const/16 v49, 0x0

    .line 1146
    .local v49, "lockKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v51

    .line 1151
    .local v51, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .local v47, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1152
    .local v6, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->pessimistic()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez p9, :cond_4

    .line 1153
    invoke-virtual/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->addActiveCache(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 1155
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v53

    .line 1158
    .local v53, "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v52

    .line 1161
    .local v52, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz v52, :cond_10

    .line 1162
    invoke-virtual/range {v52 .. v52}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v7

    .line 1165
    .local v7, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual/range {v52 .. v52}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->hasValue()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1166
    invoke-virtual/range {v52 .. v52}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1167
    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->applyEntryProcessors(Lorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v7

    .line 1169
    :cond_5
    if-eqz v7, :cond_3

    .line 1170
    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p8

    invoke-virtual/range {v4 .. v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->addResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZZZ)V

    goto :goto_1

    .line 1142
    .end local v6    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v47    # "i$":Ljava/util/Iterator;
    .end local v49    # "lockKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v50    # "single":Z
    .end local v51    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v52    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v53    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :cond_6
    const/16 v50, 0x0

    goto :goto_0

    .line 1173
    .restart local v6    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v47    # "i$":Ljava/util/Iterator;
    .restart local v49    # "lockKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v50    # "single":Z
    .restart local v51    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .restart local v52    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v53    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :cond_7
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_a

    invoke-virtual/range {v52 .. v52}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v4, v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {v52 .. v52}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->groupLockEntry()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_8
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1214
    :catch_0
    move-exception v32

    .line 1215
    .local v32, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1216
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Filter validation failed for entry: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1218
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1219
    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->readValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 1177
    .end local v32    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :cond_a
    :goto_2
    :try_start_0
    invoke-virtual/range {v52 .. v52}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v4, v5, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {v52 .. v52}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/util/typedef/T2;

    move-object/from16 v18, v4

    .line 1181
    .local v18, "transformClo":Lorg/apache/ignite/internal/util/typedef/T2;
    :goto_3
    invoke-virtual/range {v52 .. v52}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    if-nez p9, :cond_e

    const/4 v15, 0x1

    :goto_4
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->resolveTaskName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v9, p0

    invoke-interface/range {v8 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v7

    .line 1194
    if-eqz v7, :cond_f

    .line 1195
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v4

    if-nez v4, :cond_b

    if-nez p9, :cond_b

    .line 1196
    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->readValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 1198
    :cond_b
    invoke-virtual/range {v52 .. v52}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1199
    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->applyEntryProcessors(Lorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v7

    .line 1201
    :cond_c
    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p8

    invoke-virtual/range {v4 .. v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->addResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZZZ)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 1221
    .end local v18    # "transformClo":Lorg/apache/ignite/internal/util/typedef/T2;
    :catch_1
    move-exception v48

    .line 1222
    .local v48, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    invoke-virtual/range {v52 .. v52}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v4, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto/16 :goto_2

    .line 1177
    .end local v48    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_d
    const/16 v18, 0x0

    goto :goto_3

    .line 1181
    .restart local v18    # "transformClo":Lorg/apache/ignite/internal/util/typedef/T2;
    :cond_e
    const/4 v15, 0x0

    goto :goto_4

    .line 1210
    :cond_f
    :try_start_1
    invoke-virtual/range {v52 .. v52}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1229
    .end local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v18    # "transformClo":Lorg/apache/ignite/internal/util/typedef/T2;
    :cond_10
    if-nez v49, :cond_11

    if-nez p9, :cond_11

    .line 1230
    if-eqz v50, :cond_16

    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v49

    .line 1232
    :cond_11
    :goto_5
    if-nez v50, :cond_12

    if-nez p9, :cond_12

    .line 1233
    move-object/from16 v0, v49

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1238
    :cond_12
    :goto_6
    if-eqz p3, :cond_17

    .line 1239
    move-object/from16 v19, p3

    .line 1241
    .local v19, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    const/16 p3, 0x0

    .line 1247
    :goto_7
    :try_start_2
    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v54

    .line 1249
    .local v54, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const/4 v7, 0x0

    .line 1251
    .restart local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->pessimistic()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v4

    if-eqz v4, :cond_1b

    if-nez p9, :cond_1b

    .line 1252
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->optimistic()Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v53

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->accessPolicy(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-result-object v31

    .line 1256
    .local v31, "accessPlc":Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    :goto_8
    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->resolveTaskName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v20, p0

    invoke-interface/range {v19 .. v31}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v7

    .line 1269
    if-eqz v7, :cond_19

    .line 1270
    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p8

    invoke-virtual/range {v4 .. v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->addResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZZZ)V

    .line 1285
    .end local v31    # "accessPlc":Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v4

    if-nez v4, :cond_15

    if-nez p9, :cond_15

    .line 1286
    sget-object v34, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->READ:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1

    const-wide/16 v42, -0x1

    const-wide/16 v44, -0x1

    const/16 v46, 0x0

    move-object/from16 v33, p0

    move-object/from16 v35, v7

    move-object/from16 v38, v19

    move-object/from16 v39, p4

    invoke-virtual/range {v33 .. v46}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->addEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljavax/cache/expiry/ExpiryPolicy;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;ZJJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v52

    .line 1298
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1299
    const/4 v4, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->groupLockEntry(Z)V

    .line 1303
    :cond_14
    if-eqz v7, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->pessimistic()Z

    move-result v4

    if-nez v4, :cond_15

    .line 1304
    invoke-virtual/range {v52 .. v52}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->markValid()V
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1341
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1342
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    move-object/from16 v0, v51

    invoke-virtual {v4, v5, v8, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->belongs(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1343
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1344
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto/16 :goto_1

    .line 1230
    .end local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v19    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v54    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_16
    new-instance v49, Ljava/util/ArrayList;

    .end local v49    # "lockKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    move-object/from16 v0, v49

    move/from16 v1, p7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto/16 :goto_5

    .line 1244
    .restart local v49    # "lockKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v53

    move-object/from16 v3, v51

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v19

    .restart local v19    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    goto/16 :goto_7

    .line 1252
    .restart local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v54    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_18
    const/16 v31, 0x0

    goto/16 :goto_8

    .line 1279
    .restart local v31    # "accessPlc":Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    :cond_19
    :try_start_3
    move-object/from16 v0, p6

    move-object/from16 v1, v54

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_9

    .line 1309
    .end local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v31    # "accessPlc":Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    .end local v54    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catch_2
    move-exception v48

    .line 1310
    .restart local v48    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_4
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1311
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got removed entry in transaction getAllAsync(..) (will retry): "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1341
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v19, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1342
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    move-object/from16 v0, v51

    invoke-virtual {v4, v5, v8, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->belongs(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1343
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1344
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto/16 :goto_6

    .line 1283
    .end local v48    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v54    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_1b
    :try_start_5
    move-object/from16 v0, p6

    move-object/from16 v1, v54

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_9

    .line 1313
    .end local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v54    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catch_3
    move-exception v32

    .line 1314
    .restart local v32    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :try_start_6
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1315
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Filter validation failed for entry: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1317
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1319
    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v7

    .line 1321
    .restart local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    sget-object v34, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->READ:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v40

    const/16 v41, 0x0

    const-wide/16 v42, -0x1

    const-wide/16 v44, -0x1

    const/16 v46, 0x0

    move-object/from16 v33, p0

    move-object/from16 v35, v7

    move-object/from16 v38, v19

    move-object/from16 v39, p4

    invoke-virtual/range {v33 .. v46}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->addEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljavax/cache/expiry/ExpiryPolicy;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;ZJJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v52

    .line 1334
    if-eqz v7, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->pessimistic()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1335
    invoke-virtual/range {v52 .. v52}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->markValid()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1341
    .end local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1342
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    move-object/from16 v0, v51

    invoke-virtual {v4, v5, v8, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->belongs(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1343
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1344
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto/16 :goto_1

    .line 1341
    .end local v32    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :catchall_0
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v5

    if-eqz v5, :cond_1e

    if-eqz v19, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1342
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v8

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v9

    move-object/from16 v0, v51

    invoke-virtual {v5, v8, v9, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->belongs(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1343
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1344
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    :cond_1e
    throw v4

    .line 1352
    .end local v6    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v19    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v52    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v53    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :cond_1f
    if-eqz v49, :cond_20

    .end local v49    # "lockKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :goto_a
    return-object v49

    .restart local v49    # "lockKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v49

    goto :goto_a
.end method

.method private filter(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 1
    .param p1, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1944
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->pessimistic()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->optimistic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private groupLockSanityCheck(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Iterable;)V
    .locals 10
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/lang/Iterable",
            "<+TK;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p2, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    const/16 v9, 0x5d

    .line 2954
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isCacheSanityCheckEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2956
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/cache/affinity/AffinityFunction;->partition(Ljava/lang/Object;)I

    move-result v1

    .line 2958
    .local v1, "affinityPart":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 2959
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->partitionLock()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2960
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v5

    .line 2962
    .local v5, "part":I
    if-eq v1, v5, :cond_0

    .line 2963
    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to enlist key into group-lock transaction (given key does not belong to locked partition) [key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", affinityPart="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", part="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", groupLockKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2968
    .end local v5    # "part":I
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinityMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;->affinityKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    .line 2971
    .local v2, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual {p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v0

    .line 2973
    .local v0, "affinityKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2974
    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to enlist key into group-lock transaction (affinity key was not enlisted to transaction on start) [key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", affinityKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", groupLockKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2980
    .end local v0    # "affinityKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .end local v1    # "affinityPart":I
    .end local v2    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_2
    return-void
.end method

.method private putAllAsync0(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;Ljava/util/Map;ZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 37
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "invokeArgs"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "retval"    # Z
    .param p7, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;",
            ">;Z",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture;"
        }
    .end annotation

    .prologue
    .line 2524
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p3, "invokeMap":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor<TK;TV;Ljava/lang/Object;>;>;"
    .local p5, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-eqz p8, :cond_0

    if-eqz p3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2526
    :cond_0
    sget-object v2, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_PUT:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 2528
    if-eqz p6, :cond_1

    .line 2529
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->needReturnValue(Z)V

    .line 2535
    :cond_1
    if-eqz p5, :cond_4

    .line 2536
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2538
    :cond_2
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$10;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)V

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v0, p5

    invoke-static {v0, v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Map;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;

    move-result-object v8

    .line 2544
    .local v8, "map0":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v9, 0x0

    .line 2551
    .local v9, "invokeMap0":Ljava/util/Map;, "Ljava/util/Map<*Ljavax/cache/processor/EntryProcessor<TK;TV;Ljava/lang/Object;>;>;"
    :goto_0
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2552
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Called putAllAsync(...) [tx="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", map="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", retval="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2554
    :cond_3
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    if-nez v8, :cond_5

    if-nez v9, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2547
    .end local v8    # "map0":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v9    # "invokeMap0":Ljava/util/Map;, "Ljava/util/Map<*Ljavax/cache/processor/EntryProcessor<TK;TV;Ljava/lang/Object;>;>;"
    :cond_4
    move-object/from16 v8, p2

    .line 2548
    .restart local v8    # "map0":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object/from16 v9, p3

    .restart local v9    # "invokeMap0":Ljava/util/Map;, "Ljava/util/Map<*Ljavax/cache/processor/EntryProcessor<TK;TV;Ljava/lang/Object;>;>;"
    goto :goto_0

    .line 2555
    :cond_5
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_8

    if-eqz p7, :cond_8

    if-eqz v8, :cond_6

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    :cond_6
    if-eqz v9, :cond_7

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    :cond_7
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2559
    :cond_8
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->checkValid()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2565
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->init()Z

    .line 2567
    new-instance v14, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->localResult()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v14, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(ZZ)V

    .line 2569
    .local v14, "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2570
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2572
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commit()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2578
    :cond_9
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success(Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 2712
    .end local v14    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :goto_1
    return-object v2

    .line 2561
    :catch_0
    move-exception v29

    .line 2562
    .local v29, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2574
    .end local v29    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v14    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :catch_1
    move-exception v29

    .line 2575
    .restart local v29    # "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2582
    .end local v29    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_a
    if-eqz v8, :cond_c

    :try_start_2
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 2584
    .local v4, "keySet":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :goto_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2586
    .local v15, "enlisted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v35

    .line 2588
    .local v35, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    if-eqz v35, :cond_d

    invoke-virtual/range {v35 .. v35}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v6

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit:Z

    const/4 v12, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p7

    move-object/from16 v10, p4

    move/from16 v11, p6

    move-object/from16 v13, p8

    move-object/from16 v16, p5

    invoke-virtual/range {v2 .. v17}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->enlistWrite(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljavax/cache/expiry/ExpiryPolicy;ZLjava/util/Map;Ljava/util/Map;[Ljava/lang/Object;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v33

    .line 2605
    .local v33, "loadFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->pessimistic()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v2

    if-nez v2, :cond_10

    .line 2607
    invoke-interface/range {v33 .. v33}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/Set;

    .line 2609
    .local v34, "loaded":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v3, 0x0

    invoke-static/range {v34 .. v34}, Lorg/apache/ignite/internal/util/F0;->notIn(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v15, v2}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v17

    .line 2611
    .local v17, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2612
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before acquiring transaction lock for put on keys: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2614
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->lockTimeout()J

    move-result-wide v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isInvalidate()Z

    move-result v24

    const-wide/16 v25, -0x1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v27

    move-object/from16 v20, p0

    move/from16 v22, p6

    invoke-virtual/range {v16 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txLockAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZLorg/apache/ignite/transactions/TransactionIsolation;ZJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v31

    .line 2624
    .local v31, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    new-instance v18, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;

    move-object/from16 v19, p0

    move-object/from16 v20, v14

    move-object/from16 v21, v17

    move-object/from16 v22, p1

    move-object/from16 v23, v34

    move/from16 v24, p6

    move-object/from16 v25, p8

    invoke-direct/range {v18 .. v25}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$11;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Set;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 2646
    .local v18, "plc1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    invoke-interface/range {v31 .. v31}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_6

    move-result v2

    if-eqz v2, :cond_f

    .line 2648
    :try_start_3
    invoke-interface/range {v31 .. v31}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;->apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_3
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    goto/16 :goto_1

    .line 2582
    .end local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .end local v15    # "enlisted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v17    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v18    # "plc1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    .end local v31    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .end local v33    # "loadFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    .end local v34    # "loaded":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v35    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :cond_c
    :try_start_4
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    goto/16 :goto_2

    .line 2588
    .restart local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .restart local v15    # "enlisted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v35    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 2650
    .restart local v17    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v18    # "plc1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    .restart local v31    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .restart local v33    # "loadFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    .restart local v34    # "loaded":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :catch_2
    move-exception v29

    .line 2651
    .local v29, "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-virtual/range {v29 .. v29}, Lorg/apache/ignite/internal/util/lang/GridClosureException;->unwrap()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_1

    .line 2699
    .end local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .end local v15    # "enlisted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v17    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v18    # "plc1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    .end local v29    # "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    .end local v31    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .end local v33    # "loadFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    .end local v34    # "loaded":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v35    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_3
    move-exception v29

    .line 2700
    .local v29, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_4
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 2701
    .local v36, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v28

    .line 2703
    .local v28, "cached0":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v28, :cond_e

    .line 2704
    invoke-virtual/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v2, v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_4

    .line 2653
    .end local v28    # "cached0":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v29    # "e":Ljava/lang/RuntimeException;
    .end local v32    # "i$":Ljava/util/Iterator;
    .end local v36    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .restart local v15    # "enlisted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v17    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v18    # "plc1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    .restart local v31    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .restart local v33    # "loadFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    .restart local v34    # "loaded":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v35    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_4
    move-exception v29

    .line 2655
    .local v29, "e":Lorg/apache/ignite/IgniteCheckedException;
    const/4 v2, 0x0

    :try_start_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;->apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v2

    goto/16 :goto_1

    .line 2657
    :catch_5
    move-exception v30

    .line 2658
    .local v30, "e1":Ljava/lang/Exception;
    :try_start_6
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v30

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_1

    .line 2709
    .end local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .end local v15    # "enlisted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v17    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v18    # "plc1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    .end local v29    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v30    # "e1":Ljava/lang/Exception;
    .end local v31    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .end local v33    # "loadFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    .end local v34    # "loaded":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v35    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_6
    move-exception v29

    .line 2710
    .restart local v29    # "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 2712
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2663
    .end local v29    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .restart local v15    # "enlisted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v17    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v18    # "plc1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    .restart local v31    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .restart local v33    # "loadFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    .restart local v34    # "loaded":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v35    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :cond_f
    :try_start_7
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    goto/16 :goto_1

    .line 2669
    .end local v17    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v18    # "plc1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    .end local v31    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .end local v34    # "loaded":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2672
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_11

    invoke-interface/range {v33 .. v33}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_11

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_6

    .line 2675
    :cond_11
    :try_start_8
    invoke-interface/range {v33 .. v33}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_8
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    .line 2681
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$12;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)V

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    goto/16 :goto_1

    .line 2677
    :catch_7
    move-exception v29

    .line 2678
    .restart local v29    # "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2690
    .end local v29    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_12
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$13;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_6

    move-result-object v2

    goto/16 :goto_1

    .line 2707
    .end local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .end local v15    # "enlisted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v33    # "loadFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    .end local v35    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local v29, "e":Ljava/lang/RuntimeException;
    .restart local v32    # "i$":Ljava/util/Iterator;
    :cond_13
    throw v29
.end method

.method private removeAllAsync0(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 33
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "retval"    # Z
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/util/Collection",
            "<+TK;>;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Z[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2744
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    .local p3, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    sget-object v2, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_REMOVE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 2746
    if-eqz p5, :cond_0

    .line 2747
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->needReturnValue(Z)V

    .line 2751
    :cond_0
    if-eqz p3, :cond_2

    .line 2752
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2754
    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 2759
    .local v4, "keys0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez v4, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2757
    .end local v4    # "keys0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_2
    move-object/from16 v4, p2

    .restart local v4    # "keys0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    goto :goto_0

    .line 2760
    :cond_3
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-eqz p4, :cond_4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2762
    :cond_4
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2763
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Called removeAllAsync(...) [tx="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", keys="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", implicit="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", retval="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2767
    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->checkValid()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2773
    new-instance v14, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->localResult()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v14, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(ZZ)V

    .line 2775
    .local v14, "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2776
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2778
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commit()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2785
    :cond_6
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success(Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 2919
    .end local v14    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :goto_1
    return-object v2

    .line 2769
    :catch_0
    move-exception v28

    .line 2770
    .local v28, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v28

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2780
    .end local v28    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v14    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :catch_1
    move-exception v28

    .line 2781
    .restart local v28    # "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v28

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2788
    .end local v28    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->init()Z

    .line 2791
    :try_start_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2795
    .local v15, "enlisted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-static/range {p6 .. p6}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2796
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v32

    .line 2798
    .local v32, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    if-eqz v32, :cond_a

    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v6

    .line 2803
    .end local v32    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local v6, "plc":Ljavax/cache/expiry/ExpiryPolicy;
    :goto_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v11, p5

    move-object/from16 v13, p6

    move-object/from16 v17, p3

    invoke-virtual/range {v2 .. v17}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->enlistWrite(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljavax/cache/expiry/ExpiryPolicy;ZLjava/util/Map;Ljava/util/Map;[Ljava/lang/Object;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v31

    .line 2821
    .local v31, "loadFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2822
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove keys: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2827
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->pessimistic()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2829
    const/4 v2, 0x1

    new-array v3, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v5, 0x0

    invoke-interface/range {v31 .. v31}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/F0;->notIn(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v15, v3}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v17

    .line 2831
    .local v17, "passedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2832
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before acquiring transaction lock for remove on keys: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2834
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->lockTimeout()J

    move-result-wide v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isInvalidate()Z

    move-result v24

    const-wide/16 v25, -0x1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v27

    move-object/from16 v20, p0

    move/from16 v22, p5

    invoke-virtual/range {v16 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txLockAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZLorg/apache/ignite/transactions/TransactionIsolation;ZJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v30

    .line 2844
    .local v30, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    new-instance v18, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$14;

    move-object/from16 v19, p0

    move-object/from16 v20, v14

    move-object/from16 v21, v17

    move-object/from16 v22, p1

    move-object/from16 v23, v31

    move/from16 v24, p5

    move-object/from16 v25, p6

    invoke-direct/range {v18 .. v25}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$14;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/IgniteInternalFuture;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 2866
    .local v18, "plc1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    invoke-interface/range {v30 .. v30}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v2

    if-eqz v2, :cond_c

    .line 2868
    :try_start_3
    invoke-interface/range {v30 .. v30}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;->apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_3
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    goto/16 :goto_1

    .line 2798
    .end local v6    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    .end local v17    # "passedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v18    # "plc1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    .end local v30    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .end local v31    # "loadFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    .restart local v32    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 2801
    .end local v32    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    goto/16 :goto_2

    .line 2870
    .restart local v17    # "passedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v18    # "plc1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    .restart local v30    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .restart local v31    # "loadFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    :catch_2
    move-exception v28

    .line 2871
    .local v28, "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    :try_start_4
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/util/lang/GridClosureException;->unwrap()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 2916
    .end local v6    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    .end local v15    # "enlisted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v17    # "passedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v18    # "plc1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    .end local v28    # "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    .end local v30    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .end local v31    # "loadFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    :catch_3
    move-exception v28

    .line 2917
    .local v28, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 2919
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v28

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2873
    .end local v28    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v6    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    .restart local v15    # "enlisted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v17    # "passedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v18    # "plc1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    .restart local v30    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .restart local v31    # "loadFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    :catch_4
    move-exception v28

    .line 2875
    .restart local v28    # "e":Lorg/apache/ignite/IgniteCheckedException;
    const/4 v2, 0x0

    :try_start_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;->apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    goto/16 :goto_1

    .line 2877
    :catch_5
    move-exception v29

    .line 2878
    .local v29, "e1":Ljava/lang/Exception;
    :try_start_6
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2883
    .end local v28    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v29    # "e1":Ljava/lang/Exception;
    :cond_c
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    goto/16 :goto_1

    .line 2889
    .end local v17    # "passedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v18    # "plc1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    .end local v30    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2892
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_e

    invoke-interface/range {v31 .. v31}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2894
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$15;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)V

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    goto/16 :goto_1

    .line 2905
    :cond_f
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$16;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$16;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v2

    goto/16 :goto_1
.end method

.method private skip(Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/util/Set;
    .locals 3
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1377
    .local p1, "skipped":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    if-nez p1, :cond_0

    .line 1378
    new-instance p1, Lorg/apache/ignite/internal/util/GridLeanSet;

    .end local p1    # "skipped":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-direct {p1}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    .line 1380
    .restart local p1    # "skipped":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1382
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1383
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added key to skipped set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1385
    :cond_1
    return-object p1
.end method


# virtual methods
.method protected accessPolicy(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .param p3, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1366
    const/4 v0, 0x0

    return-object v0
.end method

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
    .line 210
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->activeCacheIds:Ljava/util/Set;

    return-object v0
.end method

.method protected addActiveCache(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 7
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3063
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    .line 3066
    .local v1, "cacheId":I
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->activeCacheIds:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3067
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->activeCacheIds:Ljava/util/Set;

    invoke-virtual {v4, p0, v5, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->txCompatible(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3070
    .local v2, "cacheNames":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->activeCacheIds:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3071
    .local v0, "activeCacheId":Ljava/lang/Integer;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3073
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3076
    .end local v0    # "activeCacheId":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3078
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to enlist new cache to existing transaction (cache configurations are not compatible) [activeCaches=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], cacheName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", txSystem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->system()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cacheSystem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->system()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3084
    .end local v2    # "cacheNames":Ljava/lang/StringBuilder;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->activeCacheIds:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3086
    :cond_2
    return-void
.end method

.method protected final addEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljavax/cache/expiry/ExpiryPolicy;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;ZJJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .locals 23
    .param p1, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p2, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "entryProcessor"    # Ljavax/cache/processor/EntryProcessor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "invokeArgs"    # [Ljava/lang/Object;
    .param p5, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p6, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p8, "filtersSet"    # Z
    .param p9, "drTtl"    # J
    .param p11, "drExpireTime"    # J
    .param p13, "drVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3146
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-eqz p4, :cond_0

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3148
    :cond_0
    invoke-interface/range {p5 .. p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v5

    .line 3150
    .local v5, "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->checkInternal(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z

    .line 3152
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v22

    .line 3155
    .local v22, "state":Lorg/apache/ignite/transactions/TransactionState;
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    sget-object v4, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->timedOut()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid tx state for adding entry [op="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", val="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", entry="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", filter="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", txCtx="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txContextVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", tx="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x5d

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 3158
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 3161
    .local v21, "old":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz p8, :cond_2

    invoke-static/range {p7 .. p7}, Lorg/apache/ignite/internal/util/typedef/F;->isEmptyOrNulls([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3163
    :cond_2
    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filtersSet()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3164
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object p7

    .line 3169
    :cond_3
    if-eqz v21, :cond_e

    .line 3170
    if-eqz p3, :cond_6

    .line 3171
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    if-eqz p2, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3172
    :cond_4
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3175
    :cond_5
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->addEntryProcessor(Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)V

    .line 3185
    :goto_0
    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 3186
    move-object/from16 v0, v21

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 3189
    const-wide/16 v8, 0x0

    cmp-long v4, p9, v8

    if-ltz v4, :cond_d

    .line 3190
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_b

    const-wide/16 v8, 0x0

    cmp-long v4, p11, v8

    if-gez v4, :cond_b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3178
    :cond_6
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_7

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v4

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v4, v6, :cond_7

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3180
    :cond_7
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;)V

    .line 3181
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_8

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_8

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_9

    :cond_8
    const/4 v4, 0x1

    :goto_1
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->READ:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-ne v0, v6, :cond_a

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4, v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZ)V

    goto :goto_0

    :cond_9
    const/4 v4, 0x0

    goto :goto_1

    :cond_a
    const/4 v6, 0x0

    goto :goto_2

    :cond_b
    move-object/from16 v4, p0

    move-wide/from16 v6, p9

    move-wide/from16 v8, p11

    .line 3192
    invoke-virtual/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entryTtlDr(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;JJ)Z

    .line 3197
    :goto_3
    move-object/from16 v7, v21

    .line 3199
    .local v7, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3200
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updated transaction entry: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3227
    :cond_c
    :goto_4
    move/from16 v0, p8

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filtersSet(Z)V

    .line 3231
    :goto_5
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v7, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->updateExplicitVersion(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3233
    return-object v7

    .line 3195
    .end local v7    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v5, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entryExpiry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljavax/cache/expiry/ExpiryPolicy;)V

    goto :goto_3

    .line 3203
    :cond_e
    const-wide/16 v8, 0x0

    cmp-long v4, p9, v8

    if-ltz v4, :cond_10

    const/16 v19, 0x1

    .line 3205
    .local v19, "hasDrTtl":Z
    :goto_6
    new-instance v7, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    invoke-interface/range {p5 .. p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v8

    if-eqz v19, :cond_11

    move-wide/from16 v14, p9

    :goto_7
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p7

    move-object/from16 v18, p13

    invoke-direct/range {v7 .. v18}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;JLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 3216
    .restart local v7    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    move-wide/from16 v0, p11

    invoke-virtual {v7, v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime(J)V

    .line 3218
    if-nez v19, :cond_f

    .line 3219
    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiry(Ljavax/cache/expiry/ExpiryPolicy;)V

    .line 3221
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3223
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3224
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Created transaction entry: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 3203
    .end local v7    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v19    # "hasDrTtl":Z
    :cond_10
    const/16 v19, 0x0

    goto :goto_6

    .line 3205
    .restart local v19    # "hasDrTtl":Z
    :cond_11
    const-wide/16 v14, -0x1

    goto :goto_7

    .line 3235
    .end local v19    # "hasDrTtl":Z
    .restart local v7    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :catch_0
    move-exception v20

    .line 3236
    .local v20, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3237
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got removed entry in transaction newEntry method (will retry): "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3239
    :cond_12
    invoke-interface/range {p5 .. p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object p5

    .line 3241
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto/16 :goto_5
.end method

.method protected addGroupTxMapping(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2942
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    return-void
.end method

.method public allEntries()Ljava/util/Collection;
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
    .line 259
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
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
    .line 3118
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected batchStoreCommit(Ljava/lang/Iterable;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 495
    .local p1, "writeEntries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v14

    .line 497
    .local v14, "store":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    if-eqz v14, :cond_1c

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->writeThrough()Z

    move-result v19

    if-eqz v19, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->storeEnabled()Z

    move-result v19

    if-eqz v19, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->internal()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v19

    if-eqz v19, :cond_1c

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->near()Z

    move-result v19

    if-nez v19, :cond_1

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->writeToStoreFromDht()Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 500
    :cond_1
    if-eqz p1, :cond_1b

    .line 501
    const/4 v10, 0x0

    .line 502
    .local v10, "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    const/4 v12, 0x0

    .line 503
    .local v12, "rmvCol":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/16 v18, 0x0

    .line 505
    .local v18, "writeStore":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->near()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->writeToStoreFromDht()Z

    move-result v19

    if-eqz v19, :cond_7

    const/4 v13, 0x1

    .line 507
    .local v13, "skipNear":Z
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 508
    .local v3, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz v13, :cond_3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isNear()Z

    move-result v19

    if-nez v19, :cond_2

    .line 511
    :cond_3
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v19

    if-eqz v19, :cond_8

    const/4 v6, 0x1

    .line 513
    .local v6, "intercept":Z
    :goto_2
    if-nez v6, :cond_4

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 514
    :cond_4
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 516
    :cond_5
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->applyTransformClosures(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Z)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v11

    .line 518
    .local v11, "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    .line 520
    .local v2, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v11}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 521
    .local v9, "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    .line 522
    .local v8, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual {v11}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 523
    .local v16, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v17

    .line 525
    .local v17, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    sget-object v19, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, v19

    if-eq v9, v0, :cond_6

    sget-object v19, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, v19

    if-ne v9, v0, :cond_e

    .line 527
    :cond_6
    if-eqz v12, :cond_a

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_a

    .line 528
    sget-boolean v19, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v19, :cond_9

    if-nez v18, :cond_9

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 627
    .end local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v3    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "intercept":Z
    .end local v8    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v10    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    .end local v11    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .end local v12    # "rmvCol":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v13    # "skipNear":Z
    .end local v16    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v17    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v18    # "writeStore":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    :catch_0
    move-exception v4

    .line 628
    .local v4, "ex":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitError(Ljava/lang/Throwable;)V

    .line 630
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->removeCommittedTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 635
    throw v4

    .line 505
    .end local v4    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v10    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    .restart local v12    # "rmvCol":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v18    # "writeStore":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 511
    .restart local v3    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v13    # "skipNear":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 530
    .restart local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .restart local v6    # "intercept":Z
    .restart local v8    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .restart local v11    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .restart local v16    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v17    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_9
    :try_start_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->removeAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;)Z

    .line 533
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 535
    const/16 v18, 0x0

    .line 539
    :cond_a
    if-eqz v18, :cond_b

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_b

    if-eqz v10, :cond_b

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_b

    .line 540
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->putAllToStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Map;)Z

    .line 543
    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 545
    const/16 v18, 0x0

    .line 548
    :cond_b
    if-eqz v6, :cond_c

    .line 549
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v19

    new-instance v20, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->rawGetOrUnmarshal(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v8, v1}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lorg/apache/ignite/cache/CacheInterceptor;->onBeforePut(Ljavax/cache/Cache$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 553
    .local v7, "interceptorVal":Ljava/lang/Object;
    if-eqz v7, :cond_2

    .line 556
    invoke-virtual {v2, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v16

    .line 559
    .end local v7    # "interceptorVal":Ljava/lang/Object;
    :cond_c
    if-nez v10, :cond_d

    .line 560
    new-instance v10, Ljava/util/LinkedHashMap;

    .end local v10    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeMap()Ljava/util/Map;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->size()I

    move-result v19

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v10, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 562
    .restart local v10    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    :cond_d
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v8, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v18

    goto/16 :goto_1

    .line 566
    :cond_e
    sget-object v19, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, v19

    if-ne v9, v0, :cond_14

    .line 568
    if-eqz v10, :cond_10

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_10

    .line 569
    sget-boolean v19, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v19, :cond_f

    if-nez v18, :cond_f

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 637
    .end local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v3    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "intercept":Z
    .end local v8    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v10    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    .end local v11    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .end local v12    # "rmvCol":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v13    # "skipNear":Z
    .end local v16    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v17    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v18    # "writeStore":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    :catch_1
    move-exception v4

    .line 638
    .local v4, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitError(Ljava/lang/Throwable;)V

    .line 640
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->removeCommittedTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 645
    new-instance v19, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to commit transaction to database: "

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

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 571
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .restart local v3    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "intercept":Z
    .restart local v8    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .restart local v10    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    .restart local v11    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .restart local v12    # "rmvCol":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v13    # "skipNear":Z
    .restart local v16    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v17    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v18    # "writeStore":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    :cond_f
    :try_start_2
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->putAllToStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Map;)Z

    .line 574
    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 576
    const/16 v18, 0x0

    .line 579
    :cond_10
    if-eqz v18, :cond_11

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_11

    if-eqz v12, :cond_11

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_11

    .line 580
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->removeAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;)Z

    .line 583
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 585
    const/16 v18, 0x0

    .line 588
    :cond_11
    if-eqz v6, :cond_12

    .line 589
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v19

    new-instance v20, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->rawGetOrUnmarshal(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v8, v1}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    invoke-interface/range {v19 .. v20}, Lorg/apache/ignite/cache/CacheInterceptor;->onBeforeRemove(Ljavax/cache/Cache$Entry;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v15

    .line 592
    .local v15, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    invoke-virtual {v2, v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cancelRemove(Lorg/apache/ignite/lang/IgniteBiTuple;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 596
    .end local v15    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    :cond_12
    if-nez v12, :cond_13

    .line 597
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "rmvCol":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .restart local v12    # "rmvCol":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_13
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v8, v0, v1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v18

    goto/16 :goto_1

    .line 603
    :cond_14
    sget-object v19, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 604
    sget-object v19, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Ignoring NOOP entry for batch store commit: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 607
    .end local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v3    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v6    # "intercept":Z
    .end local v8    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v11    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .end local v16    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v17    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_15
    if-eqz v10, :cond_18

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_18

    .line 608
    sget-boolean v19, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v19, :cond_16

    if-eqz v12, :cond_16

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_16

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 609
    :cond_16
    sget-boolean v19, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v19, :cond_17

    if-nez v18, :cond_17

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 612
    :cond_17
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->putAllToStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Map;)Z

    .line 615
    :cond_18
    if-eqz v12, :cond_1b

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1b

    .line 616
    sget-boolean v19, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v19, :cond_19

    if-eqz v10, :cond_19

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_19

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 617
    :cond_19
    sget-boolean v19, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v19, :cond_1a

    if-nez v18, :cond_1a

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 620
    :cond_1a
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->removeAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;)Z

    .line 625
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v10    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    .end local v12    # "rmvCol":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v13    # "skipNear":Z
    .end local v18    # "writeStore":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    :cond_1b
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->txEnd(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 648
    :cond_1c
    return-void
.end method

.method protected checkValid()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3094
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isRollbackOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3095
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->timedOut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3096
    new-instance v1, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache transaction timed out: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3098
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v0

    .line 3100
    .local v0, "state":Lorg/apache/ignite/transactions/TransactionState;
    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->ROLLING_BACK:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->ROLLED_BACK:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v0, v1, :cond_2

    .line 3101
    :cond_1
    new-instance v1, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache transaction is marked as rollback-only (will be rolled back automatically): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3104
    :cond_2
    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v0, v1, :cond_3

    .line 3105
    new-instance v1, Lorg/apache/ignite/internal/transactions/IgniteTxHeuristicCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache transaction is in unknown state (remote transactions will be invalidated): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/transactions/IgniteTxHeuristicCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3108
    :cond_3
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache transaction marked as rollback-only: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3111
    .end local v0    # "state":Lorg/apache/ignite/transactions/TransactionState;
    :cond_4
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->remainingTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3112
    new-instance v1, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache transaction timed out (was rolled back automatically): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3114
    :cond_5
    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 440
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    .line 445
    return-void

    .line 443
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    throw v0
.end method

.method protected commitAfterLock()Z
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->dht()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->colocated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public commitError()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitErr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public commitError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitErr:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public committedVersions()Ljava/util/Collection;
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
    .line 1058
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->committedVers:Ljava/util/Collection;

    return-object v0
.end method

.method public completedBase()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->completedBase:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public completedVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p1, "completedBase"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1042
    .local p2, "committedVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p3, "rolledbackVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->completedBase:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 1043
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->committedVers:Ljava/util/Collection;

    .line 1044
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->rolledbackVers:Ljava/util/Collection;

    .line 1045
    return-void
.end method

.method public empty()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected enlistWrite(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljavax/cache/expiry/ExpiryPolicy;ZLjava/util/Map;Ljava/util/Map;[Ljava/lang/Object;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 52
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p3, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "implicit"    # Z
    .param p6    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8, "invokeArgs"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9, "retval"    # Z
    .param p10, "lockOnly"    # Z
    .param p11, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p12, "ret"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .param p14    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/util/Collection",
            "<*>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            "Z",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/util/Map",
            "<*",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/Object;",
            "ZZ[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1984
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p6, "lookup":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local p7, "invokeMap":Ljava/util/Map;, "Ljava/util/Map<*Ljavax/cache/processor/EntryProcessor<TK;TV;Ljava/lang/Object;>;>;"
    .local p13, "enlisted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p14, "drPutMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    .local p15, "drRmvMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-eqz p3, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1985
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1988
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->addActiveCache(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1994
    const/16 v47, 0x0

    .line 1996
    .local v47, "skipped":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    if-nez p6, :cond_4

    if-nez p7, :cond_4

    const/16 v46, 0x1

    .line 1998
    .local v46, "rmv":Z
    :goto_0
    const/4 v9, 0x0

    .line 2002
    .local v9, "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    if-eqz p7, :cond_2

    .line 2003
    const/4 v5, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->transform:Z

    .line 2005
    :cond_2
    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLockSanityCheck(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Iterable;)V

    .line 2007
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .local v39, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    .line 2008
    .local v42, "key":Ljava/lang/Object;
    if-nez v42, :cond_5

    .line 2009
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 2011
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Null key."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2267
    .end local v39    # "i$":Ljava/util/Iterator;
    .end local v42    # "key":Ljava/lang/Object;
    :catch_0
    move-exception v35

    .line 2268
    .local v35, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_2
    new-instance v5, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    .line 2309
    .end local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v35    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v46    # "rmv":Z
    .end local v47    # "skipped":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :goto_3
    return-object v5

    .line 1990
    :catch_1
    move-exception v35

    .line 1991
    .restart local v35    # "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v5, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1996
    .end local v35    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v47    # "skipped":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_4
    const/16 v46, 0x0

    goto :goto_0

    .line 2014
    .restart local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v39    # "i$":Ljava/util/Iterator;
    .restart local v42    # "key":Ljava/lang/Object;
    .restart local v46    # "rmv":Z
    :cond_5
    if-nez v46, :cond_6

    if-nez p6, :cond_7

    :cond_6
    const/16 v51, 0x0

    .line 2015
    .local v51, "val":Ljava/lang/Object;
    :goto_4
    if-nez p7, :cond_8

    const/4 v14, 0x0

    .line 2021
    .local v14, "entryProcessor":Ljavax/cache/processor/EntryProcessor;
    :goto_5
    if-eqz p14, :cond_a

    .line 2022
    :try_start_2
    move-object/from16 v0, p14

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;

    .line 2024
    .local v41, "info":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_9

    if-nez v41, :cond_9

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2014
    .end local v14    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;
    .end local v41    # "info":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;
    .end local v51    # "val":Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p6

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    goto :goto_4

    .line 2015
    .restart local v51    # "val":Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p7

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/cache/processor/EntryProcessor;

    move-object v14, v5

    goto :goto_5

    .line 2026
    .restart local v14    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;
    .restart local v41    # "info":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;
    :cond_9
    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v32

    .line 2027
    .local v32, "drVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->ttl()J

    move-result-wide v36

    .line 2028
    .local v36, "drTtl":J
    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->expireTime()J

    move-result-wide v30

    .line 2043
    .end local v41    # "info":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;
    .local v30, "drExpireTime":J
    :goto_6
    if-nez v46, :cond_d

    if-nez v51, :cond_d

    if-nez v14, :cond_d

    .line 2044
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 2046
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Null value."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2030
    .end local v30    # "drExpireTime":J
    .end local v32    # "drVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v36    # "drTtl":J
    :cond_a
    if-eqz p15, :cond_c

    .line 2031
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_b

    move-object/from16 v0, p15

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_b

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2033
    :cond_b
    move-object/from16 v0, p15

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 2034
    .restart local v32    # "drVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const-wide/16 v36, -0x1

    .line 2035
    .restart local v36    # "drTtl":J
    const-wide/16 v30, -0x1

    .restart local v30    # "drExpireTime":J
    goto :goto_6

    .line 2038
    .end local v30    # "drExpireTime":J
    .end local v32    # "drVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v36    # "drTtl":J
    :cond_c
    const/16 v32, 0x0

    .line 2039
    .restart local v32    # "drVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const-wide/16 v36, -0x1

    .line 2040
    .restart local v36    # "drTtl":J
    const-wide/16 v30, -0x1

    .restart local v30    # "drExpireTime":J
    goto :goto_6

    .line 2049
    :cond_d
    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v33

    .line 2051
    .local v33, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v49

    .line 2053
    .local v49, "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v48

    .line 2056
    .local v48, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-nez v48, :cond_2c

    move-object/from16 v44, v9

    .line 2060
    .end local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local v44, "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :goto_7
    if-eqz p3, :cond_f

    .line 2061
    move-object/from16 v4, p3

    .line 2063
    .local v4, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    const/16 p3, 0x0

    .line 2073
    :goto_8
    if-nez p5, :cond_10

    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isCacheSanityCheckEnabled()Z

    move-result v5

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->threadId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v4, v6, v7, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedByThread(JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2075
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot access key within transaction if lock is externally held [key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", xidVer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", threadId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->threadId:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", locNodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2209
    :catch_2
    move-exception v40

    move-object/from16 v9, v44

    .line 2210
    .end local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local v40, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :goto_9
    :try_start_4
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2211
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got removed entry in transaction putAll0 method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_e
    move-object/from16 v44, v9

    .line 2213
    .end local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    goto/16 :goto_7

    .line 2066
    .end local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v40    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_f
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    .line 2068
    .restart local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_8

    .line 2267
    .end local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_3
    move-exception v35

    move-object/from16 v9, v44

    .end local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    goto/16 :goto_2

    .line 2080
    .end local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_10
    const/16 v17, 0x0

    .line 2082
    .local v17, "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_start_6
    invoke-static/range {p11 .. p11}, Lorg/apache/ignite/internal/util/typedef/F;->isEmptyOrNulls([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    invoke-static/range {p11 .. p11}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v5

    if-nez v5, :cond_15

    const/16 v45, 0x1

    .line 2084
    .local v45, "readThrough":Z
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->optimistic()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z
    :try_end_6
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v5

    if-nez v5, :cond_17

    .line 2087
    const/4 v6, 0x0

    if-eqz v45, :cond_16

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->loadPreviousValue()Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v7, 0x1

    :goto_b
    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->resolveTaskName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v5, p0

    move/from16 v9, p9

    move/from16 v10, p9

    move/from16 v11, p9

    invoke-interface/range {v4 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_end_7
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v17

    .line 2114
    :cond_11
    :goto_c
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-direct {v0, v4, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->filter(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 2115
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->skip(Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/util/Set;

    move-result-object v47

    .line 2117
    const/4 v5, 0x0

    move-object/from16 v0, p12

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->set(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .line 2119
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v5

    if-nez v5, :cond_12

    if-eqz v17, :cond_12

    .line 2122
    sget-object v16, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->READ:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v22

    const/16 v23, 0x0

    const-wide/16 v24, -0x1

    const-wide/16 v26, -0x1

    const/16 v28, 0x0

    move-object/from16 v15, p0

    move-object/from16 v20, v4

    invoke-virtual/range {v15 .. v28}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->addEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljavax/cache/expiry/ExpiryPolicy;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;ZJJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v48

    .line 2134
    invoke-virtual/range {v48 .. v48}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->markValid()V

    .line 2137
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v5

    if-nez v5, :cond_13

    if-nez v17, :cond_14

    .line 2138
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    :cond_14
    move-object/from16 v9, v44

    .line 2140
    .end local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    goto/16 :goto_1

    .line 2082
    .end local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v45    # "readThrough":Z
    .restart local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_15
    const/16 v45, 0x0

    goto/16 :goto_a

    .line 2087
    .restart local v45    # "readThrough":Z
    :cond_16
    const/4 v7, 0x0

    goto :goto_b

    .line 2100
    :catch_4
    move-exception v35

    .line 2101
    .local v35, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 2103
    throw v35

    .line 2105
    .end local v35    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_5
    move-exception v35

    .line 2106
    .local v35, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    invoke-virtual/range {v35 .. v35}, Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;->printStackTrace()V

    .line 2108
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_11

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Empty filter failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 2112
    .end local v35    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :cond_17
    if-eqz p9, :cond_18

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->rawGetOrUnmarshal(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v17

    :goto_d
    goto/16 :goto_c

    :cond_18
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->rawGet()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v17

    goto :goto_d

    .line 2143
    :cond_19
    if-eqz p10, :cond_1e

    sget-object v20, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 2146
    .local v20, "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :goto_e
    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v21

    const/16 v27, 0x1

    move-object/from16 v19, p0

    move-object/from16 v22, v14

    move-object/from16 v23, p8

    move-object/from16 v24, v4

    move-object/from16 v25, p4

    move-object/from16 v26, p11

    move-wide/from16 v28, v36

    invoke-virtual/range {v19 .. v32}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->addEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljavax/cache/expiry/ExpiryPolicy;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;ZJJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v48

    .line 2158
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 2159
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 2161
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v5

    if-eqz v5, :cond_1b

    if-nez p10, :cond_1b

    .line 2162
    const/4 v5, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->groupLockEntry(Z)V

    .line 2164
    :cond_1b
    move-object/from16 v0, p13

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2166
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->pessimistic()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v5

    if-eqz v5, :cond_2a

    if-nez p10, :cond_2a

    .line 2167
    :cond_1d
    invoke-virtual/range {v48 .. v48}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->markValid()V

    .line 2169
    if-nez v17, :cond_27

    .line 2170
    if-eqz p9, :cond_22

    if-nez v45, :cond_22

    const/16 v43, 0x1

    .line 2172
    .local v43, "load":Z
    :goto_f
    if-eqz v43, :cond_23

    .line 2173
    if-nez v44, :cond_37

    .line 2174
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V
    :try_end_8
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_3

    .line 2176
    .end local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :goto_10
    :try_start_9
    move-object/from16 v0, v33

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1

    .line 2209
    :catch_6
    move-exception v40

    goto/16 :goto_9

    .line 2143
    .end local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v20    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v43    # "load":Z
    .restart local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_1e
    if-eqz v46, :cond_1f

    :try_start_a
    sget-object v20, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto :goto_e

    :cond_1f
    if-eqz v14, :cond_20

    sget-object v20, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto/16 :goto_e

    :cond_20
    if-eqz v17, :cond_21

    sget-object v20, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto/16 :goto_e

    :cond_21
    sget-object v20, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto/16 :goto_e

    .line 2170
    .restart local v20    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :cond_22
    const/16 v43, 0x0

    goto :goto_f

    .line 2179
    .restart local v43    # "load":Z
    :cond_23
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_24

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->transform:Z

    if-eqz v5, :cond_24

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2180
    :cond_24
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_25

    invoke-virtual/range {v48 .. v48}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v6, :cond_25

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2182
    :cond_25
    if-eqz p9, :cond_26

    .line 2183
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->set(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-object/from16 v9, v44

    .end local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    goto/16 :goto_1

    .line 2185
    .end local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_26
    const/4 v5, 0x1

    move-object/from16 v0, p12

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success(Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .end local v43    # "load":Z
    :goto_11
    move-object/from16 v9, v44

    .end local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    goto/16 :goto_1

    .line 2189
    .end local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_27
    if-eqz p9, :cond_28

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->transform:Z

    if-nez v5, :cond_28

    .line 2190
    const/4 v5, 0x1

    move-object/from16 v0, p12

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->set(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-object/from16 v9, v44

    .end local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    goto/16 :goto_1

    .line 2192
    .end local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_28
    invoke-virtual/range {v48 .. v48}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v6, :cond_29

    .line 2193
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v17

    move-object/from16 v3, p12

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->addInvokeResult(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V

    move-object/from16 v9, v44

    .end local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    goto/16 :goto_1

    .line 2195
    .end local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_29
    const/4 v5, 0x1

    move-object/from16 v0, p12

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success(Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-object/from16 v9, v44

    .end local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    goto/16 :goto_1

    .line 2201
    .end local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_2a
    if-eqz p9, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->transform:Z

    if-nez v5, :cond_2b

    .line 2202
    const/4 v5, 0x1

    move-object/from16 v0, p12

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->set(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-object/from16 v9, v44

    .end local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    goto/16 :goto_1

    .line 2204
    .end local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_2b
    const/4 v5, 0x1

    move-object/from16 v0, p12

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success(Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :try_end_a
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_11

    .line 2216
    .end local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v17    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v20    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v45    # "readThrough":Z
    .restart local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_2c
    if-nez v14, :cond_2d

    :try_start_b
    invoke-virtual/range {v48 .. v48}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v6, :cond_2d

    .line 2217
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to enlist write value for key (cannot have update value in transaction after transform closure is applied): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2220
    :cond_2d
    invoke-virtual/range {v48 .. v48}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    .line 2222
    .restart local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-virtual/range {v48 .. v48}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v50

    .line 2224
    .local v50, "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual/range {v48 .. v48}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v6, :cond_2e

    if-eqz v46, :cond_2e

    const/16 v34, 0x1

    .line 2226
    .local v34, "del":Z
    :goto_12
    if-nez v34, :cond_30

    .line 2227
    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-direct {v0, v4, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->filter(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 2228
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->skip(Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/util/Set;

    move-result-object v47

    .line 2230
    const/4 v5, 0x0

    move-object/from16 v0, p12

    move-object/from16 v1, p1

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->set(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    goto/16 :goto_1

    .line 2224
    .end local v34    # "del":Z
    :cond_2e
    const/16 v34, 0x0

    goto :goto_12

    .line 2235
    .restart local v34    # "del":Z
    :cond_2f
    if-eqz v46, :cond_31

    sget-object v20, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 2238
    .restart local v20    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :goto_13
    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v21

    const/16 v27, 0x1

    move-object/from16 v19, p0

    move-object/from16 v22, v14

    move-object/from16 v23, p8

    move-object/from16 v24, v4

    move-object/from16 v25, p4

    move-object/from16 v26, p11

    move-wide/from16 v28, v36

    invoke-virtual/range {v19 .. v32}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->addEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljavax/cache/expiry/ExpiryPolicy;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;ZJJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v48

    .line 2250
    move-object/from16 v0, p13

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2252
    invoke-virtual/range {v48 .. v48}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v6, :cond_30

    .line 2253
    invoke-virtual/range {v48 .. v48}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, p12

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->addInvokeResult(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V

    .line 2256
    .end local v20    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->pessimistic()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2257
    invoke-virtual/range {v48 .. v48}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->markValid()V

    .line 2259
    if-eqz p9, :cond_34

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->transform:Z

    if-nez v5, :cond_34

    .line 2260
    const/4 v5, 0x1

    move-object/from16 v0, p12

    move-object/from16 v1, p1

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->set(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    goto/16 :goto_1

    .line 2235
    :cond_31
    if-eqz v14, :cond_32

    sget-object v20, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto :goto_13

    :cond_32
    if-eqz v50, :cond_33

    sget-object v20, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto :goto_13

    :cond_33
    sget-object v20, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto :goto_13

    .line 2262
    :cond_34
    const/4 v5, 0x1

    move-object/from16 v0, p12

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success(Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :try_end_b
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_1

    .line 2271
    .end local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v14    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;
    .end local v30    # "drExpireTime":J
    .end local v32    # "drVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v33    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v34    # "del":Z
    .end local v36    # "drTtl":J
    .end local v42    # "key":Ljava/lang/Object;
    .end local v48    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v49    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .end local v50    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v51    # "val":Ljava/lang/Object;
    :cond_35
    if-eqz v9, :cond_36

    .line 2272
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/CacheConfiguration;->isLoadPreviousValue()Z

    move-result v7

    const/4 v8, 0x1

    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->deserializePortables(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v10

    const/4 v11, 0x0

    new-instance v12, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p12

    invoke-direct {v12, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$8;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->loadMissing(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZZLjava/util/Collection;ZZLorg/apache/ignite/lang/IgniteBiInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v38

    .line 2297
    .local v38, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    new-instance v5, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v6, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$9;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$9;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)V

    move-object/from16 v0, v38

    invoke-direct {v5, v6, v0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto/16 :goto_3

    .line 2309
    .end local v38    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    :cond_36
    new-instance v5, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v47

    invoke-direct {v5, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v14    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;
    .restart local v17    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v20    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .restart local v30    # "drExpireTime":J
    .restart local v32    # "drVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v33    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v36    # "drTtl":J
    .restart local v42    # "key":Ljava/lang/Object;
    .restart local v43    # "load":Z
    .restart local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v45    # "readThrough":Z
    .restart local v48    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v49    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .restart local v51    # "val":Ljava/lang/Object;
    :cond_37
    move-object/from16 v9, v44

    .end local v44    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v9    # "missedForLoad":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    goto/16 :goto_10
.end method

.method public entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    goto :goto_0
.end method

.method protected entryEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 2
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    .line 470
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    return-object v0
.end method

.method protected entryEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 2
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 482
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    return-object v0
.end method

.method public entryExpireTime(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)J
    .locals 10
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    const-wide/16 v6, 0x0

    .line 3334
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3336
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v0

    .line 3338
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz v0, :cond_2

    .line 3339
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl()J

    move-result-wide v4

    .line 3341
    .local v4, "ttl":J
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const-wide/16 v8, -0x1

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3343
    :cond_1
    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 3344
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v8

    add-long v2, v8, v4

    .line 3346
    .local v2, "expireTime":J
    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    .line 3351
    .end local v2    # "expireTime":J
    .end local v4    # "ttl":J
    :goto_0
    return-wide v2

    :cond_2
    move-wide v2, v6

    goto :goto_0
.end method

.method entryExpiry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljavax/cache/expiry/ExpiryPolicy;)V
    .locals 4
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .param p2, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3284
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3286
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v0

    .line 3288
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz v0, :cond_1

    .line 3289
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiry(Ljavax/cache/expiry/ExpiryPolicy;)V

    .line 3290
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime(J)V

    .line 3292
    :cond_1
    return-void
.end method

.method public entryTtl(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)J
    .locals 4
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    .line 3322
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3324
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v0

    .line 3326
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method entryTtlDr(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;JJ)Z
    .locals 4
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .param p2, "ttl"    # J
    .param p4, "expireTime"    # J

    .prologue
    .line 3301
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3302
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3304
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v0

    .line 3306
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz v0, :cond_2

    .line 3307
    invoke-virtual {v0, p2, p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V

    .line 3309
    invoke-virtual {v0, p4, p5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime(J)V

    .line 3311
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiry(Ljavax/cache/expiry/ExpiryPolicy;)V

    .line 3314
    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public eventNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 41
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p3, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "deserializePortable"    # Z
    .param p5, "skipVals"    # Z
    .param p6, "keepCacheObjects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "ZZZ)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1600
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1601
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 1870
    :goto_0
    return-object v3

    .line 1603
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->init()Z

    .line 1605
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v10

    .line 1607
    .local v10, "keysCnt":I
    const/4 v3, 0x1

    if-ne v10, v3, :cond_1

    const/16 v40, 0x1

    .line 1610
    .local v40, "single":Z
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->checkValid()V

    .line 1612
    new-instance v8, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v8, v10}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    .line 1614
    .local v8, "retMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v9, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->pessimistic()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v10

    :goto_2
    invoke-direct {v9, v3}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    .line 1616
    .local v9, "missed":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v39

    .line 1618
    .local v39, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    if-eqz v39, :cond_3

    invoke-virtual/range {v39 .. v39}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v7

    .local v7, "expiryPlc":Ljavax/cache/expiry/ExpiryPolicy;
    :goto_3
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    .line 1620
    invoke-direct/range {v3 .. v13}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->enlistRead(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljavax/cache/expiry/ExpiryPolicy;Ljava/util/Map;Ljava/util/Map;IZZZ)Ljava/util/Collection;

    move-result-object v12

    .line 1631
    .local v12, "lockKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    if-eqz v40, :cond_4

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1632
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v3, v8}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1867
    .end local v7    # "expiryPlc":Ljavax/cache/expiry/ExpiryPolicy;
    .end local v8    # "retMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v9    # "missed":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .end local v12    # "lockKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v39    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :catch_0
    move-exception v32

    .line 1868
    .local v32, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 1870
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v32

    invoke-direct {v3, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1607
    .end local v32    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v40    # "single":Z
    :cond_1
    const/16 v40, 0x0

    goto :goto_1

    .line 1614
    .restart local v8    # "retMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .restart local v40    # "single":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 1618
    .restart local v9    # "missed":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .restart local v39    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 1635
    .restart local v7    # "expiryPlc":Ljavax/cache/expiry/ExpiryPolicy;
    .restart local v12    # "lockKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->pessimistic()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v3

    if-nez v3, :cond_9

    if-nez p5, :cond_9

    .line 1636
    if-nez v7, :cond_5

    .line 1637
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v7

    .line 1639
    :cond_5
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForAccess()Ljavax/cache/expiry/Duration;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v20

    .line 1641
    .local v20, "accessTtl":J
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->lockTimeout()J

    move-result-wide v13

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isInvalidate()Z

    move-result v19

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v22

    move-object/from16 v15, p0

    invoke-virtual/range {v11 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txLockAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZLorg/apache/ignite/transactions/TransactionIsolation;ZJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v35

    .line 1651
    .local v35, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    new-instance v22, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;

    move-object/from16 v23, p0

    move-object/from16 v24, v12

    move/from16 v25, p6

    move-object/from16 v26, p1

    move-object/from16 v27, v8

    move/from16 v28, p5

    move-object/from16 v29, v9

    move/from16 v30, p4

    invoke-direct/range {v22 .. v30}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$4;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/util/Collection;ZLorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;ZLjava/util/Map;Z)V

    .line 1756
    .local v22, "plc2":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2<Ljava/util/Map<TK;TV;>;>;"
    new-instance v34, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$5;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$5;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/util/Map;)V

    .line 1764
    .local v34, "finClos":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure<Ljava/util/Map<TK;TV;>;>;"
    invoke-interface/range {v35 .. v35}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_8

    .line 1766
    :try_start_2
    invoke-interface/range {v35 .. v35}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2;->apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v36

    .line 1768
    .local v36, "fut1":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;TV;>;>;"
    invoke-interface/range {v36 .. v36}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-interface/range {v36 .. v36}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;->apply(Ljava/lang/Object;Ljava/lang/Exception;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1772
    .end local v36    # "fut1":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;TV;>;>;"
    :catch_1
    move-exception v32

    .line 1773
    .local v32, "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    :try_start_3
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/util/lang/GridClosureException;->unwrap()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1639
    .end local v20    # "accessTtl":J
    .end local v22    # "plc2":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2<Ljava/util/Map<TK;TV;>;>;"
    .end local v32    # "e":Lorg/apache/ignite/internal/util/lang/GridClosureException;
    .end local v34    # "finClos":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure<Ljava/util/Map<TK;TV;>;>;"
    .end local v35    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    :cond_6
    const-wide/16 v20, -0x1

    goto :goto_4

    .line 1768
    .restart local v20    # "accessTtl":J
    .restart local v22    # "plc2":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2<Ljava/util/Map<TK;TV;>;>;"
    .restart local v34    # "finClos":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure<Ljava/util/Map<TK;TV;>;>;"
    .restart local v35    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .restart local v36    # "fut1":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;TV;>;>;"
    :cond_7
    :try_start_4
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-direct {v3, v0, v1}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_4
    .catch Lorg/apache/ignite/internal/util/lang/GridClosureException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1775
    .end local v36    # "fut1":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;TV;>;>;"
    :catch_2
    move-exception v32

    .line 1777
    .local v32, "e":Lorg/apache/ignite/IgniteCheckedException;
    const/4 v3, 0x0

    :try_start_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2;->apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v3

    goto/16 :goto_0

    .line 1779
    :catch_3
    move-exception v33

    .line 1780
    .local v33, "e1":Ljava/lang/Exception;
    :try_start_6
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v33

    invoke-direct {v3, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1785
    .end local v32    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v33    # "e1":Ljava/lang/Exception;
    :cond_8
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    move-object/from16 v2, v34

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    goto/16 :goto_0

    .line 1792
    .end local v20    # "accessTtl":J
    .end local v22    # "plc2":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2<Ljava/util/Map<TK;TV;>;>;"
    .end local v34    # "finClos":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure<Ljava/util/Map<TK;TV;>;>;"
    .end local v35    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    :cond_9
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->optimistic()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v3

    if-nez v3, :cond_a

    if-nez p5, :cond_a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1794
    :cond_a
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1796
    .local v27, "redos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1797
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1798
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .local v37, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_b
    :goto_5
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1799
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1801
    .local v31, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    if-eqz p6, :cond_c

    move-object/from16 v38, v31

    .line 1804
    .local v38, "keyVal":Ljava/lang/Object;, "TK;"
    :goto_6
    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1805
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 1801
    .end local v38    # "keyVal":Ljava/lang/Object;, "TK;"
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v3, v4}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v38

    goto :goto_6

    .line 1808
    .end local v31    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v37    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_d
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1809
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v3, v8}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1811
    :cond_e
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move/from16 v28, p4

    move/from16 v29, p5

    move/from16 v30, p6

    invoke-direct/range {v23 .. v30}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->checkMissed(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;ZZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v4

    new-instance v25, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$6;

    move-object/from16 v26, p0

    move-object/from16 v28, p1

    move/from16 v29, p4

    move/from16 v30, p5

    invoke-direct/range {v25 .. v30}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$6;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZZ)V

    new-instance v13, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v8

    move/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p4

    invoke-direct/range {v13 .. v19}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;ZZZ)V

    move-object/from16 v0, v25

    invoke-direct {v3, v4, v0, v13}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    goto/16 :goto_0

    .line 1864
    :cond_f
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v3, v8}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

.method public groupLockAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 19
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/util/Collection",
            "<TK;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2987
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2990
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->init()Z

    .line 2992
    new-instance v13, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->localResult()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v13, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(ZZ)V

    .line 2994
    .local v13, "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2996
    .local v14, "enlisted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->enlistWrite(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljavax/cache/expiry/ExpiryPolicy;ZLjava/util/Map;Ljava/util/Map;[Ljava/lang/Object;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Set;

    .line 3015
    .local v18, "skipped":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3030
    .end local v13    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .end local v14    # "enlisted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v18    # "skipped":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :catch_0
    move-exception v17

    .line 3031
    .local v17, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 3033
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v17

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    .end local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_0
    return-object v1

    .line 3018
    .restart local v13    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v14    # "enlisted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v18    # "skipped":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->pessimistic()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->lockTimeout()J

    move-result-wide v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isInvalidate()Z

    move-result v9

    const-wide/16 v10, -0x1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v12

    move-object v2, v14

    move-object/from16 v5, p0

    invoke-virtual/range {v1 .. v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txLockAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZLorg/apache/ignite/transactions/TransactionIsolation;ZJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public hasWriteKey(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public implicitSingleResult()Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicitRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    return-object v0
.end method

.method public implicitSingleResult(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V
    .locals 1
    .param p1, "ret"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .prologue
    .line 295
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicitRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->mergeEntryProcessResults(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicitRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    goto :goto_0
.end method

.method public init()Z
    .locals 3

    .prologue
    .line 3043
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 3044
    new-instance v1, Ljava/util/LinkedHashMap;

    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txSize:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txSize:I

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    .line 3046
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->reads()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;-><init>(Ljava/util/Map;Lorg/apache/ignite/lang/IgnitePredicate;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    .line 3047
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->writes()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;-><init>(Ljava/util/Map;Lorg/apache/ignite/lang/IgnitePredicate;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    .line 3049
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onStarted(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    move-result v0

    .line 3052
    :goto_1
    return v0

    .line 3044
    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    .line 3052
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected initResult()V
    .locals 3

    .prologue
    .line 160
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->localResult()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(ZZ)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicitRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .line 161
    return-void
.end method

.method public varargs invokeAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "invokeArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor<TK;TV;Ljava/lang/Object;>;>;"
    const/4 v2, 0x0

    .line 1916
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->putAllAsync0(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;Ljava/util/Map;ZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMissing(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZZLjava/util/Collection;ZZLorg/apache/ignite/lang/IgniteBiInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 11
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "readThrough"    # Z
    .param p3, "async"    # Z
    .param p5, "deserializePortable"    # Z
    .param p6, "skipVals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "ZZ",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;ZZ",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    .local p4, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p7, "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;>;"
    if-nez p3, :cond_3

    .line 365
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->readThrough()Z

    move-result v1

    if-nez v1, :cond_2

    .line 366
    :cond_0
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 367
    .local v9, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-interface {v0, v9, v1}, Lorg/apache/ignite/lang/IgniteBiInClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :catch_0
    move-exception v7

    .line 376
    .local v7, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v1, v7}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    .line 380
    .end local v7    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_1
    return-object v1

    .line 369
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 372
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, p0, p4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 380
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v10

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;

    move-object v2, p0

    move v3, p2

    move-object v4, p1

    move-object v5, p4

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$1;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;ZLorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    goto :goto_1
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
    .line 180
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->nodeId:Ljava/util/UUID;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public minVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->minVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public needReturnValue(Z)V
    .locals 0
    .param p1, "needRetVal"    # Z

    .prologue
    .line 312
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->needRetVal:Z

    .line 313
    return-void
.end method

.method public needReturnValue()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->needRetVal:Z

    return v0
.end method

.method public onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 1
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "owner"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 200
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 201
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public originatingNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public partitionLock()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->partLock:Z

    return v0
.end method

.method public peek(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLorg/apache/ignite/internal/processors/cache/KeyCacheObject;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    .locals 4
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    if-nez v1, :cond_1

    move-object v0, v2

    .line 340
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :goto_0
    if-eqz v0, :cond_0

    .line 344
    invoke-static {p4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    invoke-static {v1, p4}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 345
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->hasPreviousValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->previousValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->failed(ZLorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 350
    :cond_0
    :goto_2
    return-object v2

    .line 338
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    invoke-virtual {p1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-object v0, v1

    goto :goto_0

    .restart local v0    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_2
    move-object v1, v2

    .line 345
    goto :goto_1

    .line 347
    :cond_3
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->hasPreviousValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->previousValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v2

    goto :goto_2
.end method

.method protected postLockWrite(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Iterable;Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;ZZZJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/util/Set;
    .locals 28
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p4, "ret"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .param p5, "rmv"    # Z
    .param p6, "retval"    # Z
    .param p7, "read"    # Z
    .param p8, "accessTtl"    # J
    .param p10, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p11, "computeInvoke"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            "ZZZJ[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2341
    .local p2, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p3, "failed":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 2342
    .local v23, "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v25

    .line 2344
    .local v25, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-nez v25, :cond_2

    .line 2345
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transaction entry is null (most likely collection of keys passed into cache operation was changed before operation completed) [missingKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2449
    .local v4, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_0
    move-exception v21

    .line 2450
    .local v21, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2451
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got removed entry in putAllAsync method (will retry): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2453
    :cond_1
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 2349
    .end local v4    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v21    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_2
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    .line 2353
    .restart local v4    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->threadId:J

    invoke-interface {v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedByThread(J)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isRollbackOnly()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transaction lock is not acquired [entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", nodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", threadId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->threadId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 2356
    :cond_3
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2357
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Post lock write entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2359
    :cond_4
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->previousValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v27

    .line 2360
    .local v27, "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->hasPreviousValue()Z

    move-result v19

    .line 2362
    .local v19, "hasPrevVal":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->onePhaseCommit()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2363
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object p10

    .line 2366
    :cond_5
    invoke-static/range {p10 .. p10}, Lorg/apache/ignite/internal/util/typedef/F;->isEmptyOrNulls([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static/range {p10 .. p10}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2367
    const/16 p6, 0x1

    .line 2369
    :cond_6
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v6, :cond_f

    const/16 v22, 0x1

    .line 2371
    .local v22, "invoke":Z
    :goto_1
    if-nez p6, :cond_7

    if-eqz v22, :cond_a

    .line 2372
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_13

    .line 2374
    if-nez v19, :cond_9

    .line 2375
    const/4 v6, 0x1

    if-nez v22, :cond_8

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->loadPreviousValue()Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_8
    const/4 v7, 0x1

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v22, :cond_11

    const/4 v10, 0x1

    :goto_3
    if-nez v22, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->dht()Z

    move-result v5

    if-nez v5, :cond_12

    const/4 v11, 0x1

    :goto_4
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->resolveTaskName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v5, p0

    invoke-interface/range {v4 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v27

    .line 2399
    :cond_9
    :goto_5
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v6, :cond_14

    .line 2400
    if-eqz p11, :cond_a

    .line 2401
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->addInvokeResult(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V

    .line 2407
    :cond_a
    :goto_6
    invoke-static/range {p10 .. p10}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    invoke-virtual {v0, v4, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_b
    const/16 v24, 0x1

    .line 2411
    .local v24, "pass":Z
    :goto_7
    if-eqz v24, :cond_17

    if-nez p6, :cond_16

    if-eqz p5, :cond_c

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->hasValue()Z

    move-result v5

    if-nez v5, :cond_c

    if-eqz v27, :cond_17

    :cond_c
    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success(Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .line 2413
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->onePhaseCommit()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2414
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filtersPassed(Z)V

    .line 2416
    :cond_d
    move/from16 v26, p7

    .line 2418
    .local v26, "updateTtl":Z
    if-eqz v24, :cond_18

    .line 2419
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->markValid()V

    .line 2421
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2422
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Filter passed in post lock for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2435
    :cond_e
    :goto_9
    if-eqz v26, :cond_0

    .line 2436
    if-nez p7, :cond_1a

    .line 2437
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiryForTxEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v18

    .line 2439
    .local v18, "expiryPlc":Ljavax/cache/expiry/ExpiryPolicy;
    if-eqz v18, :cond_0

    .line 2440
    invoke-interface/range {v18 .. v18}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForAccess()Ljavax/cache/expiry/Duration;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V

    goto/16 :goto_0

    .line 2369
    .end local v18    # "expiryPlc":Ljavax/cache/expiry/ExpiryPolicy;
    .end local v22    # "invoke":Z
    .end local v24    # "pass":Z
    .end local v26    # "updateTtl":Z
    :cond_f
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 2375
    .restart local v22    # "invoke":Z
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 2388
    :catch_1
    move-exception v17

    .line 2389
    .local v17, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;->printStackTrace()V

    .line 2391
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_9

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Empty filter failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 2395
    .end local v17    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :cond_13
    if-nez v19, :cond_9

    .line 2396
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->rawGetOrUnmarshal(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v27

    goto/16 :goto_5

    .line 2404
    :cond_14
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->value(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    goto/16 :goto_6

    .line 2407
    :cond_15
    const/16 v24, 0x0

    goto/16 :goto_7

    .line 2411
    .restart local v24    # "pass":Z
    :cond_16
    if-eqz p5, :cond_c

    if-nez v27, :cond_c

    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 2425
    .restart local v26    # "updateTtl":Z
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->skip(Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/util/Set;

    move-result-object p3

    .line 2428
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->previousOperation()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->value()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->setAndMarkValid(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 2429
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 2430
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filtersSet(Z)V

    .line 2432
    move-object/from16 v0, p1

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->putIfAbsentFilter([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v5

    if-nez v5, :cond_19

    const/16 v26, 0x1

    :goto_a
    goto/16 :goto_9

    :cond_19
    const/16 v26, 0x0

    goto :goto_a

    .line 2443
    :cond_1a
    move-object/from16 v0, v25

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2458
    .end local v4    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v19    # "hasPrevVal":Z
    .end local v22    # "invoke":Z
    .end local v23    # "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v24    # "pass":Z
    .end local v25    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v26    # "updateTtl":Z
    .end local v27    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_1b
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2459
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entries that failed after lock filter check: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2461
    :cond_1c
    return-object p3
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->prepareAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 450
    return-void
.end method

.method public putAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;ZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p3, "retval"    # Z
    .param p4, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "ttl"    # J
    .param p7, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/util/Map",
            "<+TK;+TV;>;Z",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1884
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->putAllAsync0(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;Ljava/util/Map;ZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public putAllDrAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p2, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    const/4 v2, 0x0

    .line 1899
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->putAllAsync0(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;Ljava/util/Map;ZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

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
    .line 264
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
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
    .line 249
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    goto :goto_0
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
    .line 227
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public removeAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p3, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "retval"    # Z
    .param p5, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/util/Collection",
            "<+TK;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Z[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2724
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->removeAllAsync0(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeAllDrAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p2, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    const/4 v2, 0x0

    .line 1931
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->removeAllAsync0(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removed(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z
    .locals 4
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v1

    .line 242
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 244
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public rolledbackVersions()Ljava/util/Collection;
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
    .line 1065
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->rolledbackVers:Ljava/util/Collection;

    return-object v0
.end method

.method public seal()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->seal()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->seal()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    .line 284
    :cond_1
    return-void
.end method

.method public sendTransformedValues(Z)V
    .locals 0
    .param p1, "snd"    # Z

    .prologue
    .line 320
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->sndTransformedVals:Z

    .line 321
    return-void
.end method

.method public tmCommit()V
    .locals 4

    .prologue
    .line 1021
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->onePhaseCommit()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1023
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->doneFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1025
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->commitTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1027
    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->COMMITTED:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    .line 1029
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->needsCompletedVersions()Z

    move-result v0

    .line 1031
    .local v0, "needsCompletedVersions":Z
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->completedBase:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1032
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->committedVers:Ljava/util/Collection;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1033
    :cond_2
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->rolledbackVers:Ljava/util/Collection;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1035
    .end local v0    # "needsCompletedVersions":Z
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 3275
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    const-string v2, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "size"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    goto :goto_0
.end method

.method protected updateExplicitVersion(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    .locals 6
    .param p1, "txEntry"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 3255
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3258
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 3260
    .local v0, "explicitCand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v0, :cond_0

    .line 3261
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    .line 3263
    .local v1, "explicitVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->threadId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->tx()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3264
    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 3266
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->minVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->isLess(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3267
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->minVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 3271
    .end local v0    # "explicitCand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v1    # "explicitVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_0
    return-void
.end method

.method public userCommit()V
    .locals 64
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 653
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v59

    .line 655
    .local v59, "state":Lorg/apache/ignite/transactions/TransactionState;
    sget-object v4, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    move-object/from16 v0, v59

    if-eq v0, v4, :cond_1

    .line 656
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->timedOut()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 657
    new-instance v4, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transaction timed out: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 659
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 661
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid transaction state for commit [state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v59

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", tx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 664
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->checkValid()V

    .line 666
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->near()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    :goto_0
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v48

    .line 672
    .local v48, "empty":Z
    if-eqz v48, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->colocated()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 673
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->addCommittedTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    .line 675
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 676
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeSet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->addGroupTxMapping(Ljava/util/Collection;)V

    .line 678
    :cond_4
    if-nez v48, :cond_33

    .line 679
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->batchStoreCommit(Ljava/lang/Iterable;)V

    .line 682
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txContext(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 684
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v20

    .line 689
    .local v20, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->near()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->allEntries()Ljava/util/Collection;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .local v53, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 690
    .local v6, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v41

    .line 692
    .local v41, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDrEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v45, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_PRIMARY:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    .line 694
    .local v45, "drType":Lorg/apache/ignite/internal/processors/dr/GridDrType;
    :goto_3
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->nodeId()Ljava/util/UUID;

    move-result-object v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->nodeId:Ljava/util/UUID;

    move-object/from16 v57, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    .local v57, "nodeId":Ljava/util/UUID;
    :goto_4
    :try_start_1
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v9

    .line 703
    .local v9, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->evictNearEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Z)Z

    move-result v4

    if-nez v4, :cond_23

    .line 704
    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->receiveEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 705
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v9, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 930
    .end local v9    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_0
    move-exception v54

    .line 931
    .local v54, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_2
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 932
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got removed entry during transaction commit (will retry): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 934
    :cond_6
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 938
    .end local v54    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catch_1
    move-exception v50

    .line 941
    .local v50, "ex":Ljava/lang/Throwable;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->removeCommittedTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 943
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lorg/apache/ignite/internal/processors/cache/GridCacheIndexUpdateException;

    aput-object v11, v4, v10

    move-object/from16 v0, v50

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isMongoDataCache()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 944
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 945
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to update mongo document index (transaction entry will be ignored): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 949
    :cond_7
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    invoke-virtual {v6, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;)V

    .line 951
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 953
    throw v50
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 980
    .end local v6    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v20    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v41    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v45    # "drType":Lorg/apache/ignite/internal/processors/dr/GridDrType;
    .end local v50    # "ex":Ljava/lang/Throwable;
    .end local v53    # "i$":Ljava/util/Iterator;
    .end local v57    # "nodeId":Ljava/util/UUID;
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    throw v4

    .line 666
    .end local v48    # "empty":Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeMap()Ljava/util/Map;

    move-result-object v4

    goto/16 :goto_0

    .line 689
    .restart local v20    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .restart local v48    # "empty":Z
    :cond_9
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeEntries()Ljava/util/Collection;

    move-result-object v4

    goto/16 :goto_1

    .line 692
    .restart local v6    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v41    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .restart local v53    # "i$":Ljava/util/Iterator;
    :cond_a
    sget-object v45, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    goto/16 :goto_3

    .line 694
    .restart local v45    # "drType":Lorg/apache/ignite/internal/processors/dr/GridDrType;
    :cond_b
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->nodeId()Ljava/util/UUID;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v57

    goto/16 :goto_4

    .line 710
    .restart local v9    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v57    # "nodeId":Ljava/util/UUID;
    :cond_c
    :try_start_5
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v4

    if-nez v4, :cond_5

    .line 713
    const/16 v55, 0x0

    .line 715
    .local v55, "nearCached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    const/16 v19, 0x1

    .line 717
    .local v19, "metrics":Z
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v4, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->updateNearCache(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 718
    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v4

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v55

    .line 722
    :cond_d
    :goto_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isNearLocallyMapped(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Z)Z

    move-result v4

    if-nez v4, :cond_15

    const/16 v18, 0x1

    .line 724
    .local v18, "evt":Z
    :goto_6
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 725
    :cond_e
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 727
    :cond_f
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->applyTransformClosures(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Z)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v58

    .line 733
    .local v58, "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 734
    move-object v0, v9

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    move-object v4, v0

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->dhtVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->recordDhtVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 736
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v4

    sget-object v10, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v4, v10, :cond_10

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v4

    sget-object v10, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v4, v10, :cond_11

    :cond_10
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v4, v10, v12

    if-nez v4, :cond_11

    .line 738
    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiryForTxEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v52

    .line 740
    .local v52, "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    if-eqz v52, :cond_11

    .line 741
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->hasValue()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface/range {v52 .. v52}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForUpdate()Ljavax/cache/expiry/Duration;

    move-result-object v46

    .line 744
    .local v46, "duration":Ljavax/cache/expiry/Duration;
    :goto_7
    invoke-static/range {v46 .. v46}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V

    .line 749
    .end local v46    # "duration":Ljavax/cache/expiry/Duration;
    .end local v52    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_11
    invoke-virtual/range {v58 .. v58}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 750
    .local v5, "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    invoke-virtual/range {v58 .. v58}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 753
    .local v7, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    .line 756
    .local v8, "explicitVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_8
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v5, v4, :cond_12

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v4, :cond_13

    :cond_12
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v4, v10, v12

    if-nez v4, :cond_13

    .line 758
    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiryForTxEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v52

    .line 760
    .restart local v52    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    if-eqz v52, :cond_13

    .line 761
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->hasValue()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface/range {v52 .. v52}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForUpdate()Ljavax/cache/expiry/Duration;

    move-result-object v46

    .line 764
    .restart local v46    # "duration":Ljavax/cache/expiry/Duration;
    :goto_9
    invoke-static/range {v46 .. v46}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v62

    .line 766
    .local v62, "ttl":J
    move-wide/from16 v0, v62

    invoke-virtual {v6, v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V

    .line 768
    const-wide/16 v10, -0x2

    cmp-long v4, v62, v10

    if-nez v4, :cond_13

    .line 769
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 773
    .end local v46    # "duration":Ljavax/cache/expiry/Duration;
    .end local v52    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    .end local v62    # "ttl":J
    :cond_13
    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->conflictNeedResolve()Z

    move-result v43

    .line 775
    .local v43, "conflictNeedResolve":Z
    const/16 v42, 0x0

    .line 777
    .local v42, "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<**>;"
    if-eqz v43, :cond_1f

    move-object/from16 v4, p0

    .line 778
    invoke-virtual/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->conflictResolve(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v44

    .line 781
    .local v44, "conflictRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;>;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_19

    if-nez v44, :cond_19

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 719
    .end local v5    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v8    # "explicitVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v18    # "evt":Z
    .end local v42    # "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<**>;"
    .end local v43    # "conflictNeedResolve":Z
    .end local v44    # "conflictRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;>;"
    .end local v58    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_14
    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->locallyMapped()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 720
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 722
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 741
    .restart local v18    # "evt":Z
    .restart local v52    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    .restart local v58    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_16
    invoke-interface/range {v52 .. v52}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForCreation()Ljavax/cache/expiry/Duration;

    move-result-object v46

    goto/16 :goto_7

    .line 753
    .end local v52    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    .restart local v5    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .restart local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    goto :goto_8

    .line 761
    .restart local v8    # "explicitVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v52    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_18
    invoke-interface/range {v52 .. v52}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForCreation()Ljavax/cache/expiry/Duration;

    move-result-object v46

    goto :goto_9

    .line 783
    .end local v52    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    .restart local v42    # "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<**>;"
    .restart local v43    # "conflictNeedResolve":Z
    .restart local v44    # "conflictRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;>;"
    :cond_19
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v42

    .end local v42    # "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<**>;"
    check-cast v42, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;

    .line 785
    .restart local v42    # "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<**>;"
    invoke-virtual/range {v42 .. v42}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isUseOld()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 786
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 806
    .end local v44    # "conflictRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;>;"
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->sndTransformedVals:Z

    if-nez v4, :cond_1a

    if-eqz v43, :cond_21

    .line 807
    :cond_1a
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_20

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->sndTransformedVals:Z

    if-eqz v4, :cond_1b

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v4

    if-nez v4, :cond_20

    :cond_1b
    if-nez v43, :cond_20

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 787
    .restart local v44    # "conflictRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;>;"
    :cond_1c
    invoke-virtual/range {v42 .. v42}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isUseNew()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 788
    invoke-virtual/range {v42 .. v42}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->ttl()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V

    .line 789
    invoke-virtual/range {v42 .. v42}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->expireTime()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime(J)V

    goto :goto_a

    .line 792
    :cond_1d
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_1e

    invoke-virtual/range {v42 .. v42}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isMerge()Z

    move-result v4

    if-nez v4, :cond_1e

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 794
    :cond_1e
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    check-cast v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 795
    .restart local v5    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual/range {v42 .. v42}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->mergeValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v7

    .line 796
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    .line 798
    invoke-virtual/range {v42 .. v42}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->ttl()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V

    .line 799
    invoke-virtual/range {v42 .. v42}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->expireTime()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime(J)V

    goto :goto_a

    .line 804
    .end local v44    # "conflictRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;>;"
    :cond_1f
    const/4 v8, 0x0

    goto :goto_a

    .line 809
    :cond_20
    const/4 v4, 0x1

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v4, v10}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZ)V

    .line 810
    invoke-virtual {v6, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;)V

    .line 811
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors(Ljava/util/Collection;)V

    .line 812
    invoke-virtual {v6, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 815
    :cond_21
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v5, v4, :cond_22

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v4, :cond_26

    .line 816
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->eventNodeId()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->nodeId()Ljava/util/UUID;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl()J

    move-result-wide v16

    const/16 v21, 0x0

    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v4

    if-eqz v4, :cond_24

    sget-object v22, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    :goto_b
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime()J

    move-result-wide v23

    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isNear()Z

    move-result v4

    if-eqz v4, :cond_25

    const/16 v25, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->resolveTaskName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v10, p0

    move-object v13, v7

    invoke-interface/range {v9 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerSet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZJZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/dr/GridDrType;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;

    move-result-object v61

    .line 834
    .local v61, "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;
    if-eqz v55, :cond_23

    invoke-virtual/range {v61 .. v61}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;->success()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 835
    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->eventNodeId()Ljava/util/UUID;

    move-result-object v24

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl()J

    move-result-wide v29

    const/16 v31, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v34

    sget-object v35, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime()J

    move-result-wide v36

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v39

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->resolveTaskName()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v22, v55

    move-object/from16 v25, v57

    move-object/from16 v26, v7

    move/from16 v32, v19

    move-object/from16 v33, v20

    invoke-interface/range {v22 .. v40}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerSet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZJZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/dr/GridDrType;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;

    .line 923
    .end local v5    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v8    # "explicitVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v18    # "evt":Z
    .end local v19    # "metrics":Z
    .end local v42    # "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<**>;"
    .end local v43    # "conflictNeedResolve":Z
    .end local v55    # "nearCached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v58    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .end local v61    # "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;
    :cond_23
    :goto_d
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v4

    sget-object v10, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->READ:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v4, v10, :cond_5

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->groupLockEntry()Z

    move-result v4

    if-nez v4, :cond_5

    .line 924
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->checkCommitLocks(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto/16 :goto_2

    .restart local v5    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .restart local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v8    # "explicitVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v18    # "evt":Z
    .restart local v19    # "metrics":Z
    .restart local v42    # "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<**>;"
    .restart local v43    # "conflictNeedResolve":Z
    .restart local v55    # "nearCached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v58    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_24
    move-object/from16 v22, v45

    .line 816
    goto :goto_b

    :cond_25
    move-object/from16 v25, v8

    goto :goto_c

    .line 853
    :cond_26
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v4, :cond_29

    .line 854
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->eventNodeId()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->nodeId()Ljava/util/UUID;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v4

    if-eqz v4, :cond_27

    sget-object v22, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    :goto_e
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isNear()Z

    move-result v4

    if-eqz v4, :cond_28

    const/16 v23, 0x0

    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->resolveTaskName()Ljava/lang/String;

    move-result-object v25

    move-object v12, v9

    move-object/from16 v13, p0

    invoke-interface/range {v12 .. v25}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerRemove(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/UUID;Ljava/util/UUID;ZZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/dr/GridDrType;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;

    move-result-object v61

    .line 869
    .restart local v61    # "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;
    if-eqz v55, :cond_23

    invoke-virtual/range {v61 .. v61}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;->success()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 870
    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->eventNodeId()Ljava/util/UUID;

    move-result-object v23

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v30

    sget-object v31, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->resolveTaskName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v21, v55

    move-object/from16 v24, v57

    move/from16 v28, v19

    move-object/from16 v29, v20

    invoke-interface/range {v21 .. v34}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerRemove(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/UUID;Ljava/util/UUID;ZZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/dr/GridDrType;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;

    goto/16 :goto_d

    .end local v61    # "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;
    :cond_27
    move-object/from16 v22, v45

    .line 854
    goto :goto_e

    :cond_28
    move-object/from16 v23, v8

    goto :goto_f

    .line 885
    :cond_29
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->RELOAD:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v4, :cond_2a

    .line 886
    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerReload()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 888
    if-eqz v55, :cond_23

    .line 889
    invoke-interface/range {v55 .. v55}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerReload()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    goto/16 :goto_d

    .line 891
    :cond_2a
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->READ:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v4, :cond_2c

    .line 892
    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiryForTxEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v52

    .line 894
    .restart local v52    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    if-eqz v52, :cond_2b

    .line 895
    invoke-interface/range {v52 .. v52}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForAccess()Ljavax/cache/expiry/Duration;

    move-result-object v46

    .line 897
    .restart local v46    # "duration":Ljavax/cache/expiry/Duration;
    if-eqz v46, :cond_2b

    .line 898
    const/4 v4, 0x0

    invoke-static/range {v46 .. v46}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v10

    invoke-interface {v9, v4, v10, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->updateTtl(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;J)V

    .line 901
    .end local v46    # "duration":Ljavax/cache/expiry/Duration;
    :cond_2b
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 902
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring READ entry when committing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 906
    .end local v52    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_2c
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->groupLockEntry()Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->ownsLock(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v4

    if-nez v4, :cond_2d

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transaction does not own lock for group lock entry during  commit [tx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", txEntry="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 909
    :cond_2d
    if-eqz v42, :cond_2e

    invoke-virtual/range {v42 .. v42}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isUseOld()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 910
    :cond_2e
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v4, v10, v12

    if-eqz v4, :cond_2f

    .line 911
    const/4 v4, 0x0

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl()J

    move-result-wide v10

    invoke-interface {v9, v4, v10, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->updateTtl(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;J)V

    .line 914
    :cond_2f
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 915
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring NOOP entry when committing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_d

    .line 956
    .end local v5    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v7    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v8    # "explicitVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v9    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v18    # "evt":Z
    .end local v19    # "metrics":Z
    .end local v42    # "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<**>;"
    .end local v43    # "conflictNeedResolve":Z
    .end local v55    # "nearCached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v58    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .restart local v50    # "ex":Ljava/lang/Throwable;
    :cond_30
    :try_start_6
    new-instance v49, Lorg/apache/ignite/internal/transactions/IgniteTxHeuristicCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to locally write to cache (all transaction entries will be invalidated, however there was a window when entries for this transaction were visible to others): "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-direct {v0, v4, v1}, Lorg/apache/ignite/internal/transactions/IgniteTxHeuristicCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 960
    .local v49, "err":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v10, "Heuristic transaction failure."

    move-object/from16 v0, v49

    invoke-static {v4, v10, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitErr:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v10, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v4, v10, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 964
    sget-object v4, Lorg/apache/ignite/transactions/TransactionState;->UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 968
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->uncommit()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 974
    :goto_10
    :try_start_8
    throw v49

    .line 970
    :catch_2
    move-exception v51

    .line 971
    .local v51, "ex1":Ljava/lang/Throwable;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to uncommit transaction: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v51

    invoke-static {v4, v10, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_10

    .line 980
    .end local v6    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v41    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v45    # "drType":Lorg/apache/ignite/internal/processors/dr/GridDrType;
    .end local v49    # "err":Lorg/apache/ignite/IgniteCheckedException;
    .end local v50    # "ex":Ljava/lang/Throwable;
    .end local v51    # "ex1":Ljava/lang/Throwable;
    .end local v57    # "nodeId":Ljava/util/UUID;
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    .line 1003
    .end local v20    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v53    # "i$":Ljava/util/Iterator;
    :cond_32
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->onePhaseCommit()Z

    move-result v4

    if-nez v4, :cond_37

    .line 1004
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->doneFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1006
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->commitTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1008
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->needsCompletedVersions()Z

    move-result v56

    .line 1010
    .local v56, "needsCompletedVersions":Z
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_35

    if-eqz v56, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->completedBase:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    if-nez v4, :cond_35

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 984
    .end local v56    # "needsCompletedVersions":Z
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v60

    .line 986
    .local v60, "store":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    if-eqz v60, :cond_32

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->internal()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 988
    :cond_34
    const/4 v4, 0x1

    :try_start_9
    move-object/from16 v0, v60

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->txEnd(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V
    :try_end_9
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_11

    .line 990
    :catch_3
    move-exception v47

    .line 991
    .local v47, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitError(Ljava/lang/Throwable;)V

    .line 993
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 995
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->removeCommittedTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 997
    throw v47

    .line 1011
    .end local v47    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v60    # "store":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    .restart local v56    # "needsCompletedVersions":Z
    :cond_35
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_36

    if-eqz v56, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->committedVers:Ljava/util/Collection;

    if-nez v4, :cond_36

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1012
    :cond_36
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_37

    if-eqz v56, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->rolledbackVers:Ljava/util/Collection;

    if-nez v4, :cond_37

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1015
    .end local v56    # "needsCompletedVersions":Z
    :cond_37
    return-void
.end method

.method public userPrepare()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/transactions/TransactionState;->PREPARING:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v3, :cond_1

    .line 412
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->timedOut()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    new-instance v2, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transaction timed out: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v1

    .line 417
    .local v1, "state":Lorg/apache/ignite/transactions/TransactionState;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 419
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid transaction state for prepare [state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 422
    .end local v1    # "state":Lorg/apache/ignite/transactions/TransactionState;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->checkValid()V

    .line 425
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->prepareTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 435
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    throw v0

    .line 430
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 433
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transaction validation produced a runtime exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public userRollback()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1070
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v2

    .line 1072
    .local v2, "state":Lorg/apache/ignite/transactions/TransactionState;
    sget-object v4, Lorg/apache/ignite/transactions/TransactionState;->ROLLING_BACK:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v4, :cond_0

    sget-object v4, Lorg/apache/ignite/transactions/TransactionState;->ROLLED_BACK:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v4, :cond_0

    .line 1073
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 1075
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid transaction state for rollback [state="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", tx="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitErr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    invoke-direct {v5, v6, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1079
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->doneFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1081
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->near()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1084
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->allEntries()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 1085
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->evictNearEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Z)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1096
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->commitErr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addLastCause(Ljava/lang/Throwable;Ljava/lang/Throwable;Lorg/apache/ignite/IgniteLogger;)Z

    .line 1099
    throw v0

    .line 1087
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->rollbackTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1089
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v3

    .line 1091
    .local v3, "store":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->near()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->writeToStoreFromDht()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1092
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->internal()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->groupLock()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1093
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->txEnd(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1102
    .end local v3    # "store":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    :cond_4
    return-void

    .line 1096
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
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
    .line 269
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
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
    .line 254
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    goto :goto_0
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
    .line 234
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->txMap:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->writeView:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method
