.class Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridDiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscoveryWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final evts:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridTuple5",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/io/Serializable;",
            ">;>;"
        }
    .end annotation
.end field

.field private nodeSegFired:Z

.field final synthetic this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1456
    const-class v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V
    .locals 3

    .prologue
    .line 1467
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .line 1468
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$5000(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disco-event-worker"

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$5100(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 1458
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->evts:Ljava/util/concurrent/BlockingQueue;

    .line 1469
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;

    .prologue
    .line 1456
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V

    return-void
.end method

.method private body0()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x5d

    const/4 v5, 0x1

    .line 1563
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->evts:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/util/lang/GridTuple5;

    .line 1565
    .local v8, "evt":Lorg/apache/ignite/internal/util/lang/GridTuple5;, "Lorg/apache/ignite/internal/util/lang/GridTuple5<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;Ljava/io/Serializable;>;"
    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/lang/GridTuple5;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1567
    .local v1, "type":I
    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/lang/GridTuple5;->get2()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 1569
    .local v11, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/lang/GridTuple5;->get3()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1571
    .local v4, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->isDaemon()Z

    move-result v9

    .line 1573
    .local v9, "isDaemon":Z
    const/4 v10, 0x0

    .line 1575
    .local v10, "segmented":Z
    packed-switch v1, :pswitch_data_0

    .line 1694
    :pswitch_0
    sget-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid discovery event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1577
    :pswitch_1
    sget-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoOrdered:Z
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$5500(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v12

    cmp-long v0, v2, v12

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid topology version [topVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1581
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    # invokes: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->checkAttributes(Ljava/lang/Iterable;)V
    invoke-static {v0, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$5600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Ljava/lang/Iterable;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1587
    :goto_0
    if-nez v9, :cond_5

    .line 1588
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->isLocDaemon:Z
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$5700(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1589
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1590
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added new node to topology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 1592
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    # invokes: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ackTopology(JZ)V
    invoke-static {v0, v2, v3, v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$5800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;JZ)V

    .line 1697
    :cond_2
    :goto_1
    :pswitch_2
    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/lang/GridTuple5;->get4()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->recordEvent(IJLorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;)V

    .line 1699
    if-eqz v10, :cond_3

    .line 1700
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->onSegmentation()V

    .line 1701
    :cond_3
    :goto_2
    return-void

    .line 1583
    :catch_0
    move-exception v7

    .line 1584
    .local v7, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v7}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 1594
    .end local v7    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1595
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added new node to topology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 1597
    :cond_5
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1598
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added new daemon node to topology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 1605
    :pswitch_3
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->hasRslvrs:Z
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$4500(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1606
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkWrk:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$5900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->scheduleSegmentCheck()V

    .line 1608
    :cond_6
    if-nez v9, :cond_9

    .line 1609
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->isLocDaemon:Z
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$5700(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1610
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1611
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node left topology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 1613
    :cond_7
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    # invokes: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ackTopology(JZ)V
    invoke-static {v0, v2, v3, v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$5800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;JZ)V

    goto/16 :goto_1

    .line 1615
    :cond_8
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1616
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node left topology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1618
    :cond_9
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1619
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Daemon node left topology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1626
    :pswitch_4
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->hasRslvrs:Z
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$4500(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1627
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkWrk:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$5900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->scheduleSegmentCheck()V

    .line 1629
    :cond_a
    if-nez v9, :cond_c

    .line 1630
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->isLocDaemon:Z
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$5700(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1631
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node FAILED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1633
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    # invokes: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ackTopology(JZ)V
    invoke-static {v0, v2, v3, v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$5800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;JZ)V

    goto/16 :goto_1

    .line 1635
    :cond_b
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1636
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node FAILED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1638
    :cond_c
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1639
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Daemon node FAILED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1645
    :pswitch_5
    sget-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eqNodes(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1647
    :cond_d
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->nodeSegFired:Z

    if-eqz v0, :cond_e

    .line 1648
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1649
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored node segmented event [type=EVT_NODE_SEGMENTED, node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1658
    :cond_e
    iput-boolean v5, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->nodeSegFired:Z

    .line 1660
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->lastLoggedTop:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$6000(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1662
    const/4 v10, 0x1

    .line 1664
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->isLocDaemon:Z
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$5700(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1665
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local node SEGMENTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1666
    :cond_f
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1667
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local node SEGMENTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1673
    :pswitch_6
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$6100(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1674
    new-instance v6, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;

    invoke-direct {v6}, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;-><init>()V

    .line 1676
    .local v6, "customEvt":Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$6200(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;->node(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 1677
    invoke-virtual {v6, v4}, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;->eventNode(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 1678
    invoke-virtual {v6, v1}, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;->type(I)V

    .line 1679
    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-virtual {v6, v2, v3, v0}, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;->topologySnapshot(JLjava/util/Collection;)V

    .line 1680
    invoke-virtual {v6, v11}, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;->affinityTopologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 1681
    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/lang/GridTuple5;->get5()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;->data(Ljava/io/Serializable;)V

    .line 1683
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$6300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    goto/16 :goto_2

    .line 1575
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private onSegmentation()V
    .locals 5

    .prologue
    .line 1707
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$6400(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSegmentationPolicy()Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    move-result-object v1

    .line 1711
    .local v1, "segPlc":Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # invokes: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$6500(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    invoke-interface {v2}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->disconnect()V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1717
    :goto_0
    sget-object v2, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$10;->$SwitchMap$org$apache$ignite$plugin$segmentation$GridSegmentationPolicy:[I

    invoke-virtual {v1}, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1733
    sget-boolean v2, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    sget-object v2, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->NOOP:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported segmentation policy value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1713
    :catch_0
    move-exception v0

    .line 1714
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to disconnect discovery SPI."

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1719
    .end local v0    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :pswitch_0
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Restarting JVM according to configured segmentation policy."

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1721
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # invokes: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->restartJvm()V
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$6600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V

    .line 1735
    :cond_0
    :goto_1
    return-void

    .line 1726
    :pswitch_1
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Stopping local node according to configured segmentation policy."

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1728
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # invokes: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->stopNode()V
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$6700(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V

    goto :goto_1

    .line 1717
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private quietNode(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;
    .locals 4
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 1537
    sget-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1539
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nodeId8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "addrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CPUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalCpus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private recordEvent(IJLorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "topVer"    # J
    .param p4, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1481
    .local p5, "topSnapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p4, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1483
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$5200(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1484
    new-instance v0, Lorg/apache/ignite/events/DiscoveryEvent;

    invoke-direct {v0}, Lorg/apache/ignite/events/DiscoveryEvent;-><init>()V

    .line 1486
    .local v0, "evt":Lorg/apache/ignite/events/DiscoveryEvent;
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$5300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/DiscoveryEvent;->node(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 1487
    invoke-virtual {v0, p4}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 1488
    invoke-virtual {v0, p1}, Lorg/apache/ignite/events/DiscoveryEvent;->type(I)V

    .line 1490
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v2, 0x0

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->daemonFilter:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$1700()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p5, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayList(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lorg/apache/ignite/events/DiscoveryEvent;->topologySnapshot(JLjava/util/Collection;)V

    .line 1492
    const/16 v1, 0xd

    if-ne p1, v1, :cond_3

    .line 1493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metrics were updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/DiscoveryEvent;->message(Ljava/lang/String;)V

    .line 1510
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$5400(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 1512
    .end local v0    # "evt":Lorg/apache/ignite/events/DiscoveryEvent;
    :cond_2
    return-void

    .line 1495
    .restart local v0    # "evt":Lorg/apache/ignite/events/DiscoveryEvent;
    :cond_3
    const/16 v1, 0xa

    if-ne p1, v1, :cond_4

    .line 1496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node joined: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/DiscoveryEvent;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 1498
    :cond_4
    const/16 v1, 0xb

    if-ne p1, v1, :cond_5

    .line 1499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/DiscoveryEvent;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 1501
    :cond_5
    const/16 v1, 0xc

    if-ne p1, v1, :cond_6

    .line 1502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/DiscoveryEvent;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 1504
    :cond_6
    const/16 v1, 0xe

    if-ne p1, v1, :cond_7

    .line 1505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node segmented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/events/DiscoveryEvent;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 1508
    :cond_7
    sget-boolean v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method addEvent(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Ljava/io/Serializable;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p5, "data"    # Ljava/io/Serializable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/io/Serializable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1527
    .local p4, "topSnapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1529
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->evts:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p2, p3, p4, p5}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple5;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 1530
    return-void
.end method

.method protected body()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1547
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1549
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->body0()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1551
    :catch_0
    move-exception v0

    .line 1552
    .local v0, "e":Ljava/lang/InterruptedException;
    throw v0

    .line 1554
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 1555
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Unexpected exception in discovery worker thread (ignored)."

    invoke-static {v2, v3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1558
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1739
    const-class v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
