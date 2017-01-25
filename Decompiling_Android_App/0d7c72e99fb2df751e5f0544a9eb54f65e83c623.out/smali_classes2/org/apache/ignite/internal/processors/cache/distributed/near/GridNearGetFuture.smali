.class public final Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;
.super Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;
.source "GridNearGetFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;
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

.field private trackable:Z

.field private tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

.field private ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->$assertionsDisabled:Z

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    const-string v0, "IGNITE_NEAR_GET_MAX_REMAPS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/apache/ignite/IgniteSystemProperties;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->MAX_REMAP_CNT:I

    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;ZZZLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;Ljava/util/UUID;Ljava/lang/String;ZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)V
    .locals 3
    .param p3, "readThrough"    # Z
    .param p4, "reload"    # Z
    .param p5, "forcePrimary"    # Z
    .param p6, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
            ">;ZZZ",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->mapsReducer(I)Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteReducer;)V

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->remapCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 138
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 141
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->keys:Ljava/util/Collection;

    .line 142
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->readThrough:Z

    .line 143
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->reload:Z

    .line 144
    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->forcePrimary:Z

    .line 145
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    .line 146
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->subjId:Ljava/util/UUID;

    .line 147
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->taskName:Ljava/lang/String;

    .line 148
    iput-boolean p9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->deserializePortable:Z

    .line 149
    iput-object p10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    .line 150
    iput-boolean p11, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->skipVals:Z

    .line 152
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 154
    if-nez p6, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 156
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v0, :cond_1

    .line 157
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    .line 158
    :cond_1
    return-void

    .line 154
    :cond_2
    invoke-interface {p6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;Lorg/apache/ignite/internal/IgniteInternalFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;
    .param p1, "x1"    # Lorg/apache/ignite/internal/IgniteInternalFuture;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;Ljava/util/UUID;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Ljava/util/Collection;
    .param p3, "x3"    # Ljava/util/Collection;
    .param p4, "x4"    # Ljava/util/Map;
    .param p5, "x5"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 47
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->loadEntries(Ljava/util/UUID;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->map(Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    return-void
.end method

.method private cache()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    return-object v0
.end method

.method private dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cache()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    return-object v0
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;TV;>;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadEntries(Ljava/util/UUID;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Map;
    .locals 25
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p5, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p3, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    .local p4, "savedVers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v19

    .line 593
    .local v19, "empty":Z
    if-eqz v19, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v23

    .line 595
    .local v23, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :goto_0
    if-nez v19, :cond_6

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->atomic()Z

    move-result v2

    .line 598
    .local v2, "atomic":Z
    if-eqz v2, :cond_3

    const/16 v24, 0x0

    .line 600
    .local v24, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    .line 602
    .local v22, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->unmarshalValue(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->localNode(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 606
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cache()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v4, v5, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    move-result-object v3

    .line 608
    .local v3, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 611
    .local v9, "saved":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v6

    if-eqz v2, :cond_5

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    :goto_3
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->ttl()J

    move-result-wide v10

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime()J

    move-result-wide v12

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->subjId:Ljava/util/UUID;

    move-object/from16 v16, v0

    move-object/from16 v5, p1

    move-object/from16 v15, p5

    invoke-virtual/range {v3 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->loadedValue(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/UUID;)Z

    .line 623
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 626
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .end local v9    # "saved":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_1
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v13

    .line 627
    .local v13, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v12

    .line 629
    .local v12, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->skipVals:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->deserializePortable:Z

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v11, v23

    invoke-virtual/range {v10 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->addResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZZZ)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 631
    .end local v12    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v13    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_0
    move-exception v21

    .line 632
    .local v21, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 633
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Got removed entry while processing get response (will not retry)."

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 593
    .end local v2    # "atomic":Z
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v21    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v22    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end local v23    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v24    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_2
    new-instance v23, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    goto/16 :goto_0

    .line 598
    .restart local v2    # "atomic":Z
    .restart local v23    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_3
    invoke-static/range {p3 .. p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v24

    goto/16 :goto_1

    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .restart local v9    # "saved":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v20    # "i$":Ljava/util/Iterator;
    .restart local v22    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .restart local v24    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_5
    move-object/from16 v7, v24

    .line 611
    goto :goto_3

    .line 635
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .end local v9    # "saved":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catch_1
    move-exception v18

    .line 637
    .local v18, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 639
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v23

    .line 644
    .end local v2    # "atomic":Z
    .end local v18    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end local v23    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v24    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_6
    return-object v23
.end method

.method private map(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 32
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
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
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    .local p2, "mappings":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;>;"
    .local p4, "mapped":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;>;"
    .local p5, "savedVers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cache()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v25

    .line 411
    .local v25, "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->forcePrimary:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_0
    const/16 v17, 0x1

    .line 413
    .local v17, "allowLocRead":Z
    :goto_0
    if-eqz v17, :cond_a

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    .line 417
    .local v3, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_1
    :goto_1
    const/16 v30, 0x0

    .line 419
    .local v30, "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v3, :cond_b

    const/16 v21, 0x1

    .line 422
    .local v21, "isNear":Z
    :goto_2
    if-eqz v21, :cond_2

    .line 423
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->skipVals:Z

    if-nez v10, :cond_c

    const/4 v10, 0x1

    :goto_3
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->subjId:Ljava/util/UUID;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->taskName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    invoke-interface/range {v3 .. v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v30

    .line 436
    :cond_2
    const/16 v28, 0x0

    .line 438
    .local v28, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v30, :cond_7

    if-eqz v17, :cond_7

    .line 439
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cache()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v18

    .line 442
    .local v18, "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    .line 445
    :goto_4
    if-eqz v3, :cond_4

    .line 446
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isNewLocked()Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->valid(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v4

    if-nez v4, :cond_e

    :cond_3
    const/16 v22, 0x1

    .line 448
    .local v22, "isNew":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v21, :cond_f

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->skipVals:Z

    if-nez v10, :cond_f

    const/4 v10, 0x1

    :goto_6
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->subjId:Ljava/util/UUID;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->taskName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    invoke-interface/range {v3 .. v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v30

    .line 462
    if-nez v30, :cond_4

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsoleteIfEmpty(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 463
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->removeIfObsolete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    .line 466
    .end local v22    # "isNew":Z
    :cond_4
    if-eqz v30, :cond_10

    .line 467
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->skipVals:Z

    if-nez v4, :cond_5

    .line 468
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRead(Z)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    :cond_5
    :goto_7
    if-eqz v3, :cond_7

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->implicit()Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/transactions/TransactionIsolation;->READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

    if-ne v4, v5, :cond_7

    .line 482
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 484
    const/4 v3, 0x0

    .line 489
    .end local v18    # "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    :cond_7
    :goto_8
    if-eqz v30, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->reload:Z

    if-nez v4, :cond_16

    .line 490
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v23

    .line 491
    .local v23, "key0":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-interface {v0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v31

    .line 493
    .local v31, "val0":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->deserializePortable:Z

    if-nez v4, :cond_14

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, v31

    invoke-virtual {v5, v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v31

    .line 494
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->deserializePortable:Z

    if-nez v4, :cond_15

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v23

    .line 496
    new-instance v4, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 554
    .end local v23    # "key0":Ljava/lang/Object;, "TK;"
    .end local v31    # "val0":Ljava/lang/Object;, "TV;"
    :goto_b
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->reload:Z

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    if-nez v4, :cond_8

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .end local v28    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_8
    :goto_c
    move-object/from16 v29, p5

    .line 559
    .end local p5    # "savedVers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local v29, "savedVers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :goto_d
    return-object v29

    .line 411
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v17    # "allowLocRead":Z
    .end local v21    # "isNear":Z
    .end local v29    # "savedVers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .end local v30    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local p5    # "savedVers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 413
    .restart local v17    # "allowLocRead":Z
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 419
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v30    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 423
    .restart local v21    # "isNear":Z
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 442
    .restart local v18    # "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .restart local v28    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_d
    :try_start_3
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    goto/16 :goto_4

    .line 446
    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 448
    .restart local v22    # "isNew":Z
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 471
    .end local v22    # "isNew":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v28

    .line 473
    invoke-interface/range {v28 .. v28}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->skipVals:Z

    if-nez v4, :cond_5

    .line 474
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRead(Z)V
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_7

    .line 477
    :catch_0
    move-exception v4

    .line 481
    if-eqz v3, :cond_7

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->implicit()Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/transactions/TransactionIsolation;->READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

    if-ne v4, v5, :cond_7

    .line 482
    :cond_11
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 484
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 481
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->implicit()Z

    move-result v5

    if-nez v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/transactions/TransactionIsolation;->READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

    if-ne v5, v6, :cond_13

    .line 482
    :cond_12
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 484
    const/4 v3, 0x0

    :cond_13
    throw v4
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 539
    .end local v18    # "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .end local v28    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    :catch_1
    move-exception v19

    .line 540
    .local v19, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->onDone(Ljava/lang/Throwable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 554
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->reload:Z

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    if-nez v4, :cond_8

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_c

    .line 493
    .end local v19    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v23    # "key0":Ljava/lang/Object;, "TK;"
    .restart local v28    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v31    # "val0":Ljava/lang/Object;, "TV;"
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 494
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 499
    .end local v23    # "key0":Ljava/lang/Object;, "TK;"
    .end local v31    # "val0":Ljava/lang/Object;, "TV;"
    :cond_16
    if-nez v28, :cond_17

    .line 500
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v28

    .line 502
    :cond_17
    if-eqz v17, :cond_1a

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    move-result-object v26

    .line 504
    .local v26, "nearEntry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    :goto_e
    move-object/from16 v3, v26

    .line 506
    if-nez p5, :cond_18

    .line 507
    const/4 v4, 0x3

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object p5

    .line 509
    :cond_18
    if-nez v26, :cond_1b

    const/4 v4, 0x0

    :goto_f
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/LinkedHashMap;

    .line 513
    .local v24, "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    if-eqz v24, :cond_1c

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 514
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->remapCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    sget v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->MAX_REMAP_CNT:I

    if-le v4, v5, :cond_1c

    .line 515
    new-instance v4, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remap key to a new node after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->MAX_REMAP_CNT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " attempts (key got remapped to the same node) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", node="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mappings="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->onDone(Ljava/lang/Throwable;)Z
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 554
    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->reload:Z

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    if-nez v4, :cond_19

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    :cond_19
    move-object/from16 v29, p5

    .end local p5    # "savedVers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .restart local v29    # "savedVers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    goto/16 :goto_d

    .line 502
    .end local v24    # "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    .end local v26    # "nearEntry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .end local v29    # "savedVers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .restart local p5    # "savedVers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :cond_1a
    const/16 v26, 0x0

    goto/16 :goto_e

    .line 509
    .restart local v26    # "nearEntry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    :cond_1b
    :try_start_7
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->dhtVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    goto/16 :goto_f

    .line 524
    .restart local v24    # "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->optimistic()Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1d
    const/16 v16, 0x1

    .line 526
    .local v16, "addRdr":Z
    :goto_10
    if-nez v16, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->readCommitted()Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->writeSet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 527
    const/16 v16, 0x1

    .line 529
    :cond_1e
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/LinkedHashMap;

    .line 531
    .local v27, "old":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    if-nez v27, :cond_1f

    .line 532
    new-instance v27, Ljava/util/LinkedHashMap;

    .end local v27    # "old":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .restart local v27    # "old":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_1f
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_b

    .line 544
    .end local v16    # "addRdr":Z
    .end local v24    # "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    .end local v26    # "nearEntry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .end local v27    # "old":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    .end local v28    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    :catch_2
    move-exception v20

    .line 545
    .local v20, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    if-eqz v17, :cond_21

    :try_start_8
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v3

    .line 554
    :goto_11
    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->reload:Z

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    if-nez v4, :cond_1

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_1

    .line 524
    .end local v20    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v24    # "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    .restart local v26    # "nearEntry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .restart local v28    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_20
    const/16 v16, 0x0

    goto :goto_10

    .line 545
    .end local v24    # "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    .end local v26    # "nearEntry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .end local v28    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v20    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_21
    const/4 v3, 0x0

    goto :goto_11

    .line 547
    .end local v20    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catch_3
    move-exception v19

    .line 548
    .local v19, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :try_start_9
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 549
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filter validation failed for entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 554
    :cond_22
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->reload:Z

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    if-nez v4, :cond_8

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_c

    .line 554
    .end local v19    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :catchall_1
    move-exception v4

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->reload:Z

    if-nez v5, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    if-nez v5, :cond_23

    .line 555
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    :cond_23
    throw v4
.end method

.method private map(Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 41
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p2, "mapped":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->affinityNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v29

    .line 272
    .local v29, "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinityNode()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 275
    :cond_0
    new-instance v4, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    const-string v7, "Failed to map keys for near-only cache (all partition nodes left the grid)."

    invoke-direct {v4, v7}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 391
    :cond_1
    return-void

    .line 281
    :cond_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v6

    .line 283
    .local v6, "mappings":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;>;"
    const/4 v9, 0x0

    .line 286
    .local v9, "savedVers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .local v5, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    .line 287
    invoke-direct/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->map(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    goto :goto_0

    .line 289
    .end local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 292
    move-object/from16 v39, v9

    .line 294
    .local v39, "saved":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v36

    .line 297
    .local v36, "keysSize":I
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .end local v33    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/Map$Entry;

    .line 298
    .local v31, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lorg/apache/ignite/cluster/ClusterNode;

    .line 300
    .local v37, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/LinkedHashMap;

    .line 302
    .local v14, "mappedKeys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 305
    :cond_4
    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 306
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v10

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v11

    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->readThrough:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->reload:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->subjId:Ljava/util/UUID;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->taskName:Ljava/lang/String;

    if-nez v4, :cond_6

    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->skipVals:Z

    move/from16 v21, v0

    move-object/from16 v17, p3

    invoke-virtual/range {v10 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->getDhtAsync(Ljava/util/UUID;JLjava/util/LinkedHashMap;ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/UUID;ILorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;

    move-result-object v32

    .line 318
    .local v32, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;>;"
    invoke-interface/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;->invalidPartitions()Ljava/util/Collection;

    move-result-object v35

    .line 320
    .local v35, "invalidParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-static/range {v35 .. v35}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 321
    new-instance v38, Ljava/util/ArrayList;

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    .local v38, "remapKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 324
    .restart local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 325
    move-object/from16 v0, v38

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 306
    .end local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v32    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;>;"
    .end local v34    # "i$":Ljava/util/Iterator;
    .end local v35    # "invalidParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .end local v38    # "remapKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->taskName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v19

    goto :goto_2

    .line 328
    .restart local v32    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;>;"
    .restart local v34    # "i$":Ljava/util/Iterator;
    .restart local v35    # "invalidParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .restart local v38    # "remapKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_7
    new-instance v40, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v12

    move-object/from16 v0, v40

    invoke-direct {v0, v12, v13}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    .line 330
    .local v40, "updTopVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_8

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v4

    if-gtz v4, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got invalid partitions for local node but topology version did not change [topVer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", updTopVer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", invalidParts="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 335
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->map(Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 339
    .end local v34    # "i$":Ljava/util/Iterator;
    .end local v38    # "remapKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v40    # "updTopVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_9
    new-instance v11, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;

    move-object/from16 v12, p0

    move-object/from16 v13, v37

    move-object/from16 v15, v39

    move-object/from16 v16, p3

    invoke-direct/range {v11 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/LinkedHashMap;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    move-object/from16 v0, v32

    invoke-interface {v0, v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto/16 :goto_1

    .line 355
    .end local v32    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;>;"
    .end local v35    # "invalidParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->trackable:Z

    if-nez v4, :cond_b

    .line 356
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->trackable:Z

    .line 358
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 361
    :cond_b
    new-instance v11, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    move-object/from16 v12, p0

    move-object/from16 v13, v37

    move-object/from16 v15, v39

    move-object/from16 v16, p3

    invoke-direct/range {v11 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/LinkedHashMap;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 363
    .local v11, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>.MiniFuture;"
    new-instance v15, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->readThrough:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->reload:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->subjId:Ljava/util/UUID;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->taskName:Ljava/lang/String;

    if-nez v4, :cond_c

    const/16 v25, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->forAccess()J

    move-result-wide v26

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->skipVals:Z

    move/from16 v28, v0

    move-object/from16 v20, v14

    move-object/from16 v23, p3

    invoke-direct/range {v15 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/LinkedHashMap;ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/UUID;IJZ)V

    .line 377
    .local v15, "req":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 380
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v4, v0, v15, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 382
    :catch_0
    move-exception v30

    .line 384
    .local v30, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v30

    instance-of v4, v0, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    if-eqz v4, :cond_e

    .line 385
    check-cast v30, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    .end local v30    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    goto/16 :goto_1

    .line 363
    .end local v15    # "req":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->taskName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v25

    goto :goto_4

    :cond_d
    const-wide/16 v26, -0x1

    goto :goto_5

    .line 387
    .restart local v15    # "req":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    .restart local v30    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_e
    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->onResult(Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 183
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 164
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    .line 166
    .local v0, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->keys:Ljava/util/Collection;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->map(Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 168
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->markInitialized()V

    .line 169
    return-void

    .line 164
    .end local v0    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    goto :goto_0
.end method

.method public markNotTrackable()V
    .locals 0

    .prologue
    .line 179
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->futures()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;)V

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
    .line 47
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->onDone(Ljava/util/Map;Ljava/lang/Throwable;)Z

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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    .local p1, "res":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->trackable:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 244
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->cache()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->futures()Ljava/util/Collection;

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
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 208
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    .line 210
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

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

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    .line 213
    const/4 v3, 0x1

    .line 217
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>.MiniFuture;"
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;TV;>;>;"
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    .prologue
    .line 225
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->futures()Ljava/util/Collection;

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
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 227
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    .line 229
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

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
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V

    goto :goto_0

    .line 235
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>.MiniFuture;"
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;TV;>;>;"
    :cond_2
    return-void
.end method

.method public trackable()Z
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->trackable:Z

    return v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 188
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method
