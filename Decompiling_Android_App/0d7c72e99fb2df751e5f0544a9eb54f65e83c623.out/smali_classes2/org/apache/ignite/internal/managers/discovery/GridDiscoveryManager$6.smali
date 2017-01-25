.class Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$6;
.super Ljava/lang/Object;
.source "GridDiscoveryManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->createMetrics()Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$6;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableProcessors()I
    .locals 1

    .prologue
    .line 496
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->os:Ljava/lang/management/OperatingSystemMXBean;
    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2400()Ljava/lang/management/OperatingSystemMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/OperatingSystemMXBean;->getAvailableProcessors()I

    move-result v0

    return v0
.end method

.method public getCurrentCpuLoad()D
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$6;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cpuLoad:D
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2500(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentGcCpuLoad()D
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$6;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->gcCpuLoad:D
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDaemonThreadCount()I
    .locals 1

    .prologue
    .line 560
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->threads:Ljava/lang/management/ThreadMXBean;
    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3000()Ljava/lang/management/ThreadMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/ThreadMXBean;->getDaemonThreadCount()I

    move-result v0

    return v0
.end method

.method public getHeapMemoryCommitted()J
    .locals 2

    .prologue
    .line 516
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->mem:Ljava/lang/management/MemoryMXBean;
    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2700()Ljava/lang/management/MemoryMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/MemoryMXBean;->getHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/management/MemoryUsage;->getCommitted()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeapMemoryInitialized()J
    .locals 2

    .prologue
    .line 508
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->mem:Ljava/lang/management/MemoryMXBean;
    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2700()Ljava/lang/management/MemoryMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/MemoryMXBean;->getHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/management/MemoryUsage;->getInit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeapMemoryMaximum()J
    .locals 2

    .prologue
    .line 520
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->mem:Ljava/lang/management/MemoryMXBean;
    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2700()Ljava/lang/management/MemoryMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/MemoryMXBean;->getHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/management/MemoryUsage;->getMax()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeapMemoryUsed()J
    .locals 2

    .prologue
    .line 512
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->mem:Ljava/lang/management/MemoryMXBean;
    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2700()Ljava/lang/management/MemoryMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/MemoryMXBean;->getHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/management/MemoryUsage;->getUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNonHeapMemoryCommitted()J
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$6;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # invokes: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nonHeapMemoryUsage()Ljava/lang/management/MemoryUsage;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/lang/management/MemoryUsage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/management/MemoryUsage;->getCommitted()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNonHeapMemoryInitialized()J
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$6;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # invokes: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nonHeapMemoryUsage()Ljava/lang/management/MemoryUsage;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/lang/management/MemoryUsage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/management/MemoryUsage;->getInit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNonHeapMemoryMaximum()J
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$6;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # invokes: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nonHeapMemoryUsage()Ljava/lang/management/MemoryUsage;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/lang/management/MemoryUsage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/management/MemoryUsage;->getMax()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNonHeapMemoryUsed()J
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$6;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # invokes: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nonHeapMemoryUsage()Ljava/lang/management/MemoryUsage;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/lang/management/MemoryUsage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/management/MemoryUsage;->getUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPeakThreadCount()I
    .locals 1

    .prologue
    .line 552
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->threads:Ljava/lang/management/ThreadMXBean;
    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3000()Ljava/lang/management/ThreadMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/ThreadMXBean;->getPeakThreadCount()I

    move-result v0

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 544
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->rt:Ljava/lang/management/RuntimeMXBean;
    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2900()Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/RuntimeMXBean;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getThreadCount()I
    .locals 1

    .prologue
    .line 548
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->threads:Ljava/lang/management/ThreadMXBean;
    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3000()Ljava/lang/management/ThreadMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/ThreadMXBean;->getThreadCount()I

    move-result v0

    return v0
.end method

.method public getTotalStartedThreadCount()J
    .locals 2

    .prologue
    .line 556
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->threads:Ljava/lang/management/ThreadMXBean;
    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$3000()Ljava/lang/management/ThreadMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/ThreadMXBean;->getTotalStartedThreadCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUptime()J
    .locals 2

    .prologue
    .line 540
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->rt:Ljava/lang/management/RuntimeMXBean;
    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2900()Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/RuntimeMXBean;->getUptime()J

    move-result-wide v0

    return-wide v0
.end method
