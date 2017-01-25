.class public Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
.super Lorg/apache/ignite/internal/managers/GridManagerAdapter;
.source "GridDiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$10;,
        Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;,
        Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;,
        Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;,
        Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;,
        Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;,
        Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;,
        Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/managers/GridManagerAdapter",
        "<",
        "Lorg/apache/ignite/spi/discovery/DiscoverySpi;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final DISCOVERY_HISTORY_SIZE:I = 0x64

.field private static final METRICS_UPDATE_FREQ:J = 0xbb8L

.field private static final NULL_CACHE_NAME:Ljava/lang/String;

.field private static final PREFIX:Ljava/lang/String; = "Topology snapshot"

.field private static final daemonFilter:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private static final gc:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/management/GarbageCollectorMXBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final histCmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mem:Ljava/lang/management/MemoryMXBean;

.field private static final os:Ljava/lang/management/OperatingSystemMXBean;

.field private static final rt:Ljava/lang/management/RuntimeMXBean;

.field private static final threads:Ljava/lang/management/ThreadMXBean;


# instance fields
.field private volatile cpuLoad:D

.field private customEvtLsnr:Lorg/apache/ignite/internal/util/lang/GridPlainInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/lang/GridPlainInClosure",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private final discoCacheHist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;",
            ">;"
        }
    .end annotation
.end field

.field private discoOrdered:Z

.field private final discoWrk:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;

.field private volatile gcCpuLoad:D

.field private hasRslvrs:Z

.field private histSupported:Z

.field private isLocDaemon:Z

.field private final lastLoggedTop:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lastSegChkRes:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private locJoinEvt:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Lorg/apache/ignite/events/DiscoveryEvent;",
            ">;"
        }
    .end annotation
.end field

.field private locNode:Lorg/apache/ignite/cluster/ClusterNode;

.field private final metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

.field private final metricsUpdater:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;

.field private minorTopVer:I

.field private registeredCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;",
            ">;"
        }
    .end annotation
.end field

.field private segChkFreq:J

.field private segChkThread:Lorg/apache/ignite/thread/IgniteThread;

.field private segChkWrk:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;

