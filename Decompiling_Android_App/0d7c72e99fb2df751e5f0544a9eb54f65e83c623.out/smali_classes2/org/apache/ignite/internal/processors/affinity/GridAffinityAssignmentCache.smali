.class public Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;
.super Ljava/lang/Object;
.source "GridAffinityAssignmentCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$1;,
        Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final aff:Lorg/apache/ignite/cache/affinity/AffinityFunction;

.field private final affCache:Lorg/jsr166/ConcurrentLinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedHashMap",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;",
            ">;"
        }
    .end annotation
.end field

.field private final affMapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

.field private backups:I

.field private final cacheName:Ljava/lang/String;

.field private final ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field private final head:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private final partsCnt:I

.field private final readyFuts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;",
            ">;"
        }
    .end annotation
.end field

.field private volatile stopping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/String;Lorg/apache/ignite/cache/affinity/AffinityFunction;Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;I)V
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "cacheName"    # Ljava/lang/String;
    .param p3, "aff"    # Lorg/apache/ignite/cache/affinity/AffinityFunction;
    .param p4, "affMapper"    # Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    .param p5, "backups"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->readyFuts:Ljava/util/concurrent/ConcurrentMap;

    .line 88
    sget-boolean v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 92
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 93
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->aff:Lorg/apache/ignite/cache/affinity/AffinityFunction;

    .line 94
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->affMapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    .line 95
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->cacheName:Ljava/lang/String;

    .line 96
    iput p5, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->backups:I

    .line 98
    const-class v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->logger(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->log:Lorg/apache/ignite/IgniteLogger;

    .line 100
    invoke-interface {p3}, Lorg/apache/ignite/cache/affinity/AffinityFunction;->partitions()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->partsCnt:I

    .line 101
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->affCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    sget-object v2, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;-><init>(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->head:Ljava/util/concurrent/atomic/AtomicReference;

    .line 103
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->readyFuts:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private affinityKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 312
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_0

    .line 313
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .end local p1    # "key":Ljava/lang/Object;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object p1

    .line 315
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->defaultAffMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;->affinityKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->affMapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    goto :goto_0
.end method

.method private awaitTopologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 6
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 387
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->head:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    .line 389
    .local v0, "aff":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 394
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Will wait for topology version [locNodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", topVer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 397
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->readyFuture(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    .line 399
    .local v2, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;>;"
    if-eqz v2, :cond_0

    .line 400
    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    .end local v2    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;>;"
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v3, Lorg/apache/ignite/IgniteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to wait for affinity ready future for topology version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private cachedAffinity(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    .locals 6
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 359
    sget-object v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->lastVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object p1

    .line 364
    :goto_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 362
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->awaitTopologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_0

    .line 366
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->head:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    .line 368
    .local v0, "cache":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 369
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->affCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v1, p1}, Lorg/jsr166/ConcurrentLinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    .line 371
    .restart local v0    # "cache":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    if-nez v0, :cond_2

    .line 372
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting affinity for topology version earlier than affinity is calculated [locNodeId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", topVer="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", head="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->head:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 378
    :cond_2
    sget-boolean v1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid cached affinity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 380
    :cond_3
    return-object v0
.end method


# virtual methods
.method public assignments(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;
    .locals 2
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->cachedAffinity(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-result-object v0

    .line 247
    .local v0, "aff":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->assignment()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public backupPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->cachedAffinity(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->backupPartitions(Ljava/util/UUID;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public calculate(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/events/DiscoveryEvent;)Ljava/util/List;
    .locals 17
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "discoEvt"    # Lorg/apache/ignite/events/DiscoveryEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/events/DiscoveryEvent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculating affinity [topVer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", locNodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", discoEvt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 150
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->affCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v1}, Lorg/jsr166/ConcurrentLinkedHashMap;->descendingKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 152
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;>;"
    const/4 v14, 0x0

    .line 154
    .local v14, "prevVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "prevVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    check-cast v14, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 157
    .restart local v14    # "prevVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_1
    if-nez v14, :cond_2

    const/4 v13, 0x0

    .line 161
    .local v13, "prev":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 171
    .local v2, "sorted":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :goto_1
    if-nez v13, :cond_4

    const/4 v3, 0x0

    .line 175
    .local v3, "prevAssignment":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    :goto_2
    if-eqz v3, :cond_6

    if-eqz p2, :cond_6

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v7

    .line 178
    .local v7, "affNode":Z
    if-nez v7, :cond_5

    .line 179
    move-object v8, v3

    .line 188
    .end local v7    # "affNode":Z
    .local v8, "assignment":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    :goto_3
    sget-boolean v1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->$assertionsDisabled:Z

    if-nez v1, :cond_7

    if-nez v8, :cond_7

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 157
    .end local v2    # "sorted":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v3    # "prevAssignment":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    .end local v8    # "assignment":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    .end local v13    # "prev":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->affCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v1, v14}, Lorg/jsr166/ConcurrentLinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-object v13, v1

    goto :goto_0

    .line 166
    .restart local v13    # "prev":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->cacheName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v4, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNodes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 168
    .restart local v2    # "sorted":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-object v1, Lorg/apache/ignite/internal/GridNodeOrderComparator;->INSTANCE:Ljava/util/Comparator;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 171
    :cond_4
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->assignment()Ljava/util/List;

    move-result-object v3

    goto :goto_2

    .line 181
    .restart local v3    # "prevAssignment":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    .restart local v7    # "affNode":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->aff:Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-object/from16 v16, v0

    new-instance v1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityFunctionContextImpl;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->backups:I

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityFunctionContextImpl;-><init>(Ljava/util/List;Ljava/util/List;Lorg/apache/ignite/events/DiscoveryEvent;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;I)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lorg/apache/ignite/cache/affinity/AffinityFunction;->assignPartitions(Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;)Ljava/util/List;

    move-result-object v8

    .restart local v8    # "assignment":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    goto :goto_3

    .line 185
    .end local v7    # "affNode":Z
    .end local v8    # "assignment":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->aff:Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-object/from16 v16, v0

    new-instance v1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityFunctionContextImpl;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->backups:I

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityFunctionContextImpl;-><init>(Ljava/util/List;Ljava/util/List;Lorg/apache/ignite/events/DiscoveryEvent;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;I)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lorg/apache/ignite/cache/affinity/AffinityFunction;->assignPartitions(Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;)Ljava/util/List;

    move-result-object v8

    .restart local v8    # "assignment":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    goto :goto_3

    .line 190
    :cond_7
    new-instance v15, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v8}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;-><init>(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/List;)V

    .line 192
    .local v15, "updated":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->affCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    move-object/from16 v0, p1

    invoke-static {v1, v0, v15}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "updated":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    check-cast v15, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    .line 196
    .restart local v15    # "updated":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->head:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    .line 198
    .local v10, "headItem":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v1

    if-ltz v1, :cond_b

    .line 205
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->readyFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 206
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v1

    if-gtz v1, :cond_9

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Completing topology ready future (calculated affinity) [locNodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", futVer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", topVer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 211
    :cond_a
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;->onDone(Ljava/lang/Object;)Z

    goto :goto_5

    .line 201
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->head:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v10, v15}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_4

    .line 215
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->assignment()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public cleanUpCache(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 4
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 231
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up cache for version [locNodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", topVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 235
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->affCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v1}, Lorg/jsr166/ConcurrentLinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v1

    if-gez v1, :cond_1

    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 238
    :cond_2
    return-void
.end method

.method public initialize(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/List;)V
    .locals 4
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "affAssignment":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    invoke-direct {v0, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;-><init>(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/List;)V

    .line 115
    .local v0, "assignment":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->affCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v3, p1, v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->head:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 118
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->readyFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 119
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 120
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;->onDone(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;>;"
    :cond_1
    return-void
.end method

.method public lastVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->head:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    return-object v0
.end method

.method public nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;
    .locals 1
    .param p1, "part"    # I
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->cachedAffinity(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->get(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onKernalStop()V
    .locals 4

    .prologue
    .line 128
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->stopping:Z

    .line 130
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "Failed to wait for topology update, node is stopping."

    invoke-direct {v0, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "err":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->readyFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;

    .line 134
    .local v1, "fut":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 135
    .end local v1    # "fut":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;
    :cond_0
    return-void
.end method

.method public partition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->aff:Lorg/apache/ignite/cache/affinity/AffinityFunction;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->affinityKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/cache/affinity/AffinityFunction;->partition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public partitions()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->partsCnt:I

    return v0
.end method

.method public primaryPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->cachedAffinity(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->primaryPartitions(Ljava/util/UUID;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public readyFuture(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x5d

    .line 257
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->head:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    .line 259
    .local v0, "aff":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 260
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning finished future for readyFuture [head="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", topVer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 282
    :cond_0
    :goto_0
    return-object v1

    .line 267
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->readyFuts:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;

    invoke-direct {v3, p0, p1, v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$AffinityReadyFuture;-><init>(Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache$1;)V

    invoke-static {v2, p1, v3}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 270
    .local v1, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->head:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "aff":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    .line 272
    .restart local v0    # "aff":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 273
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Completing topology ready future right away [head="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", topVer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 277
    :cond_2
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_3
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->stopping:Z

    if-eqz v2, :cond_0

    .line 280
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "Failed to wait for topology update, node is stopping."

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
