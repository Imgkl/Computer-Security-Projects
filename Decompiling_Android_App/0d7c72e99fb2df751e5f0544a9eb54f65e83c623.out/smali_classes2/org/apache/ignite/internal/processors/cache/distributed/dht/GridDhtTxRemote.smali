.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;
.source "GridDhtTxRemote.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private nearNodeId:Ljava/util/UUID;

.field private nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private rmtFutId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;ZJILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Map;Ljava/util/UUID;I)V
    .locals 21
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "nearNodeId"    # Ljava/util/UUID;
    .param p3, "rmtFutId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "nodeId"    # Ljava/util/UUID;
    .param p5, "rmtThreadId"    # J
    .param p7, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p8, "xidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p9, "commitVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p10, "sys"    # Z
    .param p11, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p12, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p13, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p14, "invalidate"    # Z
    .param p15, "timeout"    # J
    .param p17, "txSize"    # I
    .param p18, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19, "nearXidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p21, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22, "taskNameHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/util/UUID;",
            "J",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Z",
            "Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;",
            "Lorg/apache/ignite/transactions/TransactionConcurrency;",
            "Lorg/apache/ignite/transactions/TransactionIsolation;",
            "ZJI",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;",
            "Ljava/util/UUID;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p20, "txNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move/from16 v13, p14

    move-wide/from16 v14, p15

    move/from16 v16, p17

    move-object/from16 v17, p18

    move-object/from16 v18, p21

    move/from16 v19, p22

    invoke-direct/range {v2 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;ZJILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V

    .line 109
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 110
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 112
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->nearNodeId:Ljava/util/UUID;

    .line 113
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->rmtFutId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 114
    move-object/from16 v0, p19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 115
    move-object/from16 v0, p20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->txNodes:Ljava/util/Map;

    .line 117
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->readMap:Ljava/util/Map;

    .line 119
    new-instance v2, Lorg/jsr166/ConcurrentLinkedHashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, p17

    invoke-direct {v2, v0, v3}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>(IF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->writeMap:Ljava/util/Map;

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 122
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;ZJILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V
    .locals 20
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "nearNodeId"    # Ljava/util/UUID;
    .param p3, "rmtFutId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "nodeId"    # Ljava/util/UUID;
    .param p5, "nearXidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p6, "rmtThreadId"    # J
    .param p8, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p9, "xidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p10, "commitVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p11, "sys"    # Z
    .param p12, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p13, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p14, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p15, "invalidate"    # Z
    .param p16, "timeout"    # J
    .param p18, "txSize"    # I
    .param p19, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21, "taskNameHash"    # I

    .prologue
    .line 165
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-wide/from16 v5, p6

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move/from16 v13, p15

    move-wide/from16 v14, p16

    move/from16 v16, p18

    move-object/from16 v17, p19

    move-object/from16 v18, p20

    move/from16 v19, p21

    invoke-direct/range {v2 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;ZJILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V

    .line 168
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 169
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 171
    :cond_1
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 172
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->nearNodeId:Ljava/util/UUID;

    .line 173
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->rmtFutId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->readMap:Ljava/util/Map;

    .line 176
    new-instance v2, Lorg/jsr166/ConcurrentLinkedHashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, p18

    invoke-direct {v2, v0, v3}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>(IF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->writeMap:Ljava/util/Map;

    .line 178
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 179
    return-void
.end method


# virtual methods
.method public addInvalidPartition(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V
    .locals 5
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "part"    # I

    .prologue
    .line 239
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->addInvalidPartition(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V

    .line 241
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->writeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 244
    .local v1, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 246
    .local v0, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v0, :cond_1

    .line 247
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 248
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 251
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 253
    .end local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v1    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_2
    return-void
.end method

.method public addWrite(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/util/Collection;J)V
    .locals 14
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p3, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .param p4, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "ttl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljavax/cache/processor/EntryProcessor",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ">;>;J)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p5, "entryProcessors":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/typedef/T2<Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;[Ljava/lang/Object;>;>;"
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->checkInternal(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z

    .line 298
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->isSystemInvalidate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v12

    .line 303
    .local v12, "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    const-wide/16 v10, -0x1

    const/4 v13, 0x0

    move-object v4, p1

    move-object v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v3 .. v13}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 312
    .local v3, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors(Ljava/util/Collection;)V

    .line 314
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->writeMap:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addWrite(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->unmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;ZLjava/lang/ClassLoader;)V

    .line 263
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 266
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v1

    .line 268
    .local v1, "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->checkInternal(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z

    .line 271
    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 273
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->writeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->addExplicit(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v1    # "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;->partition()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->addInvalidPartition(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V

    goto :goto_0
.end method

.method public dht()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public enforceSerializable()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public eventNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->nearNodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
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
    .line 193
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/UUID;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->nearNodeId:Ljava/util/UUID;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->nodeId:Ljava/util/UUID;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method nearNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->nearNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->nearXidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public otherNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->nearNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method remoteFutureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->rmtFutId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 319
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateNearCache(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 4
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->nearNodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 234
    :cond_1
    :goto_0
    return v0

    .line 230
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getBackups()I

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->backups(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method
