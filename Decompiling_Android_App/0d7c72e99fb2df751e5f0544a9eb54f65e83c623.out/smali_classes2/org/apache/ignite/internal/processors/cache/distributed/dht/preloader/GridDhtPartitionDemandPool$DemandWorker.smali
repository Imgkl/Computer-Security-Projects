.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridDhtPartitionDemandPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DemandWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final assignQ:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private cntr:J

.field private id:I

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private final msgQ:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 397
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;I)V
    .locals 3
    .param p2, "id"    # I

    .prologue
    .line 417
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.DemandWorker;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    .line 418
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preloader-demand-worker"

    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 402
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->assignQ:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 405
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->msgQ:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 412
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    .line 420
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 422
    :cond_0
    iput p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->id:I

    .line 423
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;ILorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$1;

    .prologue
    .line 397
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.DemandWorker;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;I)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->addMessage(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;)V

    return-void
.end method

.method private addMessage(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;)V
    .locals 2
    .param p1, "msg"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;

    .prologue
    .line 448
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.DemandWorker;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 452
    :cond_0
    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;->supply()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->workerId()I

    move-result v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->id:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)V

    throw v0

    .line 454
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->msgQ:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)V

    goto :goto_0
.end method

.method private demandFromNode(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Ljava/util/Set;
    .locals 30
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "d"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    .param p4, "exchFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 582
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.DemandWorker;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v24

    .line 584
    .local v24, "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->cntr:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->cntr:J

    .line 586
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->cntr:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->topic(J)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->topic(Ljava/lang/Object;)V

    .line 587
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->id:I

    move/from16 v25, v0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->workerId(I)V

    .line 589
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 592
    .local v14, "missed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->partitions()Ljava/util/Collection;

    move-result-object v17

    .line 595
    .local v17, "remaining":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->drainQueue()V

    .line 597
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->isCancelled()Z

    move-result v25

    if-nez v25, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->topologyChanged()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-object v14

    .line 600
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v25

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->topic()Ljava/lang/Object;

    move-result-object v26

    new-instance v27, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;)V

    invoke-virtual/range {v25 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addOrderedHandler(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    :cond_2
    move-object/from16 v6, p3

    .line 612
    .end local p3    # "d":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    .local v6, "d":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    const/16 v19, 0x0

    .line 615
    .local v19, "retry":Z
    :try_start_0
    new-instance p3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 617
    .end local v6    # "d":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    .restart local p3    # "d":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v22

    .line 619
    .local v22, "timeout":J
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->timeout(J)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Sending demand message [node="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", demand="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x5d

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 625
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 629
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->isCancelled()Z

    move-result v25

    if-nez v25, :cond_5

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->topologyChanged()Z

    move-result v25

    if-nez v25, :cond_5

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->msgQ:Ljava/util/concurrent/LinkedBlockingDeque;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-wide/from16 v2, v22

    move-object/from16 v4, p0

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;Ljava/util/concurrent/BlockingQueue;JLorg/apache/ignite/internal/util/worker/GridWorker;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;

    .line 633
    .local v20, "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;
    if-nez v20, :cond_7

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->msgQ:Ljava/util/concurrent/LinkedBlockingDeque;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Timed out waiting for partitions to load, will retry in "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " ms (you may need to increase \'networkTimeout\' or \'rebalanceBatchSize\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " configuration properties)."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 639
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->growTimeout(J)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v25

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->topic()Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->removeOrderedHandler(Ljava/lang/Object;)V

    .line 645
    new-instance v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    .end local p3    # "d":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    .restart local v6    # "d":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->cntr:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->cntr:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->topic(J)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->topic(Ljava/lang/Object;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v25

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->topic()Ljava/lang/Object;

    move-result-object v26

    new-instance v27, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker$2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;)V

    invoke-virtual/range {v25 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addOrderedHandler(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 660
    const/16 v19, 0x1

    move-object/from16 p3, v6

    .line 796
    .end local v6    # "d":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    .end local v20    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;
    .restart local p3    # "d":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    :cond_5
    :goto_2
    if-eqz v19, :cond_6

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->isCancelled()Z

    move-result v25

    if-nez v25, :cond_6

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->topologyChanged()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v25

    if-eqz v25, :cond_2

    .line 801
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v25

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->topic()Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->removeOrderedHandler(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 669
    .restart local v20    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 670
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->topologyChanged()Z

    move-result v25

    if-eqz v25, :cond_4

    goto :goto_2

    .line 677
    :cond_8
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;->senderId()Ljava/util/UUID;

    move-result-object v25

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Received supply message from unexpected node [expectedId="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", rcvdId="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;->senderId()Ljava/util/UUID;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", msg="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x5d

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 801
    .end local v20    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;
    .end local v22    # "timeout":J
    :catchall_0
    move-exception v25

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v26

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;->topic()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->removeOrderedHandler(Ljava/lang/Object;)V

    throw v25

    .line 684
    .restart local v20    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;
    .restart local v22    # "timeout":J
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Received supply message: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 687
    :cond_a
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;->supply()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;

    move-result-object v21

    .line 690
    .local v21, "supply":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->classError()Ljava/lang/Exception;

    move-result-object v25

    if-eqz v25, :cond_c

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Class got undeployed during preloading: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->classError()Ljava/lang/Exception;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 694
    :cond_b
    const/16 v19, 0x1

    .line 697
    goto/16 :goto_2

    .line 701
    :cond_c
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->infos()Ljava/util/Map;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 702
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 704
    .local v15, "p":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->localNode(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v25

    if-eqz v25, :cond_16

    .line 705
    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-interface {v0, v15, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v16

    .line 707
    .local v16, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    sget-boolean v25, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->$assertionsDisabled:Z

    if-nez v25, :cond_e

    if-nez v16, :cond_e

    new-instance v25, Ljava/lang/AssertionError;

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v25

    .line 709
    :cond_e
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v25

    sget-object v26, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_15

    .line 710
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->reserve()Z

    move-result v18

    .line 712
    .local v18, "reserved":Z
    sget-boolean v25, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->$assertionsDisabled:Z

    if-nez v25, :cond_f

    if-nez v18, :cond_f

    new-instance v25, Ljava/lang/AssertionError;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Failed to reserve partition [gridName="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", cacheName="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", part="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x5d

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v25

    .line 715
    :cond_f
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->lock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 718
    :try_start_6
    new-instance v11, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v11}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    .line 721
    .local v11, "invalidParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;->infos()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    .line 722
    .local v8, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v11, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_10

    .line 723
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v25

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->preloadingPermitted(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v25

    if-nez v25, :cond_11

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Preloading is not permitted for entry due to evictions [key="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", ver="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x5d

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    .line 760
    .end local v8    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "invalidParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v25

    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->unlock()V

    .line 761
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    throw v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 732
    .restart local v8    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "invalidParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_11
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v15, v8, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->preloadEntry(Lorg/apache/ignite/cluster/ClusterNode;ILorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v25

    if-nez v25, :cond_10

    .line 733
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Got entries for invalid partition during preloading (will skip) [p="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", entry="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x5d

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 742
    .end local v8    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :cond_12
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->last()Ljava/util/Collection;

    move-result-object v25

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 746
    .local v12, "last":Z
    if-eqz v12, :cond_14

    .line 747
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 749
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->own(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)Z

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v25

    if-eqz v25, :cond_13

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Finished rebalancing partition: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 754
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v25

    const/16 v26, 0x52

    invoke-virtual/range {v25 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v25, v0

    const/16 v26, 0x52

    invoke-virtual/range {p4 .. p4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->discoveryEvent()Lorg/apache/ignite/events/DiscoveryEvent;

    move-result-object v27

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v15, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;IILorg/apache/ignite/events/DiscoveryEvent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 760
    :cond_14
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->unlock()V

    .line 761
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    goto/16 :goto_4

    .line 765
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "invalidParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .end local v12    # "last":Z
    .end local v18    # "reserved":Z
    :cond_15
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Skipping rebalancing partition (state is not MOVING): "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 772
    .end local v16    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :cond_16
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Skipping rebalancing partition (it does not belong on current node): "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 779
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/CacheEntryInfoCollection;>;"
    .end local v15    # "p":I
    :cond_17
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;->supply()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->missed()Ljava/util/Collection;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 782
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;->supply()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->missed()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_18
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 783
    .local v13, "miss":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->localNode(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 784
    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 786
    .end local v13    # "miss":Ljava/lang/Integer;
    :cond_19
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_5

    .line 789
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;->supply()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;->ack()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v25

    if-eqz v25, :cond_4

    .line 790
    const/16 v19, 0x1

    .line 792
    goto/16 :goto_2

    .line 801
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v20    # "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;
    .end local v21    # "supply":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyMessage;
    .end local v22    # "timeout":J
    .end local p3    # "d":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    .restart local v6    # "d":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    :catchall_2
    move-exception v25

    move-object/from16 p3, v6

    .end local v6    # "d":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    .restart local p3    # "d":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    goto/16 :goto_3
.end method

.method private drainQueue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 809
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.DemandWorker;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->msgQ:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 810
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->msgQ:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;

    .line 812
    .local v0, "msg":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drained supply message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 815
    .end local v0    # "msg":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SupplyMessage;
    :cond_1
    return-void
.end method

.method private growTimeout(J)V
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    .line 465
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.DemandWorker;"
    long-to-double v2, p1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-long v0, v2

    .line 468
    .local v0, "newTimeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 469
    const-wide v0, 0x7fffffffffffffffL

    .line 472
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Increased rebalancing message timeout from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 475
    :cond_1
    return-void
.end method

.method private preloadEntry(Lorg/apache/ignite/cluster/ClusterNode;ILorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 19
    .param p1, "pick"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "p"    # I
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .param p4, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.DemandWorker;"
    const/4 v3, 0x0

    .line 495
    .local v3, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    .line 497
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 498
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rebalancing key [key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", part="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", node="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 500
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->isIgfsDataCache()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->igfsDataSpaceUsed()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->igfsDataSpaceMax()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 502
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to rebalance IGFS data cache (IGFS space size exceeded maximum value, will ignore rebalance entries): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 505
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsoleteIfEmpty(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 506
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeIfObsolete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    .line 508
    :cond_1
    const/4 v4, 0x1

    .line 555
    :goto_0
    return v4

    .line 511
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v4, v0}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 512
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->ttl()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime()J

    move-result-wide v8

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDrEnabled()Z

    move-result v11

    if-eqz v11, :cond_5

    sget-object v12, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_PRELOAD:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    :goto_1
    move-object/from16 v11, p4

    invoke-interface/range {v3 .. v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->initialValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/dr/GridDrType;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 521
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    const/16 v5, 0x54

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isInternal()Z

    move-result v4

    if-nez v4, :cond_4

    .line 524
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v5

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v7

    const/4 v8, 0x0

    check-cast v8, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v9, 0x0

    const/16 v10, 0x54

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v4 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_4
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 512
    :cond_5
    sget-object v12, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    goto :goto_1

    .line 528
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rebalancing entry is already in cache (will ignore) [key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", part="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_2

    .line 535
    :catch_0
    move-exception v18

    .line 536
    .local v18, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entry has been concurrently removed while rebalancing (will ignore) [key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", part="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 547
    .end local v18    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catch_1
    move-exception v2

    .line 548
    .local v2, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    throw v2

    .line 532
    .end local v2    # "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rebalance predicate evaluated to false for entry (will ignore): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_2

    .line 540
    :catch_2
    move-exception v18

    .line 541
    .local v18, "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 542
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Partition became invalid during rebalancing (will ignore): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 544
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 550
    .end local v18    # "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :catch_3
    move-exception v2

    .line 551
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to cache rebalanced entry (will stop rebalancing) [local="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", node="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", part="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private topologyChanged()Z
    .locals 1

    .prologue
    .line 441
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.DemandWorker;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->assignQ:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->exchange()Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->topologyChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addAssignments(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.DemandWorker;"
    .local p1, "assigns":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 431
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->assignQ:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 433
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added assignments to worker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 435
    :cond_1
    return-void
.end method

.method protected body()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 820
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.DemandWorker;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceOrder()I

    move-result v12

    .line 822
    .local v12, "rebalanceOrder":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isMarshallerCache(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Waiting for marshaller cache preload [cacheName="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x5d

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->marshallerCache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->syncFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 841
    :cond_1
    if-lez v12, :cond_3

    .line 842
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->orderedPreloadFuture(I)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 845
    .local v6, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    if-eqz v6, :cond_3

    .line 846
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Waiting for dependant caches rebalance [cacheName="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", rebalanceOrder="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x5d

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 850
    :cond_2
    invoke-interface {v6}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_3
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 865
    .end local v6    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :cond_3
    const/4 v5, 0x0

    .line 867
    .local v5, "exchFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    const/4 v15, 0x0

    .line 869
    .local v15, "stopEvtFired":Z
    :goto_0
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->isCancelled()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v16

    if-nez v16, :cond_12

    .line 871
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Ljava/util/concurrent/CyclicBarrier;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/CyclicBarrier;->await()I

    .line 873
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->id:I

    move/from16 v16, v0

    if-nez v16, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->dummy()Z

    move-result v16

    if-nez v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v16

    const/16 v17, 0x51

    invoke-virtual/range {v16 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v16

    if-eqz v16, :cond_4

    if-nez v15, :cond_5

    .line 877
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    const/16 v17, 0x51

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->discoveryEvent()Lorg/apache/ignite/events/DiscoveryEvent;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;ILorg/apache/ignite/events/DiscoveryEvent;)V
    :try_end_5
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 879
    const/4 v15, 0x1

    .line 888
    :cond_5
    const/4 v2, 0x0

    .line 890
    .local v2, "assigns":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;"
    :goto_1
    if-nez v2, :cond_8

    .line 891
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->assignQ:Ljava/util/concurrent/LinkedBlockingDeque;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v18

    invoke-static/range {v16 .. v20}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;Ljava/util/concurrent/BlockingQueue;JLorg/apache/ignite/internal/util/worker/GridWorker;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "assigns":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;"
    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;

    .restart local v2    # "assigns":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;"
    goto :goto_1

    .line 829
    .end local v2    # "assigns":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;"
    .end local v5    # "exchFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .end local v15    # "stopEvtFired":Z
    :catch_0
    move-exception v9

    .line 830
    .local v9, "ignored":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed to wait for marshaller cache preload future (grid is stopping): [cacheName="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x5d

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 975
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->onWorkerDone(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;)V

    .line 977
    .end local v9    # "ignored":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :goto_2
    return-void

    .line 836
    :catch_1
    move-exception v4

    .line 837
    .local v4, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_7
    new-instance v16, Ljava/lang/Error;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Ordered preload future should never fail: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 975
    .end local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v12    # "rebalanceOrder":I
    :catchall_0
    move-exception v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->onWorkerDone(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;)V

    throw v16

    .line 853
    .restart local v6    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    .restart local v12    # "rebalanceOrder":I
    :catch_2
    move-exception v9

    .line 854
    .restart local v9    # "ignored":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed to wait for ordered rebalance future (grid is stopping): [cacheName="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", rebalanceOrder="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x5d

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 975
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->onWorkerDone(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;)V

    goto/16 :goto_2

    .line 860
    .end local v9    # "ignored":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :catch_3
    move-exception v4

    .line 861
    .restart local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_9
    new-instance v16, Ljava/lang/Error;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Ordered rebalance future should never fail: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 883
    .end local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v6    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    .restart local v5    # "exchFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .restart local v15    # "stopEvtFired":Z
    :catch_4
    move-exception v8

    .line 884
    .local v8, "ignore":Ljava/util/concurrent/BrokenBarrierException;
    new-instance v16, Ljava/lang/InterruptedException;

    const-string v17, "Demand worker stopped."

    invoke-direct/range {v16 .. v17}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 893
    .end local v8    # "ignore":Ljava/util/concurrent/BrokenBarrierException;
    .restart local v2    # "assigns":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 896
    :try_start_a
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;->exchangeFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    move-result-object v5

    .line 899
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;->isEmpty()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v16

    if-eqz v16, :cond_9

    .line 965
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->onWorkerDone(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 902
    :cond_9
    const/4 v13, 0x0

    .line 906
    .local v13, "resync":Z
    :goto_3
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->isCancelled()Z

    move-result v16

    if-nez v16, :cond_11

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->topologyChanged()Z

    move-result v16

    if-nez v16, :cond_11

    if-nez v13, :cond_11

    .line 907
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 911
    .local v10, "missed":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/cluster/ClusterNode;

    .line 912
    .local v11, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->topologyChanged()Z

    move-result v16

    if-nez v16, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->isCancelled()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 952
    .end local v11    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_b
    :goto_5
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_11

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Reassigning partitions that were missed: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 956
    :cond_c
    sget-boolean v16, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->$assertionsDisabled:Z

    if-nez v16, :cond_10

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v16

    if-nez v16, :cond_10

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 965
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "missed":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .end local v13    # "resync":Z
    :catchall_1
    move-exception v16

    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->onWorkerDone(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;)V

    throw v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 915
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v10    # "missed":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .restart local v11    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v13    # "resync":Z
    :cond_d
    :try_start_e
    invoke-virtual {v2, v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 919
    .local v3, "d":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    if-eqz v3, :cond_a

    .line 923
    :try_start_f
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v1, v3, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->demandFromNode(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Ljava/util/Set;

    move-result-object v14

    .line 925
    .local v14, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_a

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Missed partitions from node [nodeId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v11}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", missed="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x5d

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 930
    :cond_e
    invoke-interface {v10, v14}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_f
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_f .. :try_end_f} :catch_5
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_f .. :try_end_f} :catch_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_4

    .line 933
    .end local v14    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_5
    move-exception v4

    .line 934
    .local v4, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :try_start_10
    throw v4

    .line 936
    .end local v4    # "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :catch_6
    move-exception v4

    .line 937
    .local v4, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Node left during rebalancing (will retry) [node="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v11}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", msg="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x5d

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 941
    :cond_f
    const/4 v13, 0x1

    .line 943
    goto/16 :goto_5

    .line 945
    .end local v4    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_7
    move-exception v4

    .line 946
    .local v4, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed to receive partitions from node (rebalancing will not fully finish) [node="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v11}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", msg="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x5d

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 958
    .end local v3    # "d":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;
    .end local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v11    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->exchange()Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->forceDummyExchange(ZLorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_3

    .line 965
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "missed":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_11
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->onWorkerDone(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->exchange()Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->scheduleResendPartitions()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .line 975
    .end local v2    # "assigns":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;"
    .end local v13    # "resync":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$1600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->onWorkerDone(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;)V

    goto/16 :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 981
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.DemandWorker;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;

    const-string v2, "assignQ"

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->assignQ:Ljava/util/concurrent/LinkedBlockingDeque;

    const-string v4, "msgQ"

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->msgQ:Ljava/util/concurrent/LinkedBlockingDeque;

    const-string v6, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topic(J)Ljava/lang/Object;
    .locals 7
    .param p1, "idx"    # J

    .prologue
    .line 563
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.DemandWorker;"
    sget-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CACHE:Lorg/apache/ignite/internal/GridTopic;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namexx()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v2

    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;->id:I

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/GridTopic;->topic(Ljava/lang/String;Ljava/util/UUID;IJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
