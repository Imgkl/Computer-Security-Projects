.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;
.super Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;
.source "GridPartitionedGetFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_MAX_REMAP_CNT:I = 0x3

.field private static final MAX_REMAP_CNT:I

.field private static log:Lorg/apache/ignite/IgniteLogger;

.field private static final logRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/IgniteLogger;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private deserializePortable:Z

.field private expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

.field private forcePrimary:Z

.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private keys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation
.end field

.field private readThrough:Z

.field private reload:Z

.field private remapCnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private skipVals:Z

.field private subjId:Ljava/util/UUID;

.field private taskName:Ljava/lang/String;

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field private volatile trackable:Z

.field private ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->$assertionsDisabled:Z

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    const-string v0, "IGNITE_NEAR_GET_MAX_REMAPS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/apache/ignite/IgniteSystemProperties;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->MAX_REMAP_CNT:I

    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZZLjava/util/UUID;Ljava/lang/String;ZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)V
    .locals 3
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p4, "readThrough"    # Z
    .param p5, "reload"    # Z
    .param p6, "forcePrimary"    # Z
    .param p7, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8, "taskName"    # Ljava/lang/String;
    .param p9, "deserializePortable"    # Z
    .param p10, "expiryPlc"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11, "skipVals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "ZZZ",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->mapsReducer(I)Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteReducer;)V

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->remapCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 137
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 139
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 140
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->keys:Ljava/util/Collection;

    .line 141
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 142
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->readThrough:Z

    .line 143
    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->reload:Z

    .line 144
    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->forcePrimary:Z

    .line 145
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->subjId:Ljava/util/UUID;

    .line 146
    iput-boolean p9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->deserializePortable:Z

    .line 147
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->taskName:Ljava/lang/String;

    .line 148
    iput-object p10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    .line 149
    iput-boolean p11, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->skipVals:Z

    .line 151
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 153
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 155
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v0, :cond_1

    .line 156
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    .line 157
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;Lorg/apache/ignite/internal/IgniteInternalFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;
    .param p1, "x1"    # Lorg/apache/ignite/internal/IgniteInternalFuture;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;Ljava/util/Collection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->createResultMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->map(Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    return-void
.end method

.method private cache()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 511
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    return-object v0
.end method

