.class Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;
.super Ljava/lang/Object;
.source "GridDiscoveryManager.java"

# interfaces
.implements Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->createMetricsProvider()Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final startTime:J

.field final synthetic this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V
    .locals 2

    .prologue
    .line 569
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->startTime:J

    return-void
.end method


# virtual methods
.method public metrics()Lorg/apache/ignite/cluster/ClusterMetrics;
    .locals 6

    .prologue
    .line 575
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3100(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->jobMetric()Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->getJobMetrics()Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;

    move-result-object v1

    .line 577
    .local v1, "jm":Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;
    new-instance v2, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;

    invoke-direct {v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;-><init>()V

    .line 579
    .local v2, "nm":Lorg/apache/ignite/internal/ClusterMetricsSnapshot;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setLastUpdateTime(J)V

    .line 582
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getMaximumActiveJobs()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setMaximumActiveJobs(I)V

    .line 583
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getCurrentActiveJobs()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentActiveJobs(I)V

    .line 584
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getAverageActiveJobs()F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setAverageActiveJobs(F)V

    .line 585
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getMaximumWaitingJobs()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setMaximumWaitingJobs(I)V

    .line 586
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getCurrentWaitingJobs()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentWaitingJobs(I)V

    .line 587
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getAverageWaitingJobs()F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setAverageWaitingJobs(F)V

    .line 588
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getMaximumRejectedJobs()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setMaximumRejectedJobs(I)V

    .line 589
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getCurrentRejectedJobs()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentRejectedJobs(I)V

    .line 590
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getAverageRejectedJobs()F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setAverageRejectedJobs(F)V

    .line 591
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getMaximumCancelledJobs()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setMaximumCancelledJobs(I)V

    .line 592
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getCurrentCancelledJobs()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentCancelledJobs(I)V

    .line 593
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getAverageCancelledJobs()F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setAverageCancelledJobs(F)V

    .line 594
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getTotalRejectedJobs()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setTotalRejectedJobs(I)V

    .line 595
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getTotalCancelledJobs()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setTotalCancelledJobs(I)V

    .line 596
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getTotalExecutedJobs()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setTotalExecutedJobs(I)V

    .line 597
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getMaximumJobWaitTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setMaximumJobWaitTime(J)V

    .line 598
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getCurrentJobWaitTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentJobWaitTime(J)V

    .line 599
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getAverageJobWaitTime()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setAverageJobWaitTime(D)V

    .line 600
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getMaximumJobExecuteTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setMaximumJobExecuteTime(J)V

    .line 601
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getCurrentJobExecuteTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentJobExecuteTime(J)V

    .line 602
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getAverageJobExecuteTime()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setAverageJobExecuteTime(D)V

    .line 603
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getCurrentIdleTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentIdleTime(J)V

    .line 604
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getTotalIdleTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setTotalIdleTime(J)V

    .line 605
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetrics;->getAverageCpuLoad()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setAverageCpuLoad(D)V

    .line 608
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3200(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->getTotalExecutedTasks()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setTotalExecutedTasks(I)V

    .line 611
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getAvailableProcessors()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setAvailableProcessors(I)V

    .line 612
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getCurrentCpuLoad()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentCpuLoad(D)V

    .line 613
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getCurrentGcCpuLoad()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentGcCpuLoad(D)V

    .line 614
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getHeapMemoryInitialized()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setHeapMemoryInitialized(J)V

    .line 615
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getHeapMemoryUsed()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setHeapMemoryUsed(J)V

    .line 616
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getHeapMemoryCommitted()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setHeapMemoryCommitted(J)V

    .line 617
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getHeapMemoryMaximum()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setHeapMemoryMaximum(J)V

    .line 618
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getHeapMemoryMaximum()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setHeapMemoryTotal(J)V

    .line 619
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getNonHeapMemoryInitialized()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setNonHeapMemoryInitialized(J)V

    .line 620
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getNonHeapMemoryUsed()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setNonHeapMemoryUsed(J)V

    .line 621
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getNonHeapMemoryCommitted()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setNonHeapMemoryCommitted(J)V

    .line 622
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getNonHeapMemoryMaximum()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setNonHeapMemoryMaximum(J)V

    .line 623
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getNonHeapMemoryMaximum()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setNonHeapMemoryTotal(J)V

    .line 624
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getUptime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setUpTime(J)V

    .line 625
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setStartTime(J)V

    .line 626
    iget-wide v4, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->startTime:J

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setNodeStartTime(J)V

    .line 627
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getThreadCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentThreadCount(I)V

    .line 628
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getPeakThreadCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setMaximumThreadCount(I)V

    .line 629
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getTotalStartedThreadCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setTotalStartedThreadCount(J)V

    .line 630
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getDaemonThreadCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setCurrentDaemonThreadCount(I)V

    .line 631
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setTotalNodes(I)V

    .line 634
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3400(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->lastDataVersion()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setLastDataVersion(J)V

    .line 636
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3500(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    .line 639
    .local v0, "io":Lorg/apache/ignite/internal/managers/communication/GridIoManager;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->getSentMessagesCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setSentMessagesCount(I)V

    .line 640
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->getSentBytesCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setSentBytesCount(J)V

    .line 641
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->getReceivedMessagesCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setReceivedMessagesCount(I)V

    .line 642
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->getReceivedBytesCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setReceivedBytesCount(J)V

    .line 643
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->getOutboundMessagesQueueSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->setOutboundMessagesQueueSize(I)V

    .line 645
    return-object v2
.end method
