.class Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;
.super Ljava/lang/Object;
.source "GridJobProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobDiscoveryListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private metricsUpdateCntr:I

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1721
    const-class v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V
    .locals 0

    .prologue
    .line 1721
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;

    .prologue
    .line 1721
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 8
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 1731
    sget-boolean v4, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    instance-of v4, p1, Lorg/apache/ignite/events/DiscoveryEvent;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1733
    :cond_0
    const/4 v0, 0x0

    .local v0, "handleCollisions":Z
    move-object v4, p1

    .line 1735
    check-cast v4, Lorg/apache/ignite/events/DiscoveryEvent;

    invoke-virtual {v4}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    .line 1740
    .local v3, "nodeId":Ljava/util/UUID;
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1788
    sget-boolean v4, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1743
    :pswitch_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1744
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 1745
    .local v2, "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getTaskNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1746
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1747
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$6300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task node left grid (job will not be activated) [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", jobSes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getSession()Lorg/apache/ignite/internal/GridJobSessionImpl;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", job="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 1753
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 1754
    .restart local v2    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getTaskNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1757
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1761
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1762
    :cond_4
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->onMasterNodeLeft()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1763
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$6400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Job is being cancelled because master task node left grid (as there is no one waiting for results, job will not be failed over): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1767
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V

    goto/16 :goto_1

    .line 1772
    .end local v2    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    :cond_5
    const/4 v0, 0x1

    .line 1791
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    if-eqz v0, :cond_8

    .line 1792
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 1795
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2700(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1796
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$6600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1797
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$6700(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipped collision handling on discovery event (node is stopping): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    :cond_7
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 1811
    :cond_8
    :goto_3
    return-void

    .line 1779
    :pswitch_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$6500(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->allNodes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    iget v5, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->metricsUpdateCntr:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->metricsUpdateCntr:I

    if-gt v4, v5, :cond_6

    .line 1780
    const/4 v4, 0x0

    iput v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->metricsUpdateCntr:I

    .line 1782
    const/4 v0, 0x1

    goto :goto_2

    .line 1802
    :cond_9
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1803
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$3000(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1808
    :cond_a
    :goto_4
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_3

    .line 1804
    :cond_b
    :try_start_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-lez v4, :cond_a

    .line 1805
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$3400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 1808
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v5}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v4

    .line 1740
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
