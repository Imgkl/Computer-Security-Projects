.class public Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter;
.source "GridCacheMvccManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_REMOVED_LOCKS:I = 0x2800


# instance fields
.field private final atomicFuts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final cb:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCallback;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private dhtLocCands:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation
.end field

.field private final discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private exchLog:Lorg/apache/ignite/IgniteLogger;

.field private final finishFuts:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final futs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture",
            "<*>;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final locked:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final near2dht:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation
.end field

.field private final nearLocked:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final pending:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;>;"
        }
    .end annotation
.end field

.field private pendingExplicit:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;",
            ">;"
        }
    .end annotation
.end field

.field private rmvLocks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v1, 0x2800

    .line 49
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter;-><init>()V

    .line 54
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pending:Ljava/lang/ThreadLocal;

    .line 65
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    const/high16 v3, 0x3f400000    # 0.75f

    const/16 v4, 0x10

    sget-object v5, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->PER_SEGMENT_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;-><init>(IIFILorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->rmvLocks:Ljava/util/Collection;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->dhtLocCands:Ljava/util/Collection;

    .line 72
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->newMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->locked:Ljava/util/concurrent/ConcurrentMap;

    .line 76
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->newMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->nearLocked:Ljava/util/concurrent/ConcurrentMap;

    .line 80
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->newMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    .line 84
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->atomicFuts:Ljava/util/concurrent/ConcurrentMap;

    .line 88
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->newMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->near2dht:Ljava/util/concurrent/ConcurrentMap;

    .line 91
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->finishFuts:Ljava/util/Queue;

    .line 98
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->cb:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCallback;

    .line 167
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$3;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 1051
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->finishFuts:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->nearLocked:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->locked:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->locked()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->atomicFuts:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->exchLog:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private finishLocks(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .param p1    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1002
    .local p1, "keyFilter":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1004
    :cond_0
    sget-object v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {p2, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1005
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    .line 1034
    :goto_0
    return-object v0

    .line 1007
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;

    if-nez p1, :cond_2

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->locked()Ljava/util/Collection;

    move-result-object v1

    :goto_1
    invoke-direct {v0, p0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 1019
    .local v0, "finishFut":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->finishFuts:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1021
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$8;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$8;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 1032
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->recheck()V

    goto :goto_0

    .line 1007
    .end local v0    # "finishFut":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;
    :cond_2
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->locked()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$7;

    invoke-direct {v4, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$7;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;Lorg/apache/ignite/lang/IgnitePredicate;)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_1
.end method

.method private locked()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->locked:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->nearLocked:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private nodeIdFilter(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 913
    if-nez p1, :cond_0

    .line 914
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    .line 916
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$5;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method private unlink(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V
    .locals 5
    .param p1, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 649
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->next()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 651
    .local v0, "next":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->previous()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v1

    .line 654
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->previous(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 656
    if-eqz v1, :cond_0

    .line 657
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->next(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 668
    .end local v1    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 669
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unlinked lock candidate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 670
    :cond_1
    return-void
.end method


# virtual methods
.method public addAtomicFuture(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture;)V
    .locals 2
    .param p1, "futVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p2, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture<*>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->atomicFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 319
    .local v0, "old":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 320
    :cond_0
    return-void
.end method

.method public addExplicitLock(JLorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 7
    .param p1, "threadId"    # J
    .param p3, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .param p4, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 742
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pendingExplicit:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;

    .line 744
    .local v1, "span":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    if-nez v1, :cond_2

    .line 745
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;

    .end local v1    # "span":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    invoke-direct {v1, p4, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;-><init>(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 747
    .restart local v1    # "span":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pendingExplicit:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;

    .line 749
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    if-nez v0, :cond_1

    .line 761
    .end local v0    # "old":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    :cond_0
    return-void

    .line 752
    .restart local v0    # "old":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    :cond_1
    move-object v1, v0

    .line 756
    .end local v0    # "old":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    :cond_2
    invoke-virtual {v1, p4, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->addCandidate(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 759
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pendingExplicit:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture<*>;"
    const/4 v7, 0x1

    .line 355
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->isDone()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 356
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->markNotTrackable()V

    move v6, v7

    .line 444
    :goto_0
    return v6

    .line 361
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->trackable()Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v7

    .line 362
    goto :goto_0

    .line 365
    :cond_1
    :goto_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    new-instance v9, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$4;

    invoke-direct {v9, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$4;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)V

    invoke-interface {v6, v8, v9}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 388
    .local v5, "old":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheFuture<*>;>;"
    if-eqz v5, :cond_6

    .line 389
    const/4 v0, 0x0

    .line 391
    .local v0, "dup":Z
    monitor-enter v5

    .line 392
    :try_start_0
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    .line 394
    .local v1, "empty":Z
    if-nez v1, :cond_2

    .line 395
    invoke-interface {v5, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 397
    :cond_2
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 398
    invoke-interface {v5, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    if-eqz v1, :cond_4

    .line 403
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-interface {v6, v8, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 404
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 405
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removed future list from futures map for lock version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 399
    .end local v1    # "empty":Z
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 411
    .restart local v1    # "empty":Z
    :cond_4
    if-eqz v0, :cond_6

    .line 412
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 413
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found duplicate future in futures map (will not add): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 415
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 420
    .end local v0    # "dup":Z
    .end local v1    # "empty":Z
    :cond_6
    instance-of v6, p1, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;

    if-eqz v6, :cond_7

    move-object v6, p1

    .line 421
    check-cast v6, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;->mappedVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    .line 423
    .local v2, "from":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v2, :cond_7

    .line 424
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->mapVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 427
    .end local v2    # "from":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_7
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 428
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Added future to future map: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 435
    :cond_8
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->nodes()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cluster/ClusterNode;

    .line 436
    .local v4, "n":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    if-nez v6, :cond_9

    .line 437
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->onNodeLeft(Ljava/util/UUID;)Z

    goto :goto_2

    .line 441
    .end local v4    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_a
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->isDone()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 442
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    :cond_b
    move v6, v7

    .line 444
    goto/16 :goto_0
.end method

.method public addLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 3
    .param p1, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 591
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 592
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->local()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 594
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->dhtLocal()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->dhtLocCands:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 595
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added local candidate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 598
    :cond_2
    const/4 v0, 0x1

    .line 601
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addNext(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 8
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 679
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p2, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 680
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Lock reentries should not be linked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 684
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->singleImplicit()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 685
    :cond_2
    const/4 v0, 0x1

    .line 723
    :cond_3
    :goto_0
    return v0

    .line 687
    :cond_4
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pending:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    .line 689
    .local v4, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    const/4 v0, 0x1

    .line 691
    .local v0, "add":Z
    const/4 v3, 0x0

    .line 693
    .local v3, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 694
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 696
    .local v1, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 697
    const/4 v0, 0x0

    .line 699
    :cond_5
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->used()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 700
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 702
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->unlink(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    goto :goto_1

    .line 707
    :cond_6
    move-object v3, v1

    .line 708
    goto :goto_1

    .line 710
    .end local v1    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_7
    if-eqz v0, :cond_3

    .line 711
    invoke-interface {v4, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 713
    if-eqz v3, :cond_8

    .line 714
    invoke-virtual {v3, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->next(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 716
    invoke-virtual {p2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->previous(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 719
    :cond_8
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 720
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Linked new candidate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addRemoved(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 4
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 534
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 535
    :cond_0
    const/4 v0, 0x1

    .line 542
    :cond_1
    :goto_0
    return v0

    .line 537
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->rmvLocks:Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 539
    .local v0, "ret":Z
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added removed lock version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public atomicFuture(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "futVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->atomicFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/IgniteInternalFuture;

    return-object v0
.end method

.method public atomicFutures()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->atomicFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public callback()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCallback;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->cb:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCallback;

    return-object v0
.end method

.method public cancelClientFutures()V
    .locals 7

    .prologue
    .line 276
    new-instance v0, Lorg/apache/ignite/IgniteException;

    const-string v6, "Operation has been cancelled (grid is stopping)."

    invoke-direct {v0, v6}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "e":Lorg/apache/ignite/IgniteException;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 279
    .local v3, "futures":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheFuture<*>;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    .line 280
    .local v2, "future":Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture<*>;"
    check-cast v2, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .end local v2    # "future":Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture<*>;"
    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 283
    .end local v3    # "futures":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheFuture<*>;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->atomicFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture;

    .line 284
    .local v1, "future":Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture<*>;"
    check-cast v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .end local v1    # "future":Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture<*>;"
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 285
    :cond_2
    return-void
.end method

.method public contextReset()V
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pending:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 731
    return-void
.end method

.method public explicitLock(JLorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 5
    .param p1, "threadId"    # J
    .param p3, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 858
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 859
    invoke-virtual {p0, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->explicitLock(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v1

    .line 863
    :cond_0
    :goto_0
    return-object v1

    .line 861
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pendingExplicit:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;

    .line 863
    .local v0, "span":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->candidate(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v1

    goto :goto_0
.end method

.method public explicitLock(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 4
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 875
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pendingExplicit:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;

    .line 876
    .local v2, "span":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    invoke-virtual {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->candidate(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 878
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v0, :cond_0

    .line 882
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v2    # "span":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishAtomicUpdates(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 963
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>()V

    .line 965
    .local v2, "res":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->ignoreChildFailures([Ljava/lang/Class;)V

    .line 967
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->atomicFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture;

    .line 968
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture<*>;"
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture;->waitForPartitionExchange()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v3

    if-gez v3, :cond_0

    .line 969
    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_0

    .line 972
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture<*>;"
    :cond_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->markInitialized()V

    .line 974
    return-object v2
.end method

.method public finishExplicitLocks(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 943
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>()V

    .line 945
    .local v1, "res":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pendingExplicit:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;

    .line 946
    .local v3, "span":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    .line 948
    .local v2, "snapshot":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v4

    if-gez v4, :cond_0

    .line 949
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->releaseFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_0

    .line 952
    .end local v2    # "snapshot":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v3    # "span":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    :cond_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->markInitialized()V

    .line 954
    return-object v1
.end method

.method public finishKeys(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 984
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    instance-of v2, p1, Ljava/util/Set;

    if-nez v2, :cond_0

    .line 985
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .end local p1    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local v0, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    move-object p1, v0

    .line 987
    .end local v0    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local p1    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_0
    move-object v1, p1

    .line 989
    .local v1, "keys0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$6;

    invoke-direct {v2, p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$6;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;Ljava/util/Collection;)V

    invoke-direct {p0, v2, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->finishLocks(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    return-object v2
.end method

.method public finishLocks(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 931
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->ZERO:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 932
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->finishLocks(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public future(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;
    .locals 6
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 492
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 494
    .local v1, "futs":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;>;"
    if-eqz v1, :cond_2

    .line 495
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    .line 496
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture<*>;"
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 498
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found future in futures map: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 506
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture<*>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-object v0

    .line 503
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 504
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find future in futures map [ver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", futId="

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

    .line 506
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public futures(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 516
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 518
    .local v0, "c":Ljava/util/Collection;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .end local v0    # "c":Ljava/util/Collection;
    :cond_0
    return-object v0
.end method

.method public hasFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture<*>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 309
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->future(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLockedByThread(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;J)Z
    .locals 10
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "threadId"    # J

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 786
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-gez v5, :cond_2

    .line 787
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pendingExplicit:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;

    .line 788
    .local v2, "span":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    invoke-virtual {v2, p1, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->candidate(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 790
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 804
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "span":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    :cond_1
    :goto_0
    return v3

    .line 795
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pendingExplicit:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;

    .line 797
    .restart local v2    # "span":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    if-eqz v2, :cond_4

    .line 798
    invoke-virtual {v2, p1, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->candidate(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 800
    .restart local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_3
    move v3, v4

    goto :goto_0

    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v2    # "span":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    :cond_4
    move v3, v4

    .line 804
    goto :goto_0
.end method

.method public isRemoved(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 1
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 526
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->rmvLocks:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastExplicitLockTopologyVersion(J)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 3
    .param p1, "threadId"    # J
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 890
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pendingExplicit:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;

    .line 892
    .local v0, "span":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public localCandidates()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 574
    .local v2, "locCands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->locked()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    .line 576
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->localCandidates([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 578
    :catch_0
    move-exception v3

    goto :goto_0

    .line 583
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    :cond_0
    return-object v2
.end method

.method public localDhtPendingVersions(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;
    .locals 4
    .param p2, "base"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 629
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    new-instance v2, Lorg/apache/ignite/internal/util/GridLeanSet;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>(I)V

    .line 631
    .local v2, "lessPending":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->dhtLocCands:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 632
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->isLess(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 633
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 640
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_1
    return-object v2
.end method

.method public mapVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 4
    .param p1, "from"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "to"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 246
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 247
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 249
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->near2dht:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 251
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_2

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 253
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added version mapping [from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 255
    :cond_3
    return-void
.end method

.method public mappedVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 4
    .param p1, "from"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 262
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 264
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->near2dht:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 266
    .local v0, "to":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved mapped version [from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 269
    :cond_1
    return-object v0
.end method

.method public markExplicitOwner(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;J)V
    .locals 4
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "threadId"    # J

    .prologue
    .line 814
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 816
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pendingExplicit:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;

    .line 818
    .local v0, "span":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    if-eqz v0, :cond_1

    .line 819
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->markOwned(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    .line 820
    :cond_1
    return-void
.end method

.method public onKernalStart0()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/16 v2, 0xc

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xb

    aput v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 227
    return-void
.end method

.method public onKernalStop0(Z)V
    .locals 3
    .param p1, "cancel"    # Z

    .prologue
    .line 231
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 232
    return-void
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 897
    const-string v0, ">>> "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Mvcc manager memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   rmvLocksSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->rmvLocks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   dhtLocCandsSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->dhtLocCands:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   lockedSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->locked:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   futsSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   near2dhtSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->near2dht:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   finishFutsSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->finishFuts:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 905
    return-void
.end method

.method public recheckPendingLocks()V
    .locals 4

    .prologue
    .line 1041
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->exchLog:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1042
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->exchLog:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Rechecking pending locks for completion."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1044
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->finishFuts:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;

    .line 1045
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->recheck()V

    goto :goto_0

    .line 1046
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;
    :cond_1
    return-void
.end method

.method public remoteCandidates()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 560
    .local v2, "rmtCands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->locked()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    .line 561
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->remoteMvccSnapshot([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 563
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    :cond_0
    return-object v2
.end method

.method public removeAtomicFuture(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "futVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->atomicFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/IgniteInternalFuture;

    return-object v0
.end method

.method public removeExplicitLock(JLorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 7
    .param p1, "threadId"    # J
    .param p3, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p4, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 834
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 836
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pendingExplicit:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;

    .line 838
    .local v1, "span":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    if-nez v1, :cond_2

    .line 839
    const/4 v0, 0x0

    .line 846
    :cond_1
    :goto_0
    return-object v0

    .line 841
    :cond_2
    invoke-virtual {v1, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->removeCandidate(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 843
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 844
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pendingExplicit:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeExplicitLock(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V
    .locals 4
    .param p1, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 769
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pendingExplicit:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;

    .line 771
    .local v0, "span":Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
    if-nez v0, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->removeCandidate(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pendingExplicit:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture<*>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->trackable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 454
    const/4 v2, 0x1

    .line 480
    :cond_0
    :goto_0
    return v2

    .line 456
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 458
    .local v0, "cur":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheFuture<*>;>;"
    if-nez v0, :cond_2

    .line 459
    const/4 v2, 0x0

    goto :goto_0

    .line 463
    :cond_2
    monitor-enter v0

    .line 464
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 466
    .local v2, "rmv":Z
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    .line 467
    .local v1, "empty":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    if-eqz v2, :cond_4

    .line 470
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 471
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed future from future map: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 476
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->futs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 477
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed future list from futures map for lock version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 467
    .end local v1    # "empty":Z
    .end local v2    # "rmv":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 473
    .restart local v1    # "empty":Z
    .restart local v2    # "rmv":Z
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 474
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to remove a non-registered future (has it been already removed?): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public removeLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 3
    .param p1, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 610
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 611
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->local()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 613
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->dhtLocal()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->dhtLocCands:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 614
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed local candidate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 617
    :cond_2
    const/4 v0, 0x1

    .line 620
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected start0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".exchange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->logger(Ljava/lang/String;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->exchLog:Lorg/apache/ignite/IgniteLogger;

    .line 221
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->newMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->pendingExplicit:Ljava/util/concurrent/ConcurrentMap;

    .line 222
    return-void
.end method

.method public unmapVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 4
    .param p1, "from"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 292
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 294
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->near2dht:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 296
    .local v0, "to":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed mapped version [from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 299
    :cond_1
    return-object v0
.end method
