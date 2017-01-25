.class public Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
.super Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
.source "GridNearTxLocal.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private accessMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private colocatedLocallyMapped:Z

.field private final commitFut:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;",
            ">;"
        }
    .end annotation
.end field

.field private mappings:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;"
        }
    .end annotation
.end field

.field private nearLocallyMapped:Z

.field private optimisticLockEntries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final prepFut:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rollbackFut:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;-><init>()V

    .line 58
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings:Ljava/util/concurrent/ConcurrentMap;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->prepFut:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->commitFut:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->rollbackFut:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->optimisticLockEntries:Ljava/util/Collection;

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;ZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JZZILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZLjava/util/UUID;I)V
    .locals 22
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "implicit"    # Z
    .param p3, "implicitSingle"    # Z
    .param p4, "sys"    # Z
    .param p5, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p6, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p7, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p8, "timeout"    # J
    .param p10, "invalidate"    # Z
    .param p11, "storeEnabled"    # Z
    .param p12, "txSize"    # I
    .param p13, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14, "partLock"    # Z
    .param p15, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16, "taskNameHash"    # I

    .prologue
    .line 125
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-wide/from16 v12, p8

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move-object/from16 v17, p13

    move/from16 v18, p14

    move-object/from16 v19, p15

    move/from16 v20, p16

    invoke-direct/range {v3 .. v20}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JZZILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZLjava/util/UUID;I)V

    .line 58
    new-instance v2, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v2}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings:Ljava/util/concurrent/ConcurrentMap;

    .line 62
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->prepFut:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->commitFut:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->rollbackFut:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->optimisticLockEntries:Ljava/util/Collection;

    .line 143
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->initResult()V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->commitFut:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->commitErr:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1000()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1100()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1200()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->commitErr:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$400()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->rollbackFut:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$600()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$700()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$800()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$900()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private accessPolicy(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    .locals 4
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;"
        }
    .end annotation

    .prologue
    .line 1194
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->accessMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 1195
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->accessMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1196
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->cacheId()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    .line 1201
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addKeyMapping(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Iterable;)V
    .locals 6
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p2, "mappedKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 458
    .local v2, "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    if-nez v2, :cond_0

    .line 459
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .end local v2    # "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-direct {v2, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;-><init>(Lorg/apache/ignite/cluster/ClusterNode;)V

    .restart local v2    # "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-interface {v4, v5, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 462
    .local v1, "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->txMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 464
    .local v3, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez v3, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 466
    :cond_1
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->nodeId(Ljava/util/UUID;)V

    .line 468
    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->add(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)V

    goto :goto_0

    .line 470
    .end local v1    # "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .end local v3    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_2
    return-void
.end method

.method private sync()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 222
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->syncCommit()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 230
    :goto_0
    return v2

    .line 225
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->activeCacheIds()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 226
    .local v0, "cacheId":I
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v2

    sget-object v4, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-ne v2, v4, :cond_1

    move v2, v3

    .line 227
    goto :goto_0

    .line 230
    .end local v0    # "cacheId":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected accessPolicy(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .param p3, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1174
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->optimistic()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1176
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->expiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-result-object v0

    .line 1178
    .local v0, "plc":Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    if-eqz v0, :cond_2

    .line 1179
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->accessMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 1180
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->accessMap:Ljava/util/Map;

    .line 1182
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->accessMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    :cond_2
    return-object v0
.end method