.method private createResultMap(Ljava/util/Collection;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    .local p1, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    const/4 v5, 0x0

    .line 519
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v10

    .line 521
    .local v10, "keysSize":I
    if-eqz v10, :cond_0

    .line 522
    new-instance v1, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v1, v10}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    .line 524
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    .line 525
    .local v9, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->skipVals:Z

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->deserializePortable:Z

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->addResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZZZ)V

    goto :goto_0

    .line 530
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;TV;>;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private map(Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 39
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p2, "mapped":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->affinityNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 271
    new-instance v4, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    const-string v8, "Failed to map keys for cache (all partition nodes left the grid)."

    invoke-direct {v4, v8}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 391
    :cond_0
    return-void

    .line 277
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->affinityNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v6

    .line 280
    .local v6, "mappings":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v35

    .line 282
    .local v35, "keysSize":I
    invoke-static/range {v35 .. v35}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v7

    .line 284
    .local v7, "locVals":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/16 v31, 0x0

    .line 287
    .local v31, "hasRmtNodes":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .local v5, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v4, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    .line 288
    invoke-direct/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->map(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Map;)Z

    move-result v4

    or-int v31, v31, v4

    goto :goto_0

    .line 290
    .end local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 293
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 294
    new-instance v4, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v4, v7}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 296
    :cond_3
    if-eqz v31, :cond_4

    .line 297
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->trackable:Z

    .line 299
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 303
    :cond_4
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .end local v32    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    .line 304
    .local v28, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lorg/apache/ignite/cluster/ClusterNode;

    .line 306
    .local v36, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/LinkedHashMap;

    .line 308
    .local v12, "mappedKeys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 311
    :cond_5
    invoke-interface/range {v36 .. v36}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 312
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cache()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v8

    invoke-interface/range {v36 .. v36}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    const-wide/16 v10, -0x1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->readThrough:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->reload:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->subjId:Ljava/util/UUID;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->taskName:Ljava/lang/String;

    if-nez v4, :cond_7

    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->skipVals:Z

    move/from16 v19, v0

    move-object/from16 v15, p3

    invoke-virtual/range {v8 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->getDhtAsync(Ljava/util/UUID;JLjava/util/LinkedHashMap;ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/UUID;ILorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;

    move-result-object v29

    .line 324
    .local v29, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;>;"
    invoke-interface/range {v29 .. v29}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;->invalidPartitions()Ljava/util/Collection;

    move-result-object v34

    .line 326
    .local v34, "invalidParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-static/range {v34 .. v34}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 327
    new-instance v37, Ljava/util/ArrayList;

    move-object/from16 v0, v37

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 329
    .local v37, "remapKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 330
    .restart local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 331
    move-object/from16 v0, v37

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 312
    .end local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v29    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;>;"
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v34    # "invalidParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .end local v37    # "remapKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->taskName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v17

    goto :goto_2

    .line 334
    .restart local v29    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;>;"
    .restart local v33    # "i$":Ljava/util/Iterator;
    .restart local v34    # "invalidParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .restart local v37    # "remapKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_8
    new-instance v38, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v8

    move-object/from16 v0, v38

    invoke-direct {v0, v8, v9}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    .line 336
    .local v38, "updTopVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_9

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v4

    if-gtz v4, :cond_9

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got invalid partitions for local node but topology version did not change [topVer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", updTopVer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", invalidParts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 341
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->map(Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 345
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v37    # "remapKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v38    # "updTopVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_a
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;)V

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto/16 :goto_1

    .line 361
    .end local v29    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;>;"
    .end local v34    # "invalidParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_b
    new-instance v30, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v12, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/LinkedHashMap;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 363
    .local v30, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>.MiniFuture;"
    new-instance v13, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->readThrough:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->reload:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->subjId:Ljava/util/UUID;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->taskName:Ljava/lang/String;

    if-nez v4, :cond_c

    const/16 v23, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->forAccess()J

    move-result-wide v24

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->skipVals:Z

    move/from16 v26, v0

    move-object/from16 v18, v12

    move-object/from16 v21, p3

    invoke-direct/range {v13 .. v26}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/LinkedHashMap;ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/UUID;IJZ)V

    .line 377
    .local v13, "req":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 380
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v8

    move-object/from16 v0, v36

    invoke-virtual {v4, v0, v13, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 382
    :catch_0
    move-exception v27

    .line 384
    .local v27, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v27

    instance-of v4, v0, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    if-eqz v4, :cond_e

    .line 385
    check-cast v27, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    .end local v27    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    goto/16 :goto_1

    .line 363
    .end local v13    # "req":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->taskName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v23

    goto :goto_4

    :cond_d
    const-wide/16 v24, -0x1

    goto :goto_5

    .line 387
    .restart local v13    # "req":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    .restart local v27    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_e
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->onResult(Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private map(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/Map;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Map;)Z
    .locals 24
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p4, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Boolean;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    .local p2, "mappings":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;>;"
    .local p3, "locVals":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p5, "mapped":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;>;"
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cache()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v17

    .line 411
    .local v17, "colocated":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    const/16 v23, 0x0

    .line 414
    .local v23, "remote":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->forcePrimary:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/16 v16, 0x1

    .line 417
    .local v16, "allowLocRead":Z
    :goto_0
    const/4 v3, 0x0

    .line 420
    .local v3, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->reload:Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_1

    if-eqz v16, :cond_1

    .line 422
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    .line 426
    :goto_1
    if-eqz v3, :cond_1

    .line 427
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isNewLocked()Z

    move-result v19

    .line 429
    .local v19, "isNew":Z
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->skipVals:Z

    if-nez v10, :cond_4

    const/4 v10, 0x1

    :goto_2
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->subjId:Ljava/util/UUID;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->taskName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    invoke-interface/range {v3 .. v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v7

    .line 442
    .local v7, "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 445
    if-nez v7, :cond_5

    .line 446
    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsoleteIfEmpty(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 447
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->removeIfObsolete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 461
    .end local v7    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v19    # "isNew":Z
    :cond_1
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v21

    .line 463
    .local v21, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v23, 0x1

    .line 465
    :goto_4
    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/LinkedHashMap;

    .line 467
    .local v20, "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    if-eqz v20, :cond_7

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 468
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->remapCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    sget v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->MAX_REMAP_CNT:I

    if-le v4, v5, :cond_7

    .line 469
    new-instance v4, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remap key to a new node after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->MAX_REMAP_CNT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " attempts (key got remapped to the same node) [key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", node="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v21 .. v21}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mappings="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->onDone(Ljava/lang/Throwable;)Z
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 473
    const/4 v4, 0x0

    .line 504
    .end local v20    # "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    .end local v21    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :goto_5
    return v4

    .line 414
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v16    # "allowLocRead":Z
    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 422
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v16    # "allowLocRead":Z
    :cond_3
    :try_start_3
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    goto/16 :goto_1

    .line 429
    .restart local v19    # "isNew":Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 450
    .restart local v7    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->skipVals:Z

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->deserializePortable:Z

    const/4 v11, 0x1

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    invoke-virtual/range {v4 .. v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->addResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZZZ)V
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 452
    const/4 v4, 0x0

    goto :goto_5

    .line 463
    .end local v7    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v19    # "isNew":Z
    .restart local v21    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 477
    .restart local v20    # "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    :cond_7
    :try_start_4
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/LinkedHashMap;

    .line 479
    .local v22, "old":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    if-nez v22, :cond_8

    .line 480
    new-instance v22, Ljava/util/LinkedHashMap;

    .end local v22    # "old":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .restart local v22    # "old":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_8
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v20    # "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    .end local v21    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v22    # "old":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    :goto_6
    move/from16 v4, v23

    .line 504
    goto :goto_5

    .line 486
    :catch_0
    move-exception v18

    .line 487
    .local v18, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_6

    .line 494
    .end local v18    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v18

    .line 495
    .local v18, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 496
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filter validation failed for entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 498
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_6

    .line 491
    .end local v18    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 456
    :catch_3
    move-exception v4

    goto/16 :goto_3
.end method


# virtual methods
.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public init()V
    .locals 6

    .prologue
    .line 163
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 165
    .local v0, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->keys:Ljava/util/Collection;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->map(Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 167
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->markInitialized()V

    .line 168
    return-void

    .line 163
    .end local v0    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    goto :goto_0
.end method

.method public markNotTrackable()V
    .locals 0

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    return-void
.end method

.method public nodes()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->futures()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->onDone(Ljava/util/Map;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onDone(Ljava/util/Map;Ljava/lang/Throwable;)Z
    .locals 2
    .param p2, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    .local p1, "res":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->trackable:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 244
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cache()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->sendTtlUpdateRequest(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V

    .line 246
    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNodeLeft(Ljava/util/UUID;)Z
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 206
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->futures()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 207
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;TV;>;>;"
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 208
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    .line 210
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    new-instance v3, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote node left grid (will retry): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    .line 213
    const/4 v3, 0x1

    .line 217
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>.MiniFuture;"
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;TV;>;>;"
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    .prologue
    .line 225
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->futures()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 226
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;TV;>;>;"
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 227
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    .line 229
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 232
    :cond_1
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V

    goto :goto_0

    .line 235
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>.MiniFuture;"
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;TV;>;>;"
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 535
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackable()Z
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->trackable:Z

    return v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method
