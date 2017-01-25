.class Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridCacheEvictionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final evts:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/apache/ignite/events/DiscoveryEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final primaryParts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1387
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V
    .locals 3

    .prologue
    .line 1397
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .line 1398
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cache-eviction-backup-worker"

    iget-object v2, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 1389
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->evts:Ljava/util/concurrent/BlockingQueue;

    .line 1392
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->primaryParts:Ljava/util/Collection;

    .line 1400
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$1000(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1401
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;

    .prologue
    .line 1387
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V

    return-void
.end method


# virtual methods
.method addEvent(Lorg/apache/ignite/events/DiscoveryEvent;)V
    .locals 1
    .param p1, "evt"    # Lorg/apache/ignite/events/DiscoveryEvent;

    .prologue
    .line 1407
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1409
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->evts:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 1410
    return-void
.end method

.method protected body()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 1415
    :try_start_0
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v6, v6, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSync:Z
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$1100(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1456
    :catch_0
    move-exception v6

    .line 1463
    :cond_1
    return-void

    .line 1417
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v6, v6, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    .line 1420
    .local v4, "loc":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->primaryParts:Ljava/util/Collection;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v8, v8, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primaryPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1423
    :cond_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1424
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->evts:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 1426
    .local v1, "evt":Lorg/apache/ignite/events/DiscoveryEvent;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1427
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processing event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1430
    :cond_4
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->primaryParts:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1431
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->evts:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1439
    :cond_6
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->evts:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1442
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v6, v6, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartitions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .line 1443
    .local v5, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->evts:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1446
    new-instance v6, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v1}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyVersion()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->primary(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->primaryParts:Ljava/util/Collection;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1448
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1449
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Touching partition entries: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1451
    :cond_8
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->entries()Ljava/util/Collection;

    move-result-object v7

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touchOnTopologyChange(Ljava/lang/Iterable;)V
    invoke-static {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->access$1200(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Ljava/lang/Iterable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1459
    .end local v1    # "evt":Lorg/apache/ignite/events/DiscoveryEvent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4    # "loc":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v5    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :catch_1
    move-exception v0

    .line 1460
    .local v0, "e":Lorg/apache/ignite/IgniteException;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/InterruptedException;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Lorg/apache/ignite/IgniteException;->hasCause([Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1461
    throw v0

    .line 1434
    .end local v0    # "e":Lorg/apache/ignite/IgniteException;
    .restart local v1    # "evt":Lorg/apache/ignite/events/DiscoveryEvent;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v4    # "loc":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_9
    :try_start_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iget-object v6, v6, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v1}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyVersion()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    invoke-virtual {v6, v4, v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1435
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0
.end method
