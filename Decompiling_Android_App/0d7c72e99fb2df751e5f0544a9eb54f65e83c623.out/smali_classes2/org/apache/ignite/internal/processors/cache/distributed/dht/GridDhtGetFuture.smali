.class public final Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;
.super Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;
.source "GridDhtGetFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
        ">;>;",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

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

.field private expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private keys:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private msgId:J

.field private parts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;",
            ">;"
        }
    .end annotation
.end field

.field private readThrough:Z

.field private reader:Ljava/util/UUID;

.field private reload:Z

.field private retries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private skipVals:Z

.field private subjId:Ljava/util/UUID;

.field private taskNameHash:I

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field private tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

.field private ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->$assertionsDisabled:Z

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;JLjava/util/UUID;Ljava/util/LinkedHashMap;ZZLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/UUID;ILorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)V
    .locals 4
    .param p2, "msgId"    # J
    .param p4, "reader"    # Ljava/util/UUID;
    .param p6, "readThrough"    # Z
    .param p7, "reload"    # Z
    .param p8, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11, "taskNameHash"    # I
    .param p12, "expiryPlc"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13, "skipVals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;J",
            "Ljava/util/UUID;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Boolean;",
            ">;ZZ",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Ljava/util/UUID;",
            "I",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p5, "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->collectionsReducer()Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteReducer;)V

    .line 70
    new-instance v1, Lorg/apache/ignite/internal/util/GridLeanSet;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->parts:Ljava/util/Collection;

    .line 85
    new-instance v1, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->retries:Ljava/util/Collection;

    .line 129
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p4, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 130
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-static {p5}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 132
    :cond_1
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->reader:Ljava/util/UUID;

    .line 133
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 134
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->msgId:J

    .line 135
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->keys:Ljava/util/LinkedHashMap;

    .line 136
    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->readThrough:Z

    .line 137
    iput-boolean p7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->reload:Z

    .line 138
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    .line 139
    iput-object p9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 140
    iput-object p10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->subjId:Ljava/util/UUID;

    .line 141
    iput p11, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->taskNameHash:I

    .line 142
    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    .line 143
    move/from16 v0, p13

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->skipVals:Z

    .line 145
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 147
    if-nez p8, :cond_3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 149
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v1, :cond_2

    .line 150
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    .line 151
    :cond_2
    return-void

    .line 147
    :cond_3
    invoke-interface {p8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic access$000()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->readThrough:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->retries:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->parts:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/Collection;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->map(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;Ljava/util/LinkedHashMap;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;
    .param p1, "x1"    # Ljava/util/LinkedHashMap;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->getAsync(Ljava/util/LinkedHashMap;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->reload:Z

    return v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->skipVals:Z

    return v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cache()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    return-object v0
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
    .line 433
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    return-object v0
.end method

.method private getAsync(Ljava/util/LinkedHashMap;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture<TK;TV;>;"
    .local p1, "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 402
    :goto_0
    return-object v2

    .line 276
    :cond_0
    new-instance v21, Ljava/util/LinkedList;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    .line 278
    .local v21, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskName()Ljava/lang/String;

    move-result-object v23

    .line 280
    .local v23, "taskName0":Ljava/lang/String;
    if-nez v23, :cond_1

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->taskNameHash:I

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->resolveTaskName(I)Ljava/lang/String;

    move-result-object v23

    .line 283
    :cond_1
    move-object/from16 v7, v23

    .line 285
    .local v7, "taskName":Ljava/lang/String;
    const/16 v24, 0x0

    .line 287
    .local v24, "txFut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 289
    .local v22, "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cache()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v3

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v3, v2, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v15

    .line 292
    .local v15, "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :try_start_0
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->info()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 295
    .local v20, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    if-nez v20, :cond_2

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v2, v15, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_2

    .line 306
    :cond_2
    :try_start_1
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->deleted()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->skipVals:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->reader:Ljava/util/UUID;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->msgId:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v15, v2, v4, v5, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->addReader(Ljava/util/UUID;JLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v16

    .line 309
    .local v16, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    :goto_3
    if-eqz v16, :cond_4

    .line 310
    if-nez v24, :cond_3

    .line 311
    new-instance v25, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->boolReducer()Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>(Lorg/apache/ignite/lang/IgniteReducer;)V

    .end local v24    # "txFut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    .local v25, "txFut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    move-object/from16 v24, v25

    .line 313
    .end local v25    # "txFut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    .restart local v24    # "txFut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    :cond_3
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 316
    :cond_4
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v2, v15, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_1

    .line 306
    .end local v16    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    :cond_5
    const/16 v16, 0x0

    goto :goto_3

    .line 320
    .end local v20    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :catch_0
    move-exception v19

    .line 321
    .local v19, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_2
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 322
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got removed entry when getting a DHT value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v2, v15, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_2

    .end local v19    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v3, v15, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    throw v2

    .line 330
    .end local v15    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v22    # "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    :cond_7
    if-eqz v24, :cond_8

    .line 331
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->markInitialized()V

    .line 335
    :cond_8
    if-eqz v24, :cond_9

    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 336
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->reload:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->readThrough()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->configured()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 337
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cache()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->skipVals:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->subjId:Ljava/util/UUID;

    invoke-virtual/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->reloadAllAsync0(Ljava/util/Collection;ZZLjava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v17

    .line 402
    .local v17, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;>;"
    :goto_4
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$3;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;Ljava/util/Collection;)V

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto/16 :goto_0

    .line 344
    .end local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    if-nez v2, :cond_b

    .line 345
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cache()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->readThrough:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->subjId:Ljava/util/UUID;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->skipVals:Z

    invoke-virtual/range {v3 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->getDhtAllAsync(Ljava/util/Collection;ZLjava/util/UUID;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v17

    .restart local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;>;"
    goto :goto_4

    .line 353
    .end local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->skipVals:Z

    const/4 v14, 0x1

    invoke-interface/range {v8 .. v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->getAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v17

    .restart local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;>;"
    goto :goto_4

    .line 366
    .end local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;>;"
    :cond_c
    new-instance v17, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    .restart local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;>;"
    goto :goto_4
.end method

.method private map(Ljava/util/LinkedHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture<TK;TV;>;"
    .local p1, "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->dhtPreloader()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->request(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;

    move-result-object v0

    .line 200
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture<Ljava/lang/Object;>;"
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;->invalidPartitions()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->retries:Ljava/util/Collection;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;->invalidPartitions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 203
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;

    invoke-direct {v2, p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;Ljava/util/LinkedHashMap;)V

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 235
    return-void
.end method

.method private map(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/Collection;)Z
    .locals 8
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture<TK;TV;>;"
    .local p2, "parts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 243
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cache()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {v3, v4, v5, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v0

    .line 247
    .local v0, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :goto_0
    if-nez v0, :cond_2

    .line 261
    :cond_0
    :goto_1
    return v1

    .line 243
    .end local v0    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cache()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v3

    invoke-interface {v3, p1, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v0

    goto :goto_0

    .line 250
    .restart local v0    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 252
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->reserve()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 255
    goto :goto_1

    :cond_3
    move v1, v2

    .line 261
    goto :goto_1
.end method


# virtual methods
.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method init()V
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->keys:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->map(Ljava/util/LinkedHashMap;)V

    .line 159
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->markInitialized()V

    .line 160
    return-void
.end method

.method public invalidPartitions()Ljava/util/Collection;
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
    .line 164
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->retries:Ljava/util/Collection;

    return-object v0
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture<TK;TV;>;"
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->onDone(Ljava/util/Collection;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onDone(Ljava/util/Collection;Ljava/lang/Throwable;)Z
    .locals 3
    .param p2, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture<TK;TV;>;"
    .local p1, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->parts:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .line 186
    .local v1, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    goto :goto_0

    .line 188
    .end local v1    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :cond_0
    const/4 v2, 0x1

    .line 191
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method