.field private volatile topHist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final topSnap:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->$assertionsDisabled:Z

    .line 65
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->NULL_CACHE_NAME:Ljava/lang/String;

    .line 71
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getMemoryMXBean()Ljava/lang/management/MemoryMXBean;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->mem:Ljava/lang/management/MemoryMXBean;

    .line 74
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getOperatingSystemMXBean()Ljava/lang/management/OperatingSystemMXBean;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->os:Ljava/lang/management/OperatingSystemMXBean;

    .line 77
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->rt:Ljava/lang/management/RuntimeMXBean;

    .line 80
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->threads:Ljava/lang/management/ThreadMXBean;

    .line 83
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getGarbageCollectorMXBeans()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->gc:Ljava/util/Collection;

    .line 92
    new-instance v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->daemonFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 99
    new-instance v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$2;

    invoke-direct {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$2;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->histCmp:Ljava/util/Comparator;

    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 6
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    new-array v0, v4, [Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoverySpi()Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;[Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 107
    new-instance v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;

    invoke-direct {v0, p0, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoWrk:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->lastLoggedTop:Ljava/util/concurrent/atomic/AtomicLong;

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->lastSegChkRes:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {v0, v5, v5, v1, v4}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(IIFI)V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCacheHist:Ljava/util/Map;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topHist:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;

    sget-object v2, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->ZERO:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;-><init>(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topSnap:Ljava/util/concurrent/atomic/AtomicReference;

    .line 154
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->locJoinEvt:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 163
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->createMetrics()Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    .line 166
    new-instance v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;

    invoke-direct {v0, p0, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metricsUpdater:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->registeredCaches:Ljava/util/Map;

    .line 177
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Ljava/util/UUID;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    .param p1, "x1"    # Ljava/util/UUID;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->updateClientNodes(Ljava/util/UUID;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/util/lang/GridPlainInClosure;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->customEvtLsnr:Lorg/apache/ignite/internal/util/lang/GridPlainInClosure;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "x2"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->updateTopologyVersionIfGreater(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topSnap:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1700()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->daemonFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->locJoinEvt:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoWrk:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2400()Ljava/lang/management/OperatingSystemMXBean;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->os:Ljava/lang/management/OperatingSystemMXBean;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cpuLoad:D

    return-wide v0
.end method

.method static synthetic access$2502(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;D)D
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    .param p1, "x1"    # D

    .prologue
    .line 63
    iput-wide p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cpuLoad:D

    return-wide p1
.end method

.method static synthetic access$2600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->gcCpuLoad:D

    return-wide v0
.end method

.method static synthetic access$2602(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;D)D
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    .param p1, "x1"    # D

    .prologue
    .line 63
    iput-wide p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->gcCpuLoad:D

    return-wide p1
.end method

.method static synthetic access$2700()Ljava/lang/management/MemoryMXBean;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->mem:Ljava/lang/management/MemoryMXBean;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/lang/management/MemoryUsage;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nonHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900()Ljava/lang/management/RuntimeMXBean;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->rt:Ljava/lang/management/RuntimeMXBean;

    return-object v0
.end method

.method static synthetic access$3000()Ljava/lang/management/ThreadMXBean;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->threads:Ljava/lang/management/ThreadMXBean;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->hasRslvrs:Z

    return v0
.end method

.method static synthetic access$4600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkFreq:J

    return-wide v0
.end method

.method static synthetic access$4700(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->lastSegChkRes:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/spi/IgniteSpi;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoOrdered:Z

    return v0
.end method

.method static synthetic access$5600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    .param p1, "x1"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->checkAttributes(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5700(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->isLocDaemon:Z

    return v0
.end method

.method static synthetic access$5800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;JZ)V
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ackTopology(JZ)V

    return-void
.end method

.method static synthetic access$5900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkWrk:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->lastLoggedTop:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$6100(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$6200(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$6400(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$6500(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/spi/IgniteSpi;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->restartJvm()V

    return-void
.end method

.method static synthetic access$6700(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->stopNode()V

    return-void
.end method

.method static synthetic access$6800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$6900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$7000()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->gc:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$702(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topHist:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$7100(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->registeredCaches:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$7200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->NULL_CACHE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;IJ)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nextTopologyVersion(IJ)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCacheHist:Ljava/util/Map;

    return-object v0
.end method

.method private ackTopology(JZ)V
    .locals 19
    .param p1, "topVer"    # J
    .param p3, "throttle"    # Z

    .prologue
    .line 796
    sget-boolean v14, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->$assertionsDisabled:Z

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->isLocDaemon:Z

    if-eqz v14, :cond_0

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 798
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCache()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v4

    .line 800
    .local v4, "discoCache":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->remoteNodes()Ljava/util/Collection;

    move-result-object v12

    .line 802
    .local v12, "rmtNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v10

    .line 804
    .local v10, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes()Ljava/util/Collection;

    move-result-object v2

    .line 806
    .local v2, "allNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyHash(Ljava/lang/Iterable;)J

    move-result-wide v6

    .line 810
    .local v6, "hash":J
    if-eqz p3, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->lastLoggedTop:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v14, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v14

    cmp-long v14, v14, v6

    if-nez v14, :cond_2

    .line 862
    :cond_1
    :goto_0
    return-void

    .line 813
    :cond_2
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cpus(Ljava/util/Collection;)I

    move-result v13

    .line 815
    .local v13, "totalCpus":I
    const/4 v14, 0x2

    invoke-static {v2, v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->heapSize(Ljava/lang/Iterable;I)D

    move-result-wide v8

    .line 817
    .local v8, "heap":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v14}, Lorg/apache/ignite/IgniteLogger;->isQuiet()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 818
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v13, v8, v9}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologySnapshotMessage(IID)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quiet(Z[Ljava/lang/Object;)V

    .line 820
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v14}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 821
    const-string v3, ""

    .line 823
    .local v3, "dbg":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">>> +----------------+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">>> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Topology snapshot"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">>> +----------------+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">>> Grid name: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v14}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_4

    const-string v14, "default"

    :goto_1
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">>> Number of nodes: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoOrdered:Z

    if-eqz v14, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ">>> Topology version: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_2
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">>> Topology hash: 0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 832
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">>> Local: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v10}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v10}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "os.name"

    invoke-interface {v10, v15}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "os.arch"

    invoke-interface {v10, v15}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "os.version"

    invoke-interface {v10, v15}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "user.name"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "java.runtime.name"

    invoke-interface {v10, v15}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "java.runtime.version"

    invoke-interface {v10, v15}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 843
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/cluster/ClusterNode;

    .line 844
    .local v11, "node":Lorg/apache/ignite/cluster/ClusterNode;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">>> Remote: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v11}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v11}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "os.name"

    invoke-interface {v11, v15}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "os.arch"

    invoke-interface {v11, v15}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "os.version"

    invoke-interface {v11, v15}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "org.apache.ignite.user.name"

    invoke-interface {v11, v15}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "java.runtime.name"

    invoke-interface {v11, v15}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "java.runtime.version"

    invoke-interface {v11, v15}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 823
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v11    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v14}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    :cond_5
    const-string v14, ""

    goto/16 :goto_2

    .line 855
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">>> Total number of CPUs: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 856
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">>> Total heap size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "GB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 858
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v14, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 860
    .end local v3    # "dbg":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v14}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 861
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13, v8, v9}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologySnapshotMessage(IID)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private checkAttributes(Ljava/lang/Iterable;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/16 v13, 0x5d

    .line 709
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    invoke-interface {v10}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->getLocalNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    .line 711
    .local v2, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    sget-boolean v10, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    if-nez v2, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 714
    :cond_0
    const-string v10, "java.net.preferIPv4Stack"

    invoke-interface {v2, v10}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 716
    .local v4, "locPreferIpV4":Ljava/lang/String;
    const-string v10, "org.apache.ignite.ignite.dep.mode"

    invoke-interface {v2, v10}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 718
    .local v1, "locMode":Ljava/lang/Object;
    const-string v10, "org.apache.ignite.peer.classloading.enabled"

    invoke-interface {v2, v10}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 720
    .local v3, "locP2pEnabled":Z
    const/4 v9, 0x0

    .line 722
    .local v9, "warned":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/cluster/ClusterNode;

    .line 723
    .local v5, "n":Lorg/apache/ignite/cluster/ClusterNode;
    const-string v10, "java.net.preferIPv4Stack"

    invoke-interface {v5, v10}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 725
    .local v8, "rmtPreferIpV4":Ljava/lang/String;
    invoke-static {v8, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 726
    if-nez v9, :cond_2

    .line 727
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Local node\'s value of \'java.net.preferIPv4Stack\' system property differs from remote node\'s (all nodes in topology should have identical value) [locPreferIpV4="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", rmtPreferIpV4="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", locId8="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", rmtId8="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", rmtAddrs="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Local and remote \'java.net.preferIPv4Stack\' system properties do not match."

    invoke-static {v10, v11, v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 735
    :cond_2
    const/4 v9, 0x1

    .line 740
    :cond_3
    iget-boolean v10, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->isLocDaemon:Z

    if-nez v10, :cond_1

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->isDaemon()Z

    move-result v10

    if-nez v10, :cond_1

    .line 741
    const-string v10, "org.apache.ignite.ignite.dep.mode"

    invoke-interface {v5, v10}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 743
    .local v6, "rmtMode":Ljava/lang/Object;
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 744
    new-instance v10, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Remote node has deployment mode different from local [locId8="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", locMode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", rmtId8="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", rmtMode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", rmtAddrs="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 749
    :cond_4
    const-string v10, "org.apache.ignite.peer.classloading.enabled"

    invoke-interface {v5, v10}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 751
    .local v7, "rmtP2pEnabled":Z
    if-eq v3, v7, :cond_1

    .line 752
    new-instance v10, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Remote node has peer class loading enabled flag different from local [locId8="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", locPeerClassLoading="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", rmtId8="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", rmtPeerClassLoading="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", rmtAddrs="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 759
    .end local v5    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v6    # "rmtMode":Ljava/lang/Object;
    .end local v7    # "rmtP2pEnabled":Z
    .end local v8    # "rmtPreferIpV4":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 760
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v11, "Finished node attributes consistency check."

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 761
    :cond_6
    return-void
.end method

.method private checkSegmentOnStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 679
    sget-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->hasRslvrs:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 681
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Starting network segment check."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 685
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->segmentation()Lorg/apache/ignite/internal/processors/segmentation/GridSegmentationProcessor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/segmentation/GridSegmentationProcessor;->isValidSegment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 698
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Finished network segment check successfully."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 700
    :cond_2
    return-void

    .line 688
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isWaitForSegmentOnStart()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 689
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v1, 0x0

    const-string v2, "Failed to check network segment (retrying every 2000 ms)."

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 692
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    goto :goto_0

    .line 695
    :cond_4
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "Failed to check network segment."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static cpus(Ljava/util/Collection;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 768
    .local p0, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v6}, Ljava/util/HashSet;-><init>(IF)V

    .line 770
    .local v2, "macSet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 772
    .local v0, "cpus":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cluster/ClusterNode;

    .line 773
    .local v4, "n":Lorg/apache/ignite/cluster/ClusterNode;
    const-string v5, "org.apache.ignite.macs"

    invoke-interface {v4, v5}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 775
    .local v3, "macs":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 776
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalCpus()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    .line 779
    .end local v3    # "macs":Ljava/lang/String;
    .end local v4    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    return v0
.end method

.method private createMetrics()Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    .locals 1

    .prologue
    .line 494
    new-instance v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$6;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$6;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V

    return-object v0
.end method

.method private createMetricsProvider()Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;
    .locals 1

    .prologue
    .line 569
    new-instance v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$7;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V

    return-object v0
.end method

.method private discoOrdered()Z
    .locals 3

    .prologue
    .line 659
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoverySpi()Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/ignite/spi/discovery/DiscoverySpiOrderSupport;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/DiscoverySpiOrderSupport;

    .line 662
    .local v0, "ann":Lorg/apache/ignite/spi/discovery/DiscoverySpiOrderSupport;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/spi/discovery/DiscoverySpiOrderSupport;->value()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private historySupported()Z
    .locals 3

    .prologue
    .line 667
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoverySpi()Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/ignite/spi/discovery/DiscoverySpiHistorySupport;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/DiscoverySpiHistorySupport;

    .line 670
    .local v0, "ann":Lorg/apache/ignite/spi/discovery/DiscoverySpiHistorySupport;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/spi/discovery/DiscoverySpiHistorySupport;->value()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private nextTopologyVersion(IJ)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 2
    .param p1, "evtType"    # I
    .param p2, "topVer"    # J

    .prologue
    .line 282
    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    .line 283
    iget v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->minorTopVer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->minorTopVer:I

    .line 287
    :cond_0
    :goto_0
    new-instance v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->minorTopVer:I

    invoke-direct {v0, p2, p3, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(JI)V

    return-object v0

    .line 284
    :cond_1
    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->minorTopVer:I

    goto :goto_0
.end method

.method private nonHeapMemoryUsage()Ljava/lang/management/MemoryUsage;
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 193
    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->mem:Ljava/lang/management/MemoryMXBean;

    invoke-interface {v1}, Ljava/lang/management/MemoryMXBean;->getNonHeapMemoryUsage()Ljava/lang/management/MemoryUsage;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 196
    :goto_0
    return-object v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/management/MemoryUsage;

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v1 .. v9}, Ljava/lang/management/MemoryUsage;-><init>(JJJJ)V

    goto :goto_0
.end method

.method private resolveDiscoCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    .locals 6
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 1251
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topSnap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;

    .line 1253
    .local v2, "snap":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;
    sget-object v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v3, p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->access$3600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->discoCache:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->access$3900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    .line 1256
    .local v0, "cache":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    :goto_0
    if-nez v0, :cond_1

    .line 1258
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCacheHist:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->histCmp:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1260
    .local v1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {p2, v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v3

    if-gez v3, :cond_1

    .line 1261
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cache":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    check-cast v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    .line 1264
    .end local v1    # "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;>;"
    .restart local v0    # "cache":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    :cond_1
    if-nez v0, :cond_3

    .line 1265
    new-instance v3, Lorg/apache/ignite/IgniteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve nodes topology [cacheName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", topVer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", history="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCacheHist:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", locNode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1253
    .end local v0    # "cache":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCacheHist:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-object v0, v3

    goto :goto_0

    .line 1270
    .restart local v0    # "cache":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    :cond_3
    return-object v0
.end method

.method private restartJvm()V
    .locals 2

    .prologue
    .line 1371
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$9;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$9;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1380
    return-void
.end method

.method private stopNode()V
    .locals 2

    .prologue
    .line 1358
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$8;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$8;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1367
    return-void
.end method

.method private topologySnapshotMessage(IID)Ljava/lang/String;
    .locals 7
    .param p1, "rmtNodesNum"    # I
    .param p2, "totalCpus"    # I
    .param p3, "heap"    # D

    .prologue
    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Topology snapshot ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoOrdered:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ver="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topSnap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->access$3600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CPUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private updateClientNodes(Ljava/util/UUID;)V
    .locals 4
    .param p1, "leftNodeId"    # Ljava/util/UUID;

    .prologue
    .line 270
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->registeredCaches:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 271
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;

    .line 273
    .local v2, "pred":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;
    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->onNodeLeft(Ljava/util/UUID;)V

    goto :goto_0

    .line 275
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;>;"
    .end local v2    # "pred":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;
    :cond_0
    return-void
.end method

.method private updateTopologyVersionIfGreater(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;)Z
    .locals 4
    .param p1, "updated"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "discoCache"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    .prologue
    .line 1345
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topSnap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;

    .line 1347
    .local v0, "cur":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->access$3600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 1348
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topSnap:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;-><init>(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1349
    const/4 v1, 0x1

    .line 1352
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ackTopology()V
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topSnap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->access$3600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ackTopology(JZ)V

    .line 787
    return-void
.end method

.method public addClientNode(Ljava/lang/String;Ljava/util/UUID;Z)V
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "clientNodeId"    # Ljava/util/UUID;
    .param p3, "nearEnabled"    # Z

    .prologue
    .line 240
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->registeredCaches:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;

    .line 242
    .local v0, "predicate":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p2, p3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->addClientNode(Ljava/util/UUID;Z)V

    .line 244
    :cond_0
    return-void
.end method

.method public alive(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 931
    sget-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 933
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    invoke-interface {v0, p1}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->getNode(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public alive(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 941
    sget-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 943
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public aliveAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    const/4 v2, 0x0

    .line 916
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 923
    :cond_0
    :goto_0
    return v2

    .line 919
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 920
    .local v1, "id":Ljava/util/UUID;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Ljava/util/UUID;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 923
    .end local v1    # "id":Ljava/util/UUID;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public aliveCacheNodes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 4
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1141
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->resolveDiscoCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveCacheNodes(Ljava/lang/String;J)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public aliveNodesWithCaches(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 4
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1172
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->resolveDiscoCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveNodesWithCaches(J)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public aliveRemoteCacheNodes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 4
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1152
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->resolveDiscoCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveRemoteCacheNodes(Ljava/lang/String;J)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public aliveRemoteNodesWithCaches(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 4
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1162
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->resolveDiscoCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveRemoteNodesWithCaches(J)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public allNodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1064
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCache()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public cacheAffinityNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z
    .locals 2
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 1194
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->registeredCaches:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;

    .line 1196
    .local v0, "predicate":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->dataNode(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cacheAffinityNodes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 4
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1183
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->resolveDiscoCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->cacheAffinityNodes(Ljava/lang/String;J)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public cacheClientNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z
    .locals 2
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 1216
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->registeredCaches:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;

    .line 1218
    .local v0, "predicate":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->clientNode(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cacheNearNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z
    .locals 2
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 1205
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->registeredCaches:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;

    .line 1207
    .local v0, "predicate":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->nearNode(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cacheNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z
    .locals 2
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 1227
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->registeredCaches:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;

    .line 1229
    .local v0, "predicate":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->cacheNode(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cacheNodes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 4
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1099
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->resolveDiscoCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->cacheNodes(Ljava/lang/String;J)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public cacheNodes(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 4
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1109
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->resolveDiscoCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodesWithCaches(J)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public clientNodesMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 250
    const/4 v3, 0x0

    .line 252
    .local v3, "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Boolean;>;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->registeredCaches:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 253
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;

    .line 255
    .local v2, "pred":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->clientNodes:Ljava/util/Map;
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->access$400(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 256
    if-nez v3, :cond_1

    .line 257
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->registeredCaches:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v3

    .line 259
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->clientNodes:Ljava/util/Map;
    invoke-static {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->access$400(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 263
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;>;"
    .end local v2    # "pred":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;
    :cond_2
    return-object v3
.end method

.method public daemonNodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1291
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCache()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->daemonNodes()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public discoCache()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1036
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topSnap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;

    .local v0, "cur":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;
    if-nez v0, :cond_1

    .line 1038
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topSnap:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;

    .end local v0    # "cur":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;
    sget-object v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->ZERO:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    new-instance v4, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    invoke-interface {v1}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->getRemoteNodes()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v4, p0, v5, v1, v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V

    invoke-direct {v0, v3, v4, v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;-><init>(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V

    .restart local v0    # "cur":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;
    invoke-virtual {v2, v6, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1041
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->discoCache:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->access$3900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v1

    .line 1045
    :goto_0
    return-object v1

    :cond_1
    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->discoCache:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->access$3900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v1

    goto :goto_0
.end method

.method public discoCache(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    .locals 1
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 1054
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCacheHist:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    return-object v0
.end method

.method public gridStartTime()J
    .locals 2

    .prologue
    .line 1334
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    invoke-interface {v0}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->getGridStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasNearCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 1240
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->resolveDiscoCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->hasNearCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public localJoinEvent()Lorg/apache/ignite/events/DiscoveryEvent;
    .locals 2

    .prologue
    .line 1314
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->locJoinEvt:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/events/DiscoveryEvent;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1316
    :catch_0
    move-exception v0

    .line 1317
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public localNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    invoke-interface {v0}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->getLocalNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    goto :goto_0
.end method

.method public metrics()Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics:Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    return-object v0
.end method

.method public node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 961
    sget-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 963
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCache()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public nodes(J)Ljava/util/Collection;
    .locals 3
    .param p1, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1088
    const/4 v0, 0x0

    new-instance v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {v1, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->resolveDiscoCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public varargs nodes(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/util/UUID;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 974
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<Ljava/util/UUID;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id2Node(Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->notNull()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public onBeforeSpiStart()V
    .locals 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    .line 204
    .local v0, "spi":Lorg/apache/ignite/spi/discovery/DiscoverySpi;
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->nodeAttributes()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/IgniteVersionUtils;->VER:Lorg/apache/ignite/lang/IgniteProductVersion;

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->setNodeAttributes(Ljava/util/Map;Lorg/apache/ignite/lang/IgniteProductVersion;)V

    .line 205
    return-void
.end method

.method public onKernalStop0(Z)V
    .locals 3
    .param p1, "cancel"    # Z

    .prologue
    .line 882
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkWrk:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkWrk:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;->cancel()V

    .line 885
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkThread:Lorg/apache/ignite/thread/IgniteThread;

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 888
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->locJoinEvt:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 889
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->locJoinEvt:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v2, "Failed to wait for local node joined event (grid is stopping)."

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 890
    :cond_1
    return-void
.end method

.method public pingNode(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 951
    sget-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 953
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    invoke-interface {v0, p1}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->pingNode(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public remoteCacheNodes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 4
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1120
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->resolveDiscoCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->remoteCacheNodes(Ljava/lang/String;J)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remoteCacheNodes(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 4
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1130
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->resolveDiscoCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->remoteCacheNodes(J)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remoteNodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1059
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCache()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->remoteNodes()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public removeCacheFilter(Ljava/lang/String;)V
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->registeredCaches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public sendCustomEvent(Ljava/io/Serializable;)V
    .locals 1
    .param p1, "evt"    # Ljava/io/Serializable;

    .prologue
    .line 1325
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    invoke-interface {v0, p1}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->sendCustomEvent(Ljava/io/Serializable;)V

    .line 1326
    return-void
.end method

.method public setCacheFilter(Ljava/lang/String;Lorg/apache/ignite/lang/IgnitePredicate;ZZ)V
    .locals 3
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p3, "nearEnabled"    # Z
    .param p4, "loc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p2, "filter":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->registeredCaches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->registeredCaches:Ljava/util/Map;

    new-instance v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, p4, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;-><init>(Lorg/apache/ignite/lang/IgnitePredicate;ZZLorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_0
    return-void
.end method

.method public setCustomEventListener(Lorg/apache/ignite/internal/util/lang/GridPlainInClosure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/lang/GridPlainInClosure",
            "<",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    .local p1, "customEvtLsnr":Lorg/apache/ignite/internal/util/lang/GridPlainInClosure;, "Lorg/apache/ignite/internal/util/lang/GridPlainInClosure<Ljava/io/Serializable;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->customEvtLsnr:Lorg/apache/ignite/internal/util/lang/GridPlainInClosure;

    .line 488
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1078
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCache()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public start()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 292
    const-wide/16 v2, -0x1

    .line 295
    .local v2, "totSysMemory":J
    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->os:Ljava/lang/management/OperatingSystemMXBean;

    const-string v4, "totalPhysicalMemorySize"

    invoke-static {v1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->property(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 301
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-string v4, "org.apache.ignite.phy.ram"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/apache/ignite/internal/GridKernalContext;->addNodeAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    .line 305
    .local v0, "spi":Lorg/apache/ignite/spi/discovery/DiscoverySpi;
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoOrdered()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoOrdered:Z

    .line 307
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->historySupported()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->histSupported:Z

    .line 309
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->isDaemon()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->isLocDaemon:Z

    .line 311
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSegmentationResolvers()[Lorg/apache/ignite/plugin/segmentation/GridSegmentationResolver;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->hasRslvrs:Z

    .line 313
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSegmentCheckFrequency()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkFreq:J

    .line 315
    iget-boolean v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->hasRslvrs:Z

    if-eqz v1, :cond_3

    .line 316
    iget-wide v4, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkFreq:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_1

    .line 317
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Segment check frequency cannot be negative: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkFreq:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 319
    :cond_1
    iget-wide v4, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkFreq:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_2

    iget-wide v4, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkFreq:J

    const-wide/16 v6, 0x7d0

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    .line 320
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Configuration parameter \'segmentCheckFrequency\' is too low (at least 2000 ms recommended): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkFreq:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 323
    :cond_2
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->checkSegmentOnStart()V

    .line 326
    :cond_3
    new-instance v1, Lorg/apache/ignite/thread/IgniteThread;

    iget-object v4, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metricsUpdater:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;

    invoke-direct {v1, v4}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    invoke-virtual {v1}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 328
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->createMetricsProvider()Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->setMetricsProvider(Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;)V

    .line 330
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->enabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 331
    new-instance v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$3;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$3;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->setAuthenticator(Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;)V

    .line 347
    :cond_4
    new-instance v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->setListener(Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;)V

    .line 419
    new-instance v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$5;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$5;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->setDataExchange(Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;)V

    .line 458
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->startSpi()V

    .line 461
    iget-boolean v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->hasRslvrs:Z

    if-eqz v1, :cond_5

    iget-wide v4, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkFreq:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_5

    .line 462
    new-instance v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;

    invoke-direct {v1, p0, v10}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkWrk:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;

    .line 464
    new-instance v1, Lorg/apache/ignite/thread/IgniteThread;

    iget-object v4, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkWrk:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$SegmentCheckWorker;

    invoke-direct {v1, v4}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkThread:Lorg/apache/ignite/thread/IgniteThread;

    .line 466
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->segChkThread:Lorg/apache/ignite/thread/IgniteThread;

    invoke-virtual {v1}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 469
    :cond_5
    invoke-interface {v0}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->getLocalNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    .line 471
    new-instance v4, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    new-instance v5, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    invoke-interface {v1}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->getRemoteNodes()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v5, p0, v6, v1, v10}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V

    invoke-direct {p0, v4, v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->updateTopologyVersionIfGreater(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;)Z

    .line 474
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCache()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->remoteNodes()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->checkAttributes(Ljava/lang/Iterable;)V

    .line 477
    new-instance v1, Lorg/apache/ignite/thread/IgniteThread;

    iget-object v4, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoWrk:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;

    invoke-direct {v1, v4}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    invoke-virtual {v1}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 479
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 480
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->startInfo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 481
    :cond_6
    return-void

    .line 297
    .end local v0    # "spi":Lorg/apache/ignite/spi/discovery/DiscoverySpi;
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 895
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/discovery/DiscoverySpi;->setListener(Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;)V

    .line 898
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoWrk:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cancel(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 899
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metricsUpdater:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cancel(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 901
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoWrk:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Lorg/apache/ignite/internal/util/worker/GridWorker;Lorg/apache/ignite/IgniteLogger;)Z

    .line 902
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metricsUpdater:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$MetricsUpdater;

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Lorg/apache/ignite/internal/util/worker/GridWorker;Lorg/apache/ignite/IgniteLogger;)Z

    .line 905
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->stopSpi()V

    .line 907
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 909
    :cond_0
    return-void
.end method

.method public topology(J)Ljava/util/Collection;
    .locals 3
    .param p1, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1280
    iget-boolean v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->histSupported:Z

    if-nez v1, :cond_0

    .line 1281
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Current discovery SPI does not support topology snapshots history (consider using TCP discovery SPI)."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1284
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topHist:Ljava/util/Map;

    .line 1286
    .local v0, "snapshots":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    return-object v1
.end method

.method public topologyFuture(J)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .param p1, "awaitVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1016
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v2

    .line 1018
    .local v2, "topVer":J
    cmp-long v1, v2, p1

    if-ltz v1, :cond_0

    .line 1019
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 1025
    :goto_0
    return-object v0

    .line 1021
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const/4 v4, 0x0

    invoke-direct {v0, v1, p1, p2, v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;JLorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V

    .line 1023
    .local v0, "fut":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;
    # invokes: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;->init()V
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;->access$3800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;)V

    goto :goto_0
.end method

.method public topologyHash(Ljava/lang/Iterable;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 987
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 989
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 991
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 992
    const-wide/16 v6, 0x0

    .line 1006
    :goto_0
    return-wide v6

    .line 994
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 996
    .local v4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    .line 997
    .local v3, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 999
    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1001
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 1003
    .local v0, "hash":Ljava/util/zip/CRC32;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1004
    .local v5, "uuid":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/zip/CRC32;->update([B)V

    goto :goto_2

    .line 1006
    .end local v5    # "uuid":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    goto :goto_0
.end method

.method public topologyVersion()J
    .locals 2

    .prologue
    .line 1301
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topSnap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->access$3600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public topologyVersionEx()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topSnap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;->access$3600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$Snapshot;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersionMap()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteProductVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1073
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCache()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->versionsMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