.method addDhtVersion(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "dhtVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 391
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->onReceived(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 393
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 395
    .local v0, "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->dhtVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 397
    :cond_0
    return-void
.end method

.method addEntryMapping(Ljava/util/Collection;)V
    .locals 9
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p1, "maps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 477
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 478
    .local v4, "map":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    .line 480
    .local v5, "n":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 482
    .local v3, "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    if-nez v3, :cond_1

    .line 483
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    new-instance v8, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-direct {v8, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;-><init>(Lorg/apache/ignite/cluster/ClusterNode;)V

    invoke-static {v6, v7, v8}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 485
    .restart local v3    # "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    :cond_1
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    if-nez v3, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 487
    :cond_2
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 488
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->add(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)V

    goto :goto_0

    .line 491
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .end local v4    # "map":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .end local v5    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_3
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 492
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Added mappings to transaction [locId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mappings="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", tx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 495
    :cond_4
    return-void
.end method

.method protected addGroupTxMapping(Ljava/util/Collection;)V
    .locals 1
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
    .line 419
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->addGroupTxMapping(Ljava/util/Collection;)V

    .line 421
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->addKeyMapping(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Iterable;)V

    .line 422
    return-void
.end method

.method public addKeyMapping(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 5
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 431
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 433
    .local v0, "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    if-nez v0, :cond_0

    .line 434
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .end local v0    # "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-direct {v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;-><init>(Lorg/apache/ignite/cluster/ClusterNode;)V

    .restart local v0    # "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->txMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 438
    .local v1, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 440
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->nodeId(Ljava/util/UUID;)V

    .line 442
    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->add(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)V

    .line 444
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 445
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added mappings to transaction [locId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", node="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 447
    :cond_2
    return-void
.end method

.method protected addReader(JLorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "msgId"    # J
    .param p3, "cached"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .param p4, "entry"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .param p5, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method protected clearPrepareFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)V
    .locals 2
    .param p1, "fut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->prepFut:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1206
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->close()V

    .line 1208
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->accessMap:Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 1209
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->optimistic()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1211
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->accessMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1212
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->entries()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1213
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->cacheId()I

    move-result v3

    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 1215
    .local v0, "cctx0":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1216
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->sendTtlUpdateRequest(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V

    goto :goto_0

    .line 1218
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->sendTtlUpdateRequest(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V

    goto :goto_0

    .line 1222
    .end local v0    # "cctx0":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;>;"
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->accessMap:Ljava/util/Map;

    .line 1224
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public colocated()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public colocatedLocallyMapped(Z)V
    .locals 0
    .param p1, "colocatedLocallyMapped"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->colocatedLocallyMapped:Z

    .line 259
    return-void
.end method

.method public colocatedLocallyMapped()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->colocatedLocallyMapped:Z

    return v0
.end method

.method public commitAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
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
    .line 738
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 739
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Committing near local tx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 741
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->prepareAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 743
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->commitFut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;

    .line 745
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;
    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->commitFut:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;

    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    const/4 v5, 0x1

    invoke-direct {v0, v4, p0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Z)V

    .restart local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 746
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->commitFut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 779
    :goto_0
    return-object v2

    .line 748
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 750
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->prepFut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 752
    .local v1, "prepareFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$3;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$3;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)V

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    move-object v2, v0

    .line 779
    goto :goto_0
.end method

.method public commitAsyncLocal()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
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
    .line 941
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 942
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Committing colocated tx locally: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 945
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->pessimistic()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 946
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->prepareAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 948
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->prepFut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 951
    .local v2, "prep":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->dhtMap:Ljava/util/Map;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->nearMap:Ljava/util/Map;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 952
    if-eqz v2, :cond_2

    .line 1005
    .end local v2    # "prep":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :goto_0
    return-object v2

    .line 955
    .restart local v2    # "prep":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :cond_2
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    .end local v2    # "prep":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 958
    .restart local v2    # "prep":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :cond_3
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    const/4 v4, 0x1

    invoke-direct {v1, v3, p0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;Z)V

    .line 960
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 962
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 963
    :cond_4
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->optimistic()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 966
    :cond_5
    if-eqz v2, :cond_6

    .line 967
    :try_start_0
    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 969
    :cond_6
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->finish()V
    :try_end_0
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object v2, v1

    .line 1005
    goto :goto_0

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "e":Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 973
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed optimistically to prepare transaction [tx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 975
    :cond_7
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 977
    .end local v0    # "e":Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;
    :catch_1
    move-exception v0

    .line 978
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to prepare transaction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 980
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 984
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_8
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$5;

    invoke-direct {v3, p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$5;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;)V

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_1
.end method

.method public enforceSerializable()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method protected entryEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 6
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    const/4 v5, 0x1

    .line 1112
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isColocated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1113
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v1

    .line 1115
    .local v1, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-nez v1, :cond_1

    .line 1116
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->colocated()Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    move-result-object v0

    .line 1134
    .end local v1    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_0
    :goto_0
    return-object v0

    .line 1118
    .restart local v1    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 1120
    .local v0, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1122
    :cond_2
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1125
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsoleteVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1126
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->colocated()Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    move-result-object v0

    .line 1128
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_0

    .line 1134
    .end local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v1    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_3
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    goto :goto_0
.end method

.method protected entryEx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 5
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    const/4 v4, 0x1

    .line 1143
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isColocated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1144
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v1

    .line 1146
    .local v1, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-nez v1, :cond_1

    .line 1147
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->colocated()Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {v2, v3, p3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    move-result-object v0

    .line 1165
    .end local v1    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_0
    :goto_0
    return-object v0

    .line 1149
    .restart local v1    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 1151
    .local v0, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1153
    :cond_2
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1156
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsoleteVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1157
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->colocated()Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {v2, v3, p3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    move-result-object v0

    .line 1159
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_0

    .line 1165
    .end local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v1    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_3
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    goto :goto_0
.end method

.method public finish(Z)Z
    .locals 9
    .param p1, "commit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x5d

    const/4 v4, 0x1

    .line 599
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 600
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finishing near local tx [tx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", commit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 602
    :cond_0
    if-eqz p1, :cond_3

    .line 603
    sget-object v5, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 604
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v2

    .line 606
    .local v2, "state":Lorg/apache/ignite/transactions/TransactionState;
    sget-object v4, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v4, :cond_1

    sget-object v4, Lorg/apache/ignite/transactions/TransactionState;->COMMITTED:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v4, :cond_1

    .line 607
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid transaction state for commit [state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 610
    :cond_1
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 611
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid transaction state for commit (another thread is committing): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 676
    .end local v2    # "state":Lorg/apache/ignite/transactions/TransactionState;
    :cond_2
    :goto_0
    return v3

    .line 618
    :cond_3
    sget-object v5, Lorg/apache/ignite/transactions/TransactionState;->ROLLING_BACK:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 619
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 620
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid transaction state for rollback [state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 626
    :cond_4
    const/4 v1, 0x0

    .line 631
    .local v1, "err":Lorg/apache/ignite/IgniteCheckedException;
    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->isRollbackOnly()Z

    move-result v3

    if-nez v3, :cond_6

    .line 632
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->userCommit()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :cond_5
    :goto_1
    if-eqz v1, :cond_7

    .line 652
    sget-object v3, Lorg/apache/ignite/transactions/TransactionState;->UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    .line 654
    throw v1

    .line 634
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->userRollback()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object v1, v0

    .line 639
    const/4 p1, 0x0

    .line 642
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->isRollbackOnly()Z

    move-result v3

    if-nez v3, :cond_5

    .line 643
    iput-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->invalidate:Z

    .line 645
    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->systemInvalidate(Z)V

    .line 647
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set transaction invalidation flag to true due to error [tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_1

    .line 658
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_7
    if-eqz p1, :cond_8

    .line 659
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->onePhaseCommit()Z

    move-result v3

    if-nez v3, :cond_9

    .line 660
    sget-object v3, Lorg/apache/ignite/transactions/TransactionState;->COMMITTED:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 661
    sget-object v3, Lorg/apache/ignite/transactions/TransactionState;->UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    .line 663
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid transaction state for commit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 668
    :cond_8
    sget-object v3, Lorg/apache/ignite/transactions/TransactionState;->ROLLED_BACK:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 669
    sget-object v3, Lorg/apache/ignite/transactions/TransactionState;->UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    .line 671
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid transaction state for rollback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    move v3, v4

    .line 676
    goto/16 :goto_0
.end method

.method public loadMissing(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZZLjava/util/Collection;ZZLorg/apache/ignite/lang/IgniteBiInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 13
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
    .line 296
    .local p4, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p7, "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nearTx()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->accessPolicy(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-result-object v7

    move-object v3, p0

    move-object/from16 v4, p4

    move v5, p2

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->txLoadAsync(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$1;

    move-object/from16 v0, p4

    move-object/from16 v1, p7

    invoke-direct {v3, p0, v0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    .line 355
    :goto_0
    return-object v2

    .line 322
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isColocated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->colocated()Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v7

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-static {p0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->resolveTaskName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->accessPolicy(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-result-object v11

    move-object/from16 v3, p4

    move v4, p2

    move/from16 v10, p5

    move/from16 v12, p6

    invoke-virtual/range {v2 .. v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->loadAsync(Ljava/util/Collection;ZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/UUID;Ljava/lang/String;ZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$2;

    move-object/from16 v0, p4

    move-object/from16 v1, p7

    invoke-direct {v3, p0, v0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    goto :goto_0

    .line 353
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 355
    :cond_2
    invoke-super/range {p0 .. p7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->loadMissing(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZZLjava/util/Collection;ZZLorg/apache/ignite/lang/IgniteBiInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    goto :goto_0
.end method

.method public lockAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;ZZJ)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 19
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p3, "implicit"    # Z
    .param p4, "read"    # Z
    .param p5, "accessTtl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/util/Collection",
            "<+TK;>;ZZJ)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1068
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->pessimistic()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1071
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->checkValid()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    new-instance v17, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->localResult()Z

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(ZZ)V

    .line 1079
    .local v17, "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1080
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 1097
    .end local v17    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :goto_0
    return-object v3

    .line 1073
    :catch_0
    move-exception v15

    .line 1074
    .local v15, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v3, v15}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1082
    .end local v15    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v17    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->init()Z

    .line 1084
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1085
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before acquiring transaction lock on keys: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1087
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->colocated()Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->lockTimeout()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->isInvalidate()Z

    move-result v8

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v14

    move-object/from16 v4, p2

    move-object/from16 v7, p0

    move/from16 v9, p4

    move-wide/from16 v12, p5

    invoke-virtual/range {v3 .. v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->lockAllAsyncInternal(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZZLorg/apache/ignite/transactions/TransactionIsolation;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;

    move-result-object v16

    .line 1097
    .local v16, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$7;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-direct {v4, v0, v1, v5, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$7;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;ZLjava/util/Collection;)V

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v4}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    goto :goto_0
.end method

.method mappings()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public markExplicit(Ljava/util/UUID;)Z
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 532
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 534
    .local v0, "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->markExplicitLock()V

    .line 537
    const/4 v1, 0x1

    .line 540
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public near()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method protected nearFutureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 2

    .prologue
    .line 173
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "nearFutureId should not be called for colocated transactions."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public nearLocallyMapped(Z)V
    .locals 0
    .param p1, "nearLocallyMapped"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->nearLocallyMapped:Z

    .line 245
    return-void
.end method

.method public nearLocallyMapped()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->nearLocallyMapped:Z

    return v0
.end method

.method protected nearMiniId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 2

    .prologue
    .line 180
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "nearMiniId should not be called for colocated transactions."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected nearNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 2
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "owner"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 545
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->prepFut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture;

    .line 547
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture;->onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public optimisticLockEntries()Ljava/util/Collection;
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
    .line 273
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->groupLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->optimisticLockEntries()Ljava/util/Collection;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->optimisticLockEntries:Ljava/util/Collection;

    goto :goto_0
.end method

.method public optimisticLockEntries(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "optimisticLockEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->optimisticLockEntries:Ljava/util/Collection;

    .line 284
    return-void
.end method

.method public ownsLock(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 1
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->ownsLock(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

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

.method public ownsLockUnsafe(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 1
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 263
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->ownsLockUnsafe(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

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

.method public prepareAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
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
    const/16 v5, 0x5d

    .line 681
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->prepFut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    .line 683
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;
    if-nez v1, :cond_0

    .line 685
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    .end local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-direct {v1, v2, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)V

    .line 687
    .restart local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->prepFut:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 688
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->prepFut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 732
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v1

    .line 692
    goto :goto_0

    .line 694
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mapExplicitLocks()V

    .line 698
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->pessimistic()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 699
    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->PREPARING:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 700
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->setRollbackOnly()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 701
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->timedOut()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 702
    new-instance v2, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transaction timed out and was rolled back: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onError(Ljava/lang/Throwable;)V

    :goto_1
    move-object v2, v1

    .line 712
    goto :goto_0

    .line 705
    :cond_2
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid transaction state for prepare [state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 709
    :cond_3
    new-instance v2, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid transaction state for prepare [state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 716
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->userPrepare()V

    .line 719
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 721
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->prepare()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v2, v1

    .line 732
    goto/16 :goto_0

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 729
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_5
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->prepare()V

    goto :goto_2
.end method

.method public prepareAsyncLocal(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;ZLjava/util/Collection;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 11
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "last"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 872
    .local p1, "reads":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .local p2, "writes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .local p3, "txNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    .local p5, "lastBackups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .local p6, "completeCb":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->PREPARING:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v1, v2, :cond_1

    .line 873
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->timedOut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v1, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction timed out: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    .line 932
    :goto_0
    return-object v0

    .line 877
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->setRollbackOnly()Z

    .line 879
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid transaction state for prepare [state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 883
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->init()Z

    .line 885
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->needReturnValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->implicit()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v6, 0x1

    :goto_1
    move-object v2, p0

    move v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;ZZLjava/util/Collection;Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 898
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;
    :try_start_0
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->optimisticLockEntries:Ljava/util/Collection;

    .line 900
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->userPrepare()V

    .line 903
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 905
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->isSystemInvalidate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 906
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->complete()V
    :try_end_0
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 910
    :catch_0
    move-exception v9

    .line 911
    .local v9, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_2
    invoke-virtual {v0, v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 885
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;
    .end local v9    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 908
    .restart local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;
    :cond_3
    :try_start_1
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->prepare(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 910
    :catch_1
    move-exception v9

    goto :goto_2

    .line 913
    :catch_2
    move-exception v9

    .line 914
    .restart local v9    # "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->setRollbackOnly()Z

    .line 916
    new-instance v1, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare transaction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->onError(Ljava/lang/Throwable;)V

    .line 919
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->rollback()V
    :try_end_2
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 921
    :catch_3
    move-exception v10

    .line 922
    .local v10, "e1":Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 923
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed optimistically to prepare transaction [tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", e="

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

    .line 925
    :cond_4
    invoke-virtual {v0, v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 927
    .end local v10    # "e1":Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;
    :catch_4
    move-exception v10

    .line 928
    .local v10, "e1":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rollback transaction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method readyNearLocks(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 12
    .param p1, "mapping"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
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
    .line 561
    .local p2, "pendingVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p3, "committedVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p4, "rolledbackVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->groupLock()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->groupLockEntry()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 565
    .local v7, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 567
    .local v11, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :goto_2
    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    .line 569
    .local v6, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 561
    .end local v6    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v7    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->reads()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->writes()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    goto :goto_0

    .line 571
    .restart local v6    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .restart local v7    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_2
    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    .line 575
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    :try_start_0
    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    .line 577
    .local v8, "explicit":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-nez v8, :cond_0

    .line 578
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->dhtVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->readyNearLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 582
    .end local v8    # "explicit":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catch_0
    move-exception v10

    .line 583
    .local v10, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->obsoleteVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 585
    :cond_3
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 586
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replacing obsolete entry in remote transaction [entry="

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

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 590
    :cond_4
    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto/16 :goto_2

    .line 594
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v6    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v10    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v11    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_5
    return-void
.end method

.method removeKeysMapping(Ljava/util/UUID;Ljava/lang/Iterable;)V
    .locals 7
    .param p1, "failedNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p2, "mapQueue":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 506
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez p2, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 508
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 511
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 512
    .local v3, "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    .line 514
    .local v5, "nodeId":Ljava/util/UUID;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 516
    .local v4, "mapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    if-eqz v4, :cond_2

    .line 517
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 518
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->removeEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Z

    goto :goto_1

    .line 520
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_3
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 521
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 525
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .end local v4    # "mapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .end local v5    # "nodeId":Ljava/util/UUID;
    :cond_4
    return-void
.end method

.method public removeMapping(Ljava/util/UUID;)Z
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    const/16 v3, 0x5d

    .line 403
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 404
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed mapping for node [nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 407
    :cond_0
    const/4 v0, 0x1

    .line 413
    :goto_0
    return v0

    .line 410
    :cond_1
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mapping for node was not found [nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 413
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
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
    const/4 v6, 0x0

    .line 784
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 785
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rolling back near tx: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 787
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->rollbackFut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;

    .line 789
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 851
    :goto_0
    return-object v3

    .line 792
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->rollbackFut:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;

    .end local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-direct {v1, v5, p0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Z)V

    .restart local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;
    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 793
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->rollbackFut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/IgniteInternalFuture;

    goto :goto_0

    .line 795
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 797
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->prepFut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 799
    .local v2, "prepFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 802
    :cond_3
    if-eqz v2, :cond_4

    .line 803
    :try_start_0
    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :cond_4
    :goto_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->finish(Z)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/transactions/TransactionState;->UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v3, v4, :cond_6

    .line 812
    :cond_5
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->finish()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v3, v1

    .line 851
    goto :goto_0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 807
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got optimistic tx failure [tx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", err="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 814
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_6
    :try_start_2
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to gracefully rollback transaction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txString(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 816
    :catch_1
    move-exception v0

    .line 817
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 821
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_7
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$4;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$4;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)V

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_2
.end method

.method public rollbackAsyncLocal()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
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
    .line 1014
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1015
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rolling back colocated tx locally: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1017
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    const/4 v4, 0x0

    invoke-direct {v1, v3, p0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;Z)V

    .line 1019
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 1021
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->prepFut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 1023
    .local v2, "prep":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1025
    :cond_1
    if-eqz v2, :cond_2

    .line 1026
    :try_start_0
    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->finish()V

    .line 1051
    :goto_1
    return-object v1

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1030
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to prepare transaction during rollback (will ignore) [tx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1037
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_3
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$6;

    invoke-direct {v3, p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal$6;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;)V

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_1
.end method

.method protected sendFinishReply(ZLjava/lang/Throwable;)V
    .locals 0
    .param p1, "commit"    # Z
    .param p2, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 199
    return-void
.end method

.method public syncCommit()Z
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->sync()Z

    move-result v0

    return v0
.end method

.method public syncRollback()Z
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->sync()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1228
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    const-string v2, "mappings"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 362
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->threadId()J

    move-result-wide v4

    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->explicitLock(JLorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 365
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    .line 368
    .local v1, "candVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 370
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->minVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->isLess(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->minVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 376
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v1    # "candVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->updateExplicitVersion(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_0
.end method
