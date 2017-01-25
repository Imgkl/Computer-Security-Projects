.class public final Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;
.super Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;
.source "GridDhtLockFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture;
.implements Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;
.implements Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;,
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$LockTimeoutObject;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;"
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
.field private accessTtl:J

.field private cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private dhtMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private err:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private invalidParts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private mapped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mux:Ljava/lang/Object;

.field private nearLockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private nearNodeId:Ljava/util/UUID;

.field private needReturnValue:Z

.field private final pendingLocks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation
.end field

.field private read:Z

.field private threadId:J

.field private volatile timedOut:Z

.field private timeout:J

.field private timeoutObj:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$LockTimeoutObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture",
            "<TK;TV;>.",
            "LockTimeoutObject;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field private trackable:Z

.field private tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->$assertionsDisabled:Z

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;IZZJLorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;JJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 7
    .param p2, "nearNodeId"    # Ljava/util/UUID;
    .param p3, "nearLockVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "cnt"    # I
    .param p6, "read"    # Z
    .param p7, "needReturnValue"    # Z
    .param p8, "timeout"    # J
    .param p10, "tx"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    .param p11, "threadId"    # J
    .param p13, "accessTtl"    # J
    .param p15, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "IZZJ",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;",
            "JJ[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->boolReducer()Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteReducer;)V

    .line 83
    new-instance v2, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v2}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->dhtMap:Ljava/util/Map;

    .line 96
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    .line 115
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->mapped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    new-instance v2, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->invalidParts:Ljava/util/Collection;

    .line 121
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->trackable:Z

    .line 124
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->mux:Ljava/lang/Object;

    .line 127
    new-instance v2, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->pendingLocks:Ljava/util/Collection;

    .line 163
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 164
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 165
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p4}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 167
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 168
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->nearNodeId:Ljava/util/UUID;

    .line 169
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->nearLockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 170
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 171
    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->read:Z

    .line 172
    iput-boolean p7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->needReturnValue:Z

    .line 173
    iput-wide p8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->timeout:J

    .line 174
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 175
    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    .line 176
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->accessTtl:J

    .line 178
    if-eqz p10, :cond_3

    .line 179
    move-object/from16 v0, p10

    invoke-virtual {v0, p4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 181
    :cond_3
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-eqz p10, :cond_4

    invoke-virtual/range {p10 .. p10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->threadId()J

    move-result-wide v2

    cmp-long v2, p11, v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 183
    :cond_4
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->threadId:J

    .line 185
    if-eqz p10, :cond_8

    .line 186
    invoke-virtual/range {p10 .. p10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 194
    :cond_5
    :goto_0
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->entries:Ljava/util/List;

    .line 198
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v2, :cond_6

    .line 199
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    sput-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    .line 201
    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-lez v2, :cond_7

    .line 202
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$LockTimeoutObject;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$LockTimeoutObject;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$LockTimeoutObject;

    .line 204
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$LockTimeoutObject;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 206
    :cond_7
    return-void

    .line 188
    :cond_8
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->mappedVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 190
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    if-nez v2, :cond_5

    .line 191
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->onReceivedAndNext(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;Lorg/apache/ignite/internal/IgniteInternalFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;
    .param p1, "x1"    # Lorg/apache/ignite/internal/IgniteInternalFuture;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    .prologue
    .line 50
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->timeout:J

    return-wide v0
.end method

.method static synthetic access$400()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$502(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->timedOut:Z

    return p1
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onComplete(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->dhtMap:Ljava/util/Map;

    return-object v0
.end method

.method private addOwned(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .locals 5
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;
    .param p2, "e"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .prologue
    .line 902
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {p2, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->candidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 904
    .local v0, "added":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    .end local v0    # "added":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :catch_0
    move-exception v1

    .line 913
    .local v1, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 914
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got removed entry when creating DHT lock request (will retry): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 916
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object p2

    .line 917
    goto :goto_0

    .line 905
    .end local v1    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v0    # "added":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_1
    :try_start_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->dhtLocal()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 907
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ownerVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 908
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ownerVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->owned(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 920
    :cond_3
    return-object p2
.end method

.method private checkLocks()Z
    .locals 1

    .prologue
    .line 638
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->pendingLocks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private filter(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 5
    .param p1, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 592
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {v3, p1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 593
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filter didn\'t pass for entry (will fail lock): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 596
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onFailed(Z)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 601
    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private implicitSingle()Z
    .locals 1

    .prologue
    .line 303
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->implicitSingle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inTx()Z
    .locals 1

    .prologue
    .line 296
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInvalidate()Z
    .locals 1

    .prologue
    .line 310
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->isInvalidate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 714
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isolation()Lorg/apache/ignite/transactions/TransactionIsolation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v0

    goto :goto_0
.end method

.method private loadMissingFromStore()V
    .locals 9

    .prologue
    .line 937
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->loadPreviousValue()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->readThrough()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->needReturnValue:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->read:Z

    if-eqz v5, :cond_3

    .line 938
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 940
    .local v3, "loadMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    .line 942
    .local v4, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->entries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .line 943
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->hasValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 944
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 948
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :cond_2
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    new-instance v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;

    invoke-direct {v8, p0, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$3;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "loadMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .end local v4    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_3
    :goto_1
    return-void

    .line 974
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "loadMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .restart local v4    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_1
.end method

.method private locked(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 1
    .param p1, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedLocally(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->filter(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private locked(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 4
    .param p1, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "owner"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 336
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->threadId:J

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->matches(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->filter(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private map(Ljava/lang/Iterable;)V
    .locals 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 734
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->mapped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 735
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 736
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Will not map DHT lock future (other thread is mapping): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    :try_start_0
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 743
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mapping entry for DHT lock future: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 745
    :cond_2
    const/16 v38, 0x0

    .line 748
    .local v38, "hasRmtNodes":Z
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .local v39, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    .local v7, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->nearNodeId:Ljava/util/UUID;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->dhtMap:Ljava/util/Map;

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dhtMap(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/IgniteLogger;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v38

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v7, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->mappings(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v33

    .line 757
    .local v33, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-nez v33, :cond_3

    .line 758
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onFailed(Z)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 890
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->markInitialized()V

    goto :goto_0

    .line 766
    .end local v33    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :catch_0
    move-exception v40

    .line 767
    .local v40, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_2
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 768
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got removed entry when mapping DHT lock future (will retry): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 770
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v4

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 771
    goto :goto_1

    .line 774
    .end local v40    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catch_1
    move-exception v35

    .line 775
    .local v35, "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :try_start_3
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DHT lock should never get invalid partition [err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 890
    .end local v7    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v35    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    .end local v38    # "hasRmtNodes":Z
    .end local v39    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->markInitialized()V

    throw v4

    .line 779
    .restart local v38    # "hasRmtNodes":Z
    .restart local v39    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    if-eqz v4, :cond_6

    .line 780
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->needsCompletedVersions(Z)V

    .line 782
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->isDone()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 783
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 784
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mapping won\'t proceed because future is done: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 890
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->markInitialized()V

    goto/16 :goto_0

    .line 789
    :cond_8
    :try_start_5
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 790
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mapped DHT lock future [dhtMap="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->dhtMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dhtLockFut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 793
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->dhtMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_a
    :goto_2
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/Map$Entry;

    .line 794
    .local v43, "mapped":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/apache/ignite/cluster/ClusterNode;

    .line 796
    .local v44, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/List;

    .line 798
    .local v34, "dhtMapping":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v24

    .line 800
    .local v24, "cnt":I
    if-lez v24, :cond_a

    .line 801
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_b

    invoke-interface/range {v44 .. v44}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 803
    :cond_b
    new-instance v37, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List;)V

    .line 805
    .local v37, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>.MiniFuture;"
    new-instance v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->nearNodeId:Ljava/util/UUID;

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->inTx()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v11

    :goto_3
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->threadId:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->inTx()Z

    move-result v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->read:Z

    move/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->isInvalidate()Z

    move-result v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->timeout:J

    move-wide/from16 v22, v0

    const/16 v25, 0x0

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->inTx()Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->size()I

    move-result v26

    :goto_4
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->inTx()Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v27

    :goto_5
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->inTx()Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->partitionLock()Z

    move-result v4

    if-eqz v4, :cond_13

    const/16 v28, 0x1

    :goto_6
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->inTx()Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->subjectId()Ljava/util/UUID;

    move-result-object v29

    :goto_7
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->inTx()Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->taskNameHash()I

    move-result v30

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->read:Z

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->accessTtl:J

    move-wide/from16 v31, v0

    :goto_9
    invoke-direct/range {v8 .. v32}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;-><init>(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZLorg/apache/ignite/transactions/TransactionIsolation;ZJIIILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZLjava/util/UUID;IJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 829
    .local v8, "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;
    :try_start_6
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v42

    .local v42, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    :cond_c
    :goto_a
    invoke-interface/range {v42 .. v42}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 830
    invoke-interface/range {v42 .. v42}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .line 833
    .local v35, "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 835
    const/16 v45, 0x0

    .line 838
    .local v45, "needVal":Z
    :try_start_7
    invoke-virtual/range {v35 .. v35}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->isNewLocked()Z

    move-result v45

    .line 840
    if-eqz v45, :cond_d

    .line 841
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->partition()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    :goto_b
    invoke-interface {v5, v6, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->owners(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v46

    .line 845
    .local v46, "owners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v4

    if-eqz v4, :cond_d

    .line 846
    const/16 v45, 0x0

    .line 855
    .end local v46    # "owners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_d
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    if-eqz v4, :cond_e

    if-eqz v45, :cond_c

    .line 858
    :cond_e
    invoke-interface/range {v44 .. v44}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->readerId(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    move-result-object v4

    if-eqz v4, :cond_18

    const/16 v41, 0x1

    .line 860
    .local v41, "invalidateRdr":Z
    :goto_c
    invoke-virtual/range {v35 .. v35}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move/from16 v0, v41

    invoke-virtual {v8, v4, v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->addDhtKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZLorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 865
    if-eqz v45, :cond_f

    .line 867
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->markLastKeyForPreload()V

    .line 869
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v8, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->addOwned(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-interface {v0, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V
    :try_end_8
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_a

    .line 879
    .end local v35    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v41    # "invalidateRdr":Z
    .end local v42    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .end local v45    # "needVal":Z
    :catch_2
    move-exception v35

    .line 881
    .local v35, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_9
    move-object/from16 v0, v35

    instance-of v4, v0, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    if-eqz v4, :cond_1b

    .line 882
    check-cast v35, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    .end local v35    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 805
    .end local v8    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_11
    move/from16 v26, v24

    goto/16 :goto_4

    :cond_12
    const/16 v27, 0x0

    goto/16 :goto_5

    :cond_13
    const/16 v28, 0x0

    goto/16 :goto_6

    :cond_14
    const/16 v29, 0x0

    goto/16 :goto_7

    :cond_15
    const/16 v30, 0x0

    goto/16 :goto_8

    :cond_16
    const-wide/16 v31, -0x1

    goto/16 :goto_9

    .line 841
    .restart local v8    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;
    .local v35, "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v42    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .restart local v45    # "needVal":Z
    :cond_17
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :try_end_a
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v4

    goto/16 :goto_b

    .line 849
    :catch_3
    move-exception v36

    .line 850
    .local v36, "ex":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_b
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_d

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entry cannot become obsolete when DHT local candidate is added [e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 858
    .end local v36    # "ex":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_18
    const/16 v41, 0x0

    goto/16 :goto_c

    .line 872
    .end local v35    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v45    # "needVal":Z
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 874
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 875
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending DHT lock request to DHT node [node="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v44 .. v44}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", req="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 877
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v4, v0, v8, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_b
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 884
    .end local v42    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .local v35, "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_1b
    :try_start_c
    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;->onResult(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 890
    .end local v8    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;
    .end local v24    # "cnt":I
    .end local v34    # "dhtMapping":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .end local v35    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v37    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>.MiniFuture;"
    .end local v43    # "mapped":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .end local v44    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->markInitialized()V

    goto/16 :goto_0
.end method

.method private onComplete(Z)Z
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    const/4 v1, 0x1

    .line 681
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received onComplete(..) callback [success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 684
    :cond_0
    if-nez p1, :cond_1

    .line 685
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->undoLocks(Z)V

    .line 687
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    if-eqz v0, :cond_2

    .line 688
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txContext(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 690
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 691
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->loadMissingFromStore()V

    .line 693
    :cond_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-super {p0, v2, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 694
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 695
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completing future: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 698
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 700
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$LockTimeoutObject;

    if-eqz v0, :cond_5

    .line 701
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$LockTimeoutObject;

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    :cond_5
    move v0, v1

    .line 706
    :goto_0
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFailed(Z)V
    .locals 1
    .param p1, "dist"    # Z

    .prologue
    .line 455
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->undoLocks(Z)V

    .line 457
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onComplete(Z)Z

    .line 458
    return-void
.end method

.method private readyLocks()V
    .locals 8

    .prologue
    .line 528
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 529
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Marking local locks as ready for DHT lock future: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 531
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 533
    :goto_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->entries:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    .line 535
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    if-nez v0, :cond_2

    .line 531
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :cond_2
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->readyLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v3

    .line 541
    .local v3, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->timeout:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 542
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 544
    :cond_3
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onFailed(Z)V

    .line 568
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v3    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_4
    return-void

    .line 550
    .restart local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v3    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_5
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 551
    invoke-direct {p0, v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->locked(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 552
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entry is not locked (will keep waiting) [entry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 560
    .end local v3    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :catch_0
    move-exception v2

    .line 561
    .local v2, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 562
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Failed to ready lock because entry was removed (will renew)."

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 564
    :cond_6
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->entries:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    invoke-interface {v5, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private undoLocks(Z)V
    .locals 11
    .param p1, "dist"    # Z

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    const/4 v10, 0x0

    .line 405
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->entriesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 407
    .local v1, "entriesCp":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    if-eqz p1, :cond_1

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    if-nez v5, :cond_1

    .line 408
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dhtTx()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->nearNodeId:Ljava/util/UUID;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    new-instance v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$2;

    invoke-direct {v8, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;)V

    new-array v9, v10, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v1, v8, v9}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->removeLocks(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Iterable;Z)V

    .line 448
    :cond_0
    return-void

    .line 416
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    if-eqz v5, :cond_2

    .line 417
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->setRollbackOnly()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 418
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 419
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Marked transaction as rollback only because locks could not be acquired: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 425
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 427
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 429
    :catch_0
    move-exception v4

    .line 432
    .local v4, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_4
    :goto_2
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_3

    .line 435
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 439
    :catch_1
    move-exception v3

    .line 440
    .local v3, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 441
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to remove lock on removed entry (will retry) [ver="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 421
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v4    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_5
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 422
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transaction was not marked rollback-only while locks were not acquired: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addEntry(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 14
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;,
            Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 349
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 352
    :cond_0
    if-nez p1, :cond_2

    move-object v12, v13

    .line 395
    :cond_1
    :goto_0
    return-object v12

    .line 356
    :cond_2
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->timedOut:Z

    if-eqz v0, :cond_3

    move-object v12, v13

    .line 357
    goto :goto_0

    .line 360
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->nearNodeId:Ljava/util/UUID;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->nearLockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->threadId:J

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-wide v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->timeout:J

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->inTx()Z

    move-result v10

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->implicitSingle()Z

    move-result v11

    move-object v0, p1

    invoke-virtual/range {v0 .. v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->addDhtLocal(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v12

    .line 372
    .local v12, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-nez v12, :cond_5

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->timeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 373
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to acquire lock with negative timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 376
    :cond_4
    invoke-direct {p0, v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onFailed(Z)V

    move-object v12, v13

    .line 378
    goto :goto_0

    .line 381
    :cond_5
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 382
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->entries:Ljava/util/List;

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    move-object v0, v13

    :goto_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v0

    if-nez v0, :cond_7

    .line 386
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->pendingLocks:Ljava/util/Collection;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_7
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->timedOut:Z

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-object v12, v13

    .line 392
    goto :goto_0

    :cond_8
    move-object v0, p1

    .line 382
    goto :goto_1

    .line 383
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method addInvalidPartition(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V
    .locals 3
    .param p2, "invalidPart"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    .local p1, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->invalidParts:Ljava/util/Collection;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->addInvalidPartition(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V

    .line 224
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added invalid partition to future [invalidPart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fut="

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

    .line 226
    :cond_1
    return-void
.end method

.method public cancel()Z
    .locals 1

    .prologue
    .line 643
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onComplete(Z)Z

    .line 646
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->entries:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->notNull()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public entriesCopy()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->entries()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 277
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 925
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v0

    return v0
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
    .line 210
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->invalidParts:Ljava/util/Collection;

    return-object v0
.end method

.method public map()V
    .locals 1

    .prologue
    .line 721
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->entries:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onComplete(Z)Z

    .line 728
    :goto_0
    return-void

    .line 727
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->readyLocks()V

    goto :goto_0
.end method

.method public mappedVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->nearLockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markNotTrackable()V
    .locals 1

    .prologue
    .line 254
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->trackable:Z

    .line 255
    return-void
.end method

.method public nearLockVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->nearLockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
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
    .line 232
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->futures()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onDone(Ljava/lang/Boolean;Ljava/lang/Throwable;)Z
    .locals 5
    .param p1, "success"    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    const/16 v4, 0x5d

    const/4 v0, 0x0

    .line 652
    if-nez p1, :cond_1

    .line 653
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 655
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 658
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 659
    :cond_2
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->initialized()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->hasPending()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid done callback [success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 662
    :cond_4
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 663
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received onDone(..) callback [success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 666
    :cond_5
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->checkLocks()Z

    move-result v1

    if-nez v1, :cond_7

    .line 671
    :cond_6
    :goto_0
    return v0

    .line 669
    :cond_7
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 671
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onComplete(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onDone(Ljava/lang/Boolean;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 582
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onComplete(Z)Z

    .line 584
    :cond_0
    return-void
.end method

.method public onError(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;)V
    .locals 2
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;

    .prologue
    .line 574
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onComplete(Z)Z

    .line 576
    :cond_0
    return-void
.end method

.method public onNodeLeft(Ljava/util/UUID;)Z
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 466
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    const/4 v1, 0x0

    .line 468
    .local v1, "found":Z
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->futures()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 469
    .local v2, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 470
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;

    .line 472
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 473
    new-instance v4, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote node left grid (will ignore): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    .line 475
    const/4 v1, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>.MiniFuture;"
    .end local v2    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :cond_1
    return v1
.end method

.method public onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 4
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "owner"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    const/4 v0, 0x0

    .line 616
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 631
    :cond_0
    :goto_0
    return v0

    .line 619
    :cond_1
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 620
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received onOwnerChanged() callback [entry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", owner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 622
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->pendingLocks:Ljava/util/Collection;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 625
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->checkLocks()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 626
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->map(Ljava/lang/Iterable;)V

    .line 628
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;)V
    .locals 8
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    const/16 v7, 0x5d

    .line 488
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->isDone()Z

    move-result v4

    if-nez v4, :cond_5

    .line 489
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 490
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received lock response from node [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", res="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 492
    :cond_0
    const/4 v0, 0x0

    .line 494
    .local v0, "found":Z
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->pending()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 495
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 496
    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;

    .line 498
    .local v3, "mini":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 499
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 501
    :cond_2
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 502
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found mini future for response [mini="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", res="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 504
    :cond_3
    const/4 v0, 0x1

    .line 506
    invoke-virtual {v3, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;)V

    .line 508
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 509
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Futures after processed lock response [fut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mini="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", res="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 517
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .end local v3    # "mini":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>.MiniFuture;"
    :cond_4
    if-nez v0, :cond_5

    .line 518
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find mini future for response (perhaps due to stale message) [res="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 521
    .end local v0    # "found":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 930
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackable()Z
    .locals 1

    .prologue
    .line 249
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->trackable:Z

    return v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method
