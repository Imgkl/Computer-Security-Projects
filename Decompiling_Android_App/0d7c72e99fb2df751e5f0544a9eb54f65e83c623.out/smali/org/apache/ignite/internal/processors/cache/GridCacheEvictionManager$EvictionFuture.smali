.class Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridCacheEvictionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvictionFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;",
        ">;",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;",
        ">;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final completing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final entries:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private evictInfos:Lorg/jsr166/ConcurrentLinkedDeque8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final evictedEntries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final finishPrepare:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final id:J

.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final prepareLock:Ljava/util/concurrent/locks/ReadWriteLock;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final readers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rejectedEntries:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final reqMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final resMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

.field private timeoutObj:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1524
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V
    .locals 2

    .prologue
    .line 1524
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 1530
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$1300(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->id:J

    .line 1533
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->evictInfos:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 1536
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->entries:Ljava/util/concurrent/ConcurrentMap;

    .line 1539
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->readers:Ljava/util/concurrent/ConcurrentMap;

    .line 1543
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->evictedEntries:Ljava/util/Collection;

    .line 1546
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->rejectedEntries:Ljava/util/concurrent/ConcurrentMap;

    .line 1549
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->reqMap:Ljava/util/concurrent/ConcurrentMap;

    .line 1553
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->resMap:Ljava/util/concurrent/ConcurrentMap;

    .line 1557
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->finishPrepare:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1560
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->prepareLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 1564
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->completing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1567
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 1575
    sget-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->ZERO:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;

    .prologue
    .line 1524
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V

    return-void
.end method

.method static synthetic access$2300(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;
    .param p1, "x1"    # Z

    .prologue
    .line 1524
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->complete(Z)V

    return-void
.end method

.method static synthetic access$2400(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;

    .prologue
    .line 1524
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->resMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private checkDone()V
    .locals 2

    .prologue
    .line 1904
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->reqMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->resMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->reqMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1905
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->complete(Z)V

    .line 1906
    :cond_1
    return-void
.end method

.method private complete(Z)V
    .locals 14
    .param p1, "timedOut"    # Z

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1915
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->completing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1917
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1919
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Ljava/util/Map;

    move-result-object v9

    iget-wide v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1921
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    if-eqz v9, :cond_0

    if-nez p1, :cond_0

    .line 1923
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 1925
    :cond_0
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1926
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Building eviction future result [fut="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", timedOut="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1928
    :cond_1
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->resMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v9}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v9

    new-array v10, v13, [Lorg/apache/ignite/lang/IgnitePredicate;

    new-instance v11, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture$2;

    invoke-direct {v11, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture$2;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;)V

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/F;->forAny(Ljava/lang/Iterable;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    .line 1934
    .local v0, "err":Z
    if-eqz v0, :cond_3

    .line 1935
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->resMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v9}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v9

    new-array v10, v13, [Lorg/apache/ignite/lang/IgnitePredicate;

    new-instance v11, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture$3;

    invoke-direct {v11, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture$3;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;)V

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v3

    .line 1941
    .local v3, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->$assertionsDisabled:Z

    if-nez v9, :cond_2

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1943
    :cond_2
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remote node(s) failed to process eviction request due to topology changes (some backup or remote values maybe lost): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1948
    .end local v3    # "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_3
    if-eqz p1, :cond_4

    .line 1949
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v10, "Timed out waiting for eviction future (consider changing \'evictSynchronousTimeout\' and \'evictSynchronousConcurrencyLevel\' configuration parameters)."

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1953
    :cond_4
    if-nez v0, :cond_5

    if-eqz p1, :cond_9

    .line 1955
    :cond_5
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->$assertionsDisabled:Z

    if-nez v9, :cond_6

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->evictedEntries:Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1957
    :cond_6
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->rejectedEntries:Ljava/util/concurrent/ConcurrentMap;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->entries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v9, v10}, Ljava/util/concurrent/ConcurrentMap;->putAll(Ljava/util/Map;)V

    .line 1993
    :cond_7
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->evictedEntries:Ljava/util/Collection;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->rejectedEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->onDone(Ljava/lang/Object;)Z

    .line 1995
    .end local v0    # "err":Z
    :cond_8
    return-void

    .line 1962
    .restart local v0    # "err":Z
    :cond_9
    new-instance v7, Ljava/util/HashMap;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->rejectedEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v7, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1965
    .local v7, "rejectedEntries0":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->entries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v9}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;

    .line 1966
    .local v4, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->entry()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    .line 1968
    .local v5, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1972
    const/4 v6, 0x0

    .line 1974
    .local v6, "rejected":Z
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->resMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v9}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;

    .line 1975
    .local v8, "res":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->rejectedKeys()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1977
    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    const/4 v6, 0x1

    .line 1985
    .end local v8    # "res":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;
    :cond_c
    if-nez v6, :cond_a

    .line 1986
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->evictedEntries:Ljava/util/Collection;

    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private prepare0()V
    .locals 26

    .prologue
    .line 1639
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1640
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preparing eviction future [futId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", localNode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", infos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->evictInfos:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1643
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->evictInfos:Lorg/jsr166/ConcurrentLinkedDeque8;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->evictInfos:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v2}, Lorg/jsr166/ConcurrentLinkedDeque8;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1645
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$700(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 1648
    const/16 v16, 0x0

    .line 1650
    .local v16, "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->evictInfos:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v2}, Lorg/jsr166/ConcurrentLinkedDeque8;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    move-object/from16 v17, v16

    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    .local v17, "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    :cond_3
    :goto_0
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;

    .line 1653
    .local v15, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->entry()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$1700(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->removeMeta(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1655
    .local v21, "queueNode":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    if-eqz v21, :cond_4

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$1800(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Lorg/jsr166/ConcurrentLinkedDeque8;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1661
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->entry()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$1900(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/lang/IgniteBiTuple;
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v23

    .line 1671
    .local v23, "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->readers:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->entry()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v4}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    .line 1674
    .local v10, "entryReaders":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    if-nez v10, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1732
    .end local v10    # "entryReaders":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v15    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    .end local v21    # "queueNode":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    .end local v23    # "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    :catchall_0
    move-exception v2

    move-object/from16 v16, v17

    .end local v17    # "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    .restart local v16    # "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$900(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V

    throw v2

    .line 1663
    .end local v16    # "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    .restart local v15    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    .restart local v17    # "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    .restart local v21    # "queueNode":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    :catch_0
    move-exception v14

    .line 1664
    .local v14, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1665
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entry got removed while preparing eviction future (ignoring) [entry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->entry()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1677
    .end local v14    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v10    # "entryReaders":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v23    # "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    :cond_5
    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v10, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1679
    const/4 v4, 0x1

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v4, v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v20

    .line 1681
    .local v20, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1682
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->entries:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->entry()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-interface {v2, v3, v15}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1686
    .local v18, "node":Lorg/apache/ignite/cluster/ClusterNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->reqMap:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v24, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v25

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->id:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->evictInfos:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v6}, Lorg/jsr166/ConcurrentLinkedDeque8;->size()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;-><init>(IJILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;

    .line 1689
    .local v22, "req":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    if-nez v22, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1691
    :cond_6
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->entry()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;->addKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)V

    goto :goto_2

    .end local v18    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v22    # "req":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;
    :cond_7
    move-object/from16 v16, v17

    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v17    # "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    .restart local v16    # "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    :goto_3
    move-object/from16 v17, v16

    .line 1701
    .end local v16    # "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    .restart local v17    # "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    goto/16 :goto_0

    .line 1695
    :cond_8
    if-nez v17, :cond_10

    .line 1696
    new-instance v16, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->evictInfos:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v2}, Lorg/jsr166/ConcurrentLinkedDeque8;->size()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Ljava/util/HashSet;-><init>(IF)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1699
    .end local v17    # "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    .restart local v16    # "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    :goto_4
    :try_start_5
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 1732
    .end local v10    # "entryReaders":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v15    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    .end local v20    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v21    # "queueNode":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    .end local v23    # "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    :catchall_1
    move-exception v2

    goto/16 :goto_1

    .line 1703
    .end local v16    # "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    .restart local v17    # "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    :cond_9
    if-eqz v17, :cond_c

    .line 1705
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    .line 1707
    .local v5, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;

    .line 1708
    .restart local v15    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1709
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Evicting key without remote participant nodes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1714
    :cond_b
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v3

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->entry()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v6, v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$2000(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$2100(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$1000(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1716
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->entry()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$2200(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 1718
    :catch_1
    move-exception v8

    .line 1719
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to evict entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->entry()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1725
    .end local v5    # "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->entries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1726
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->complete(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1732
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$900(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V

    .line 1759
    :goto_6
    return-void

    .line 1732
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$900(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V

    .line 1736
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->reqMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1737
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/UUID;

    .line 1739
    .local v19, "nodeId":Ljava/util/UUID;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;

    .line 1741
    .restart local v22    # "req":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1742
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending eviction request [node="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1745
    :cond_e
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_9
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_7

    .line 1747
    :catch_2
    move-exception v14

    .line 1749
    .local v14, "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->onNodeLeft(Ljava/util/UUID;)V

    goto :goto_7

    .line 1751
    .end local v14    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_3
    move-exception v11

    .line 1752
    .local v11, "ex":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send eviction request to node [node="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1754
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->rejectEntries(Ljava/util/UUID;)V

    goto/16 :goto_7

    .line 1758
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;>;"
    .end local v11    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    .end local v19    # "nodeId":Ljava/util/UUID;
    .end local v22    # "req":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->registerTimeoutObject()V

    goto/16 :goto_6

    .end local v12    # "i$":Ljava/util/Iterator;
    .restart local v10    # "entryReaders":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v15    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    .restart local v20    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v21    # "queueNode":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    .restart local v23    # "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    :cond_10
    move-object/from16 v16, v17

    .end local v17    # "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    .restart local v16    # "locals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    goto/16 :goto_4
.end method

.method private registerTimeoutObject()V
    .locals 4

    .prologue
    .line 1766
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1768
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture$1;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictSynchronizedTimeout()J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;J)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    .line 1774
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1777
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1780
    :cond_0
    return-void

    .line 1777
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private rejectEntries(Ljava/util/UUID;)V
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 1816
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1818
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1820
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1821
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rejecting entries for node: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1823
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->reqMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;

    .line 1825
    .local v2, "req":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;->entries()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;

    .line 1826
    .local v3, "t":Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->entries:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;

    .line 1828
    .local v1, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    if-nez v1, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1834
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    .end local v2    # "req":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;
    .end local v3    # "t":Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 1830
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    .restart local v2    # "req":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;
    .restart local v3    # "t":Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->rejectedEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1834
    .end local v1    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    .end local v3    # "t":Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1838
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "req":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;
    :cond_4
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->checkDone()V

    .line 1839
    return-void
.end method


# virtual methods
.method add(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1596
    .local p1, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1598
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->evictInfos:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$1400(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1599
    const/4 v0, 0x0

    .line 1603
    :goto_0
    return v0

    .line 1601
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->evictInfos:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->addAll(Ljava/util/Collection;)Z

    .line 1603
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cancel()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2029
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->completing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2031
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2033
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    if-eqz v2, :cond_0

    .line 2034
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 2036
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->onCancelled()Z

    move-result v0

    .line 2038
    .local v0, "b":Z
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .end local v0    # "b":Z
    :cond_1
    move v1, v2

    .line 2043
    :cond_2
    return v1
.end method

.method entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1807
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->entries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method evictedReaders(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/util/Collection;
    .locals 8
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2002
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->readers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 2004
    .local v3, "mappedReaders":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    if-nez v3, :cond_1

    .line 2005
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2023
    :cond_0
    return-object v0

    .line 2007
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2009
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Long;>;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->resMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2010
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v7, v6, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/UUID;

    invoke-virtual {v7, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    .line 2014
    .local v4, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v4, :cond_2

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2017
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;

    .line 2019
    .local v5, "res":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->rejectedKeys()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2020
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->messageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method id()J
    .locals 2

    .prologue
    .line 1786
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->id:J

    return-wide v0
.end method

.method onNodeLeft(Ljava/util/UUID;)V
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 1845
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1847
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1850
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->reqMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->resMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1855
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1858
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->checkDone()V

    .line 1860
    :cond_1
    return-void

    .line 1855
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method onResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;

    .prologue
    const/16 v4, 0x5d

    .line 1867
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1868
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1870
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1872
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1873
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entered to eviction future onResponse() [fut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res="

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

    .line 1876
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    .line 1878
    .local v0, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v0, :cond_4

    .line 1879
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->resMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1885
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1888
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->error()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1890
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->complete(Z)V

    .line 1898
    .end local v0    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_3
    :goto_1
    return-void

    .line 1882
    .restart local v0    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_4
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->reqMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1885
    .end local v0    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 1892
    .restart local v0    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_5
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->checkDone()V

    goto :goto_1

    .line 1895
    .end local v0    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_6
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1896
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored eviction response [fut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method prepare()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1611
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->evictInfos:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v2}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$1400(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)I

    move-result v3

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->finishPrepare:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1613
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->prepareLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1615
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$1500(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1618
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$1608(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1621
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$1500(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1625
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Ljava/util/Map;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->prepare0()V

    .line 1632
    :goto_0
    return v0

    .line 1621
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$1500(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    move v0, v1

    .line 1632
    goto :goto_0
.end method

.method prepareLock()Z
    .locals 1

    .prologue
    .line 1581
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->prepareLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    return v0
.end method

.method prepareUnlock()V
    .locals 1

    .prologue
    .line 1588
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->prepareLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1589
    return-void
.end method

.method readers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1800
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->readers:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2048
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 1793
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method
