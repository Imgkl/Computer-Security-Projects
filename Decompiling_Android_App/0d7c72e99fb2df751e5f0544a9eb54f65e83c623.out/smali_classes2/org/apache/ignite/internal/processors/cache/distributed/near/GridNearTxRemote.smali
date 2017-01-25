.class public Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;
.source "GridNearTxRemote.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private evicted:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;"
        }
    .end annotation
.end field

.field private grpLock:Z

.field private nearNodeId:Ljava/util/UUID;

.field private nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private owned:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->evicted:Ljava/util/Collection;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;Ljava/util/UUID;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;ZJLjava/util/Collection;ILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V
    .locals 23
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .param p3, "nodeId"    # Ljava/util/UUID;
    .param p4, "nearNodeId"    # Ljava/util/UUID;
    .param p5, "rmtThreadId"    # J
    .param p7, "xidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p8, "commitVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p9, "sys"    # Z
    .param p10, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p11, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p12, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p13, "invalidate"    # Z
    .param p14, "timeout"    # J
    .param p17, "txSize"    # I
    .param p18, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20, "taskNameHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "J",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Z",
            "Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;",
            "Lorg/apache/ignite/transactions/TransactionConcurrency;",
            "Lorg/apache/ignite/transactions/TransactionIsolation;",
            "ZJ",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;I",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Ljava/util/UUID;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 107
    .local p16, "writeEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-wide/from16 v15, p14

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    invoke-direct/range {v3 .. v20}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;ZJILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V

    .line 46
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->evicted:Ljava/util/Collection;

    .line 110
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 112
    :cond_0
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->nearNodeId:Ljava/util/UUID;

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->readMap:Ljava/util/Map;

    .line 116
    new-instance v3, Ljava/util/LinkedHashMap;

    if-eqz p16, :cond_1

    invoke-interface/range {p16 .. p16}, Ljava/util/Collection;->size()I

    move-result v4

    move/from16 v0, p17

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p17

    .end local p17    # "txSize":I
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, p17

    invoke-direct {v3, v0, v4}, Ljava/util/LinkedHashMap;-><init>(IF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->writeMap:Ljava/util/Map;

    .line 119
    if-eqz p16, :cond_2

    .line 120
    invoke-interface/range {p16 .. p16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 121
    .local v21, "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->unmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;ZLjava/lang/ClassLoader;)V

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->addEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Z

    goto :goto_0

    .line 126
    .end local v21    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;ZJILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V
    .locals 20
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "nearNodeId"    # Ljava/util/UUID;
    .param p4, "nearXidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p5, "rmtThreadId"    # J
    .param p7, "xidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p8, "commitVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p9, "sys"    # Z
    .param p10, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p11, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p12, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p13, "invalidate"    # Z
    .param p14, "timeout"    # J
    .param p16, "txSize"    # I
    .param p17, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19, "taskNameHash"    # I

    .prologue
    .line 165
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-wide/from16 v14, p14

    move/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v2 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;ZJILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V

    .line 46
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->evicted:Ljava/util/Collection;

    .line 168
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 170
    :cond_0
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 171
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->nearNodeId:Ljava/util/UUID;

    .line 173
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Ljava/util/LinkedHashMap;-><init>(IF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->readMap:Ljava/util/Map;

    .line 174
    new-instance v2, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, p16

    invoke-direct {v2, v0, v3}, Ljava/util/LinkedHashMap;-><init>(IF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->writeMap:Ljava/util/Map;

    .line 175
    return-void
.end method

.method private addEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Z
    .locals 7
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 281
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->checkInternal(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z

    .line 283
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 285
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v4

    if-nez v4, :cond_0

    .line 286
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 288
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    move-result-object v1

    .line 290
    .local v1, "cached":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    if-nez v1, :cond_2

    .line 291
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->evicted:Ljava/util/Collection;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_1
    :goto_0
    return v3

    .line 296
    :cond_2
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->unswap()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 299
    :try_start_0
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->GLOBAL:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->peek(Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->evictInternal(ZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 300
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->evicted:Ljava/util/Collection;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v2

    .line 316
    .local v2, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->evicted:Ljava/util/Collection;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got removed entry when adding to remote transaction (will ignore): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    .end local v2    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_3
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 308
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->writeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->addExplicit(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addEntries(Ljava/lang/ClassLoader;Ljava/lang/Iterable;)V
    .locals 4
    .param p1, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
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
    .line 268
    .local p2, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 269
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->unmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;ZLjava/lang/ClassLoader;)V

    .line 271
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->addEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Z

    goto :goto_0

    .line 273
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_0
    return-void
.end method

.method public addEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 12
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .param p3, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p4, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p5, "drVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->checkInternal(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z

    .line 342
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    move-result-object v10

    .line 345
    .local v10, "cached":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    if-nez v10, :cond_0

    .line 346
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->evicted:Ljava/util/Collection;

    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 348
    const/4 v2, 0x0

    .line 382
    :goto_0
    return v2

    .line 351
    :cond_0
    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->unswap()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 353
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->GLOBAL:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->peek(Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->evictInternal(ZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeIfObsolete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    .line 356
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->evicted:Ljava/util/Collection;

    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 358
    const/4 v2, 0x0

    goto :goto_0

    .line 361
    :cond_1
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object v2, p1

    move-object v3, p0

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 370
    .local v1, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->writeMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    const/4 v2, 0x1

    goto :goto_0

    .line 376
    .end local v1    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :catch_0
    move-exception v0

    .line 377
    .local v0, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->evicted:Ljava/util/Collection;

    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 379
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 380
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got removed entry when adding reads to remote transaction (will ignore): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 382
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addEvicted(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)V
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->evicted:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method public enforceSerializable()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public eventNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->nearNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public evicted()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->evicted:Ljava/util/Collection;

    return-object v0
.end method

.method public groupLock()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->grpLock:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->groupLock()Z

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

.method public markGroupLock()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->grpLock:Z

    .line 203
    return-void
.end method

.method public masterNodeIds()Ljava/util/Collection;
    .locals 3
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
    .line 241
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/UUID;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->nodeId:Ljava/util/UUID;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->nearNodeId:Ljava/util/UUID;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public near()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public nearNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->nearNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public ownedVersion(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->owned:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->owned:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    goto :goto_0
.end method

.method public ownedVersions(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "vers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->owned:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 227
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->owned:Ljava/util/Map;

    .line 229
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->owned:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 388
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
