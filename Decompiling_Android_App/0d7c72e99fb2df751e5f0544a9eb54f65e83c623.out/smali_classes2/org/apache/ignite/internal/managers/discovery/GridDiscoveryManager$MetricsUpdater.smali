.class Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridDiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetricsUpdater"
.end annotation


# instance fields
.field private prevCpuTime:J

.field private prevGcTime:J

.field final synthetic this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 1756
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .line 1757
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$6800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "metrics-updater"

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$6900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 1748
    iput-wide v4, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;->prevGcTime:J

    .line 1751
    iput-wide v4, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;->prevCpuTime:J

    .line 1758
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;

    .prologue
    .line 1746
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V

    return-void
.end method

.method private getCpuLoad()D
    .locals 14

    .prologue
    .line 1805
    :try_start_0
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->os:Ljava/lang/management/OperatingSystemMXBean;
    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2400()Ljava/lang/management/OperatingSystemMXBean;

    move-result-object v7

    const-string v8, "processCpuTime"

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->property(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1812
    .local v2, "cpuTime":J
    const v7, 0xf4240

    iget-object v8, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v8}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getAvailableProcessors()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-long v8, v7

    div-long/2addr v2, v8

    .line 1814
    const-wide/16 v0, 0x0

    .line 1816
    .local v0, "cpu":D
    iget-wide v8, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;->prevCpuTime:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 1817
    iget-wide v8, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;->prevCpuTime:J

    sub-long v4, v2, v8

    .line 1820
    .local v4, "cpuTimeDiff":J
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    long-to-double v10, v4

    const-wide v12, 0x40a7700000000000L    # 3000.0

    div-double/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 1823
    .end local v4    # "cpuTimeDiff":J
    :cond_0
    iput-wide v2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;->prevCpuTime:J

    .line 1825
    .end local v0    # "cpu":D
    .end local v2    # "cpuTime":J
    :goto_0
    return-wide v0

    .line 1807
    :catch_0
    move-exception v6

    .line 1808
    .local v6, "ignored":Lorg/apache/ignite/IgniteException;
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method private getGcCpuLoad()D
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 1774
    const-wide/16 v6, 0x0

    .line 1776
    .local v6, "gcTime":J
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->gc:Ljava/util/Collection;
    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$7000()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/management/GarbageCollectorMXBean;

    .line 1777
    .local v0, "bean":Ljava/lang/management/GarbageCollectorMXBean;
    invoke-interface {v0}, Ljava/lang/management/GarbageCollectorMXBean;->getCollectionTime()J

    move-result-wide v2

    .line 1779
    .local v2, "colTime":J
    cmp-long v10, v2, v12

    if-lez v10, :cond_0

    .line 1780
    add-long/2addr v6, v2

    goto :goto_0

    .line 1783
    .end local v0    # "bean":Ljava/lang/management/GarbageCollectorMXBean;
    .end local v2    # "colTime":J
    :cond_1
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    invoke-static {v10}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getAvailableProcessors()I

    move-result v10

    int-to-long v10, v10

    div-long/2addr v6, v10

    .line 1785
    const-wide/16 v4, 0x0

    .line 1787
    .local v4, "gc":D
    iget-wide v10, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;->prevGcTime:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    .line 1788
    iget-wide v10, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;->prevGcTime:J

    sub-long v8, v6, v10

    .line 1790
    .local v8, "gcTimeDiff":J
    long-to-double v10, v8

    const-wide v12, 0x40a7700000000000L    # 3000.0

    div-double v4, v10, v12

    .line 1793
    .end local v8    # "gcTimeDiff":J
    :cond_2
    iput-wide v6, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;->prevGcTime:J

    .line 1795
    return-wide v4
.end method


# virtual methods
.method protected body()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 1762
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1763
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    .line 1765
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;->getGcCpuLoad()D

    move-result-wide v2

    # setter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->gcCpuLoad:D
    invoke-static {v0, v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2602(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;D)D

    .line 1766
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;->getCpuLoad()D

    move-result-wide v2

    # setter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cpuLoad:D
    invoke-static {v0, v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2502(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;D)D

    goto :goto_0

    .line 1768
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1830
    const-class v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
