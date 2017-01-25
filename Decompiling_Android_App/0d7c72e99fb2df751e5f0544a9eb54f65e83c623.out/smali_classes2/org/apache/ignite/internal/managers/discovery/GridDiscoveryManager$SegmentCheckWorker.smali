.class Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridDiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SegmentCheckWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1383
    const-class v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V
    .locals 4

    .prologue
    .line 1390
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .line 1391
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$4300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disco-net-seg-chk-worker"

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$4400(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 1385
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 1393
    sget-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->hasRslvrs:Z
    invoke-static {p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$4500(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1394
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkFreq:J
    invoke-static {p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$4600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1395
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;

    .prologue
    .line 1383
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V

    return-void
.end method


# virtual methods
.method protected body()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1407
    const-wide/16 v6, 0x0

    .line 1409
    .local v6, "lastChk":J
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1410
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->queue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v2, 0x7d0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v10

    .line 1412
    .local v10, "req":Ljava/lang/Object;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v8

    .line 1415
    .local v8, "now":J
    if-nez v10, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkFreq:J
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$4600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkFreq:J
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$4600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)J

    move-result-wide v0

    add-long/2addr v0, v6

    cmp-long v0, v0, v8

    if-ltz v0, :cond_2

    .line 1416
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Skipping segment check as it has not been requested and it is not time to check."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1424
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez v10, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkFreq:J
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$4600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)J

    move-result-wide v0

    add-long/2addr v0, v6

    cmp-long v0, v0, v8

    if-ltz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1427
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1431
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->lastSegChkRes:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$4700(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$4800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->segmentation()Lorg/apache/ignite/internal/processors/segmentation/GridSegmentationProcessor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/segmentation/GridSegmentationProcessor;->isValidSegment()Z

    move-result v11

    .line 1434
    .local v11, "segValid":Z
    move-wide v6, v8

    .line 1436
    if-nez v11, :cond_4

    .line 1437
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoWrk:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$1900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;

    move-result-object v0

    const/16 v1, 0xe

    sget-object v2, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # invokes: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$4900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    invoke-interface {v3}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->getLocalNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->addEvent(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Ljava/io/Serializable;)V

    .line 1440
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->lastSegChkRes:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$4700(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1443
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Segment has been checked [requested="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v10, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", valid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v0, v12

    goto :goto_1

    .line 1447
    .end local v8    # "now":J
    .end local v10    # "req":Ljava/lang/Object;
    .end local v11    # "segValid":Z
    :cond_6
    return-void
.end method

.method public scheduleSegmentCheck()V
    .locals 2

    .prologue
    .line 1401
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->queue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 1402
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1451
    const-class v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
