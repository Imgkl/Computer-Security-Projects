.class public Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "AdaptiveLoadBalancingSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;
.implements Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpiMBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;
    }
.end annotation

.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final RAND:Ljava/util/Random;


# instance fields
.field private evtLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private final nodeJobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private probe:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadProbe;

.field private final rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private taskTops:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Boolean;",
            "Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    const-class v0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->$assertionsDisabled:Z

    .line 235
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->RAND:Ljava/util/Random;

    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    .line 242
    new-instance v0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;

    invoke-direct {v0}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveCpuLoadProbe;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->probe:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadProbe;

    .line 248
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->taskTops:Ljava/util/concurrent/ConcurrentMap;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->nodeJobs:Ljava/util/Map;

    .line 255
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 472
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->taskTops:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->nodeJobs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;Ljava/util/Collection;Lorg/apache/ignite/cluster/ClusterNode;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->getLoad(Ljava/util/Collection;Lorg/apache/ignite/cluster/ClusterNode;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500()Ljava/util/Random;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->RAND:Ljava/util/Random;

    return-object v0
.end method

.method private getLoad(Ljava/util/Collection;Lorg/apache/ignite/cluster/ClusterNode;)D
    .locals 7
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ")D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v4, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 448
    :cond_0
    const/4 v1, 0x0

    .line 450
    .local v1, "jobsSentSinceLastUpdate":I
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 453
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->nodeJobs:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    .local v0, "cnt":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 458
    :goto_0
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 461
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->probe:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadProbe;

    invoke-interface {v4, p2, v1}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadProbe;->getLoad(Lorg/apache/ignite/cluster/ClusterNode;I)D

    move-result-wide v2

    .line 463
    .local v2, "load":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    .line 464
    new-instance v4, Lorg/apache/ignite/IgniteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to obtain non-negative load from adaptive load probe: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 455
    .end local v2    # "load":D
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 458
    .end local v0    # "cnt":Ljava/util/concurrent/atomic/AtomicInteger;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 466
    .restart local v0    # "cnt":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v2    # "load":D
    :cond_2
    return-wide v2
.end method


# virtual methods
.method public getBalancedNode(Lorg/apache/ignite/compute/ComputeTaskSession;Ljava/util/List;Lorg/apache/ignite/compute/ComputeJob;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 5
    .param p1, "ses"    # Lorg/apache/ignite/compute/ComputeTaskSession;
    .param p3, "job"    # Lorg/apache/ignite/compute/ComputeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/compute/ComputeTaskSession;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/compute/ComputeJob;",
            ")",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .prologue
    .line 417
    .local p2, "top":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const-string v1, "ses"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    const-string/jumbo v1, "top"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    const-string v1, "job"

    invoke-static {p3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->taskTops:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 425
    .local v0, "weightedTop":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;>;"
    if-nez v0, :cond_1

    .line 427
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->taskTops:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;

    invoke-direct {v4, p0, p2}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;-><init>(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;Ljava/util/List;)V

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;

    invoke-virtual {v1}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;->pickWeightedNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    :goto_0
    return-object v1

    .line 429
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    new-instance v1, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;

    invoke-direct {v1, p0, p2}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;-><init>(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;Ljava/util/List;)V

    invoke-virtual {v1}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;->pickWeightedNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    goto :goto_0
.end method

.method public getLoadProbeFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->probe:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadProbe;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onContextDestroyed0()V
    .locals 2

    .prologue
    .line 407
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->evtLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    .line 410
    .local v0, "ctx":Lorg/apache/ignite/spi/IgniteSpiContext;
    if-eqz v0, :cond_0

    .line 411
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->evtLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiContext;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;)Z

    .line 413
    .end local v0    # "ctx":Lorg/apache/ignite/spi/IgniteSpiContext;
    :cond_0
    return-void
.end method

.method protected onContextInitialized0(Lorg/apache/ignite/spi/IgniteSpiContext;)V
    .locals 6
    .param p1, "spiCtx"    # Lorg/apache/ignite/spi/IgniteSpiContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$1;

    invoke-direct {v3, p0}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$1;-><init>(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)V

    iput-object v3, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->evtLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/spi/IgniteSpiContext;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 394
    iget-object v2, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 397
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/spi/IgniteSpiContext;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 398
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v2, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->nodeJobs:Ljava/util/Map;

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 401
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 403
    return-void

    .line 312
    :array_0
    .array-data 4
        0xd
        0xc
        0xa
        0xb
        0x15
        0x16
        0x28
    .end array-data
.end method

.method public setLoadProbe(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadProbe;)V
    .locals 2
    .param p1, "probe"    # Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadProbe;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 271
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "probe != null"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 273
    iput-object p1, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->probe:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadProbe;

    .line 274
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 3
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->startStopwatch()V

    .line 280
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->probe:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadProbe;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v1, "loadProbe != null"

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->assertParameter(ZLjava/lang/String;)V

    .line 282
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "loadProbe"

    iget-object v2, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->probe:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadProbe;

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 285
    :cond_0
    const-class v0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpiMBean;

    invoke-virtual {p0, p1, p0, v0}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 288
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 290
    :cond_1
    return-void

    .line 280
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public spiStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 297
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->nodeJobs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 303
    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->unregisterMBean()V

    .line 306
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void

    .line 300
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    const-class v0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
