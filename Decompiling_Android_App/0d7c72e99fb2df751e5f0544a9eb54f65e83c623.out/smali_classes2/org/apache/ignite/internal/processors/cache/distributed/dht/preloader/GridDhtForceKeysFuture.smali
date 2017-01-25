.class public final Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;
.super Lorg/apache/ignite/internal/util/future/GridCompoundFuture;
.source "GridDhtForceKeysFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridCompoundFuture",
        "<",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TK;>;>;",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture",
        "<",
        "Ljava/util/Collection",
        "<TK;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final REMAP_PAUSE:J = 0x3e8L

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

.field private preloader:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

.field private topCntr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field private trackable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->$assertionsDisabled:Z

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)V
    .locals 4
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p3, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p4, "preloader":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>()V

    .line 71
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->invalidParts:Ljava/util/Collection;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->topCntr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 100
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 101
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 103
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 104
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->keys:Ljava/util/Collection;

    .line 105
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 106
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->preloader:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .line 108
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    .line 110
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v0, :cond_2

    .line 111
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    .line 112
    :cond_2
    return-void
.end method

.method static synthetic access$000()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;Ljava/lang/Iterable;Ljava/util/Collection;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;
    .param p1, "x1"    # Ljava/lang/Iterable;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->map(Ljava/lang/Iterable;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->topCntr:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
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
    .line 131
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private map(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/Map;Ljava/util/Collection;)V
    .locals 12
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    .local p2, "mappings":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    .local p3, "exc":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    .line 282
    .local v2, "loc":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v6

    .line 284
    .local v6, "part":I
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 287
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isNewLocked()Z

    move-result v8

    if-nez v8, :cond_1

    .line 288
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 289
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Will not rebalance key (entry is not new) [cacheName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", part="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", locId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 298
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received removed DHT entry for force keys request [entry="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", locId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 302
    .end local v1    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_1
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {v8, v6, v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->owners(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v5

    .line 305
    .local v5, "owners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->rebalanceEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 306
    :cond_2
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 307
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Will not rebalance key (local node is owner) [key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", part="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "topVer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", locId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 302
    .end local v5    # "owners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {v8, v6, v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->owners(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v10, 0x0

    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->notIn(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 315
    .restart local v5    # "owners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_4
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const/4 v10, 0x0

    invoke-interface {v8, v6, v9, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v3

    .line 317
    .local v3, "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 318
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Mapping local partition [loc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", topVer"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", part="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", owners="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", allOwners="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    invoke-interface {v10, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->owners(I)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 321
    :cond_5
    if-nez v3, :cond_6

    .line 322
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->invalidParts:Ljava/util/Collection;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 324
    :cond_6
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v8

    sget-object v9, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-ne v8, v9, :cond_b

    .line 325
    const/4 v8, 0x0

    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->nodeComparator(Z)Ljava/util/Comparator;

    move-result-object v8

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 328
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/cluster/ClusterNode;

    .line 330
    .local v7, "pick":Lorg/apache/ignite/cluster/ClusterNode;
    sget-boolean v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->$assertionsDisabled:Z

    if-nez v8, :cond_7

    if-nez v7, :cond_7

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 332
    :cond_7
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->rebalanceEnabled()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 333
    const/4 v8, 0x1

    new-array v8, v8, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v9, 0x0

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/F;->remoteNodes(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "pick":Lorg/apache/ignite/cluster/ClusterNode;
    check-cast v7, Lorg/apache/ignite/cluster/ClusterNode;

    .line 335
    .restart local v7    # "pick":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_8
    if-nez v7, :cond_9

    .line 336
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 337
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Will not rebalance key (no nodes to request from with rebalancing disabled) [key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", part="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", locId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :cond_9
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->newSet()Lorg/apache/ignite/lang/IgniteCallable;

    move-result-object v8

    invoke-static {p2, v7, v8}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 345
    .local v4, "mappedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    sget-boolean v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->$assertionsDisabled:Z

    if-nez v8, :cond_a

    if-nez v4, :cond_a

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 347
    :cond_a
    invoke-interface {v4, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 350
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Will rebalance key from node [cacheName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", part="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", node="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", locId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    .end local v4    # "mappedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v7    # "pick":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_b
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v8

    sget-object v9, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->OWNING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-eq v8, v9, :cond_c

    .line 354
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->invalidParts:Ljava/util/Collection;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 356
    :cond_c
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 357
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Will not rebalance key (local partition is not MOVING) [cacheName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", part="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", locId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private map(Ljava/lang/Iterable;Ljava/util/Collection;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p2, "exc":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v21, "mappings":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v19

    .line 215
    .local v19, "loc":Lorg/apache/ignite/cluster/ClusterNode;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->topCntr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    .line 217
    .local v8, "curTopVer":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 218
    .local v18, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->map(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    .line 220
    .end local v18    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->isDone()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 221
    const/16 v22, 0x0

    .line 271
    :cond_1
    return v22

    .line 223
    :cond_2
    const/16 v22, 0x0

    .line 225
    .local v22, "ret":Z
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 226
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->preloader:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->addFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)V

    .line 228
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->trackable:Z

    .line 231
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 232
    .local v20, "mapped":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cluster/ClusterNode;

    .line 233
    .local v6, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 235
    .local v7, "mappedKeys":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v7, v5}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v15

    .line 237
    .local v15, "cnt":I
    if-lez v15, :cond_3

    .line 238
    const/16 v22, 0x1

    .line 240
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;

    move-object/from16 v5, p0

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;ILjava/util/Collection;)V

    .line 242
    .local v4, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>.MiniFuture;"
    new-instance v9, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object v13, v7

    invoke-direct/range {v9 .. v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 250
    .local v9, "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 252
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :catch_0
    move-exception v16

    .line 262
    .local v16, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v16

    instance-of v5, v0, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    if-eqz v5, :cond_6

    .line 263
    check-cast v16, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    .end local v16    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    goto :goto_1

    .line 254
    :cond_4
    :try_start_1
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 255
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending force key request [cacheName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "node="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", req="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 258
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v10

    invoke-virtual {v5, v6, v9, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 265
    .restart local v16    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->onResult(Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 198
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->startFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->keys:Ljava/util/Collection;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->map(Ljava/lang/Iterable;Ljava/util/Collection;)Z

    .line 202
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->markInitialized()V

    .line 203
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
    .line 123
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->invalidParts:Ljava/util/Collection;

    return-object v0
.end method

.method public onDiscoveryEvent(Lorg/apache/ignite/events/DiscoveryEvent;)V
    .locals 7
    .param p1, "evt"    # Lorg/apache/ignite/events/DiscoveryEvent;

    .prologue
    .line 151
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->topCntr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 153
    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v3

    .line 155
    .local v3, "type":I
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->futures()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 156
    .local v0, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 157
    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;

    .line 159
    .local v2, "mini":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->onDiscoveryEvent()V

    .line 161
    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    .line 162
    :cond_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    new-instance v4, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Node left grid (will retry): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    .line 171
    .end local v0    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    .end local v2    # "mini":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>.MiniFuture;"
    :cond_2
    return-void
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->onDone(Ljava/util/Collection;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onDone(Ljava/util/Collection;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TK;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    .local p1, "res":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->trackable:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->preloader:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->remoteFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)V

    .line 140
    :cond_0
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;

    .prologue
    .line 179
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->futures()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 180
    .local v0, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 181
    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;

    .line 183
    .local v2, "mini":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-virtual {v2, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;)V

    .line 192
    .end local v0    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    .end local v2    # "mini":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>.MiniFuture;"
    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find mini future for response [cacheName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
