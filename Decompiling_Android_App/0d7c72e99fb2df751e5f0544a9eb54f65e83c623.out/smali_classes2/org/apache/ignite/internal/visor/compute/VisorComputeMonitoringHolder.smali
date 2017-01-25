.class public Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
.super Ljava/lang/Object;
.source "VisorComputeMonitoringHolder.java"


# static fields
.field protected static final CLEANUP_TIMEOUT:I = 0x1d4c0

.field public static final COMPUTE_MONITORING_HOLDER_KEY:Ljava/lang/String; = "VISOR_COMPUTE_MONITORING_KEY"


# instance fields
.field private cleanupStopped:Z

.field private final listenVisor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->listenVisor:Ljava/util/Map;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->cleanupStopped:Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->listenVisor:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;Lorg/apache/ignite/internal/IgniteEx;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    .param p1, "x1"    # Lorg/apache/ignite/internal/IgniteEx;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->tryDisableEvents(Lorg/apache/ignite/internal/IgniteEx;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;Lorg/apache/ignite/internal/IgniteEx;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    .param p1, "x1"    # Lorg/apache/ignite/internal/IgniteEx;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->scheduleCleanupJob(Lorg/apache/ignite/internal/IgniteEx;)V

    return-void
.end method

.method static synthetic access$302(Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->cleanupStopped:Z

    return p1
.end method

.method private scheduleCleanupJob(Lorg/apache/ignite/internal/IgniteEx;)V
    .locals 4
    .param p1, "ignite"    # Lorg/apache/ignite/internal/IgniteEx;

    .prologue
    .line 101
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteEx;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder$1;

    const-wide/32 v2, 0x1d4c0

    invoke-direct {v1, p0, v2, v3, p1}, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder$1;-><init>(Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;JLorg/apache/ignite/internal/IgniteEx;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 115
    return-void
.end method

.method private tryDisableEvents(Lorg/apache/ignite/internal/IgniteEx;)Z
    .locals 2
    .param p1, "ignite"    # Lorg/apache/ignite/internal/IgniteEx;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->listenVisor:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->listenVisor:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 74
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteEx;->events()Lorg/apache/ignite/IgniteEvents;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->VISOR_TASK_EVTS:[I

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteEvents;->disableLocal([I)V

    .line 78
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->VISOR_TASK_EVTS:[I

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/IgniteEx;->allEventsUserRecordable([I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public startCollect(Lorg/apache/ignite/internal/IgniteEx;Ljava/lang/String;)V
    .locals 3
    .param p1, "ignite"    # Lorg/apache/ignite/internal/IgniteEx;
    .param p2, "visorKey"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v1, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->listenVisor:Ljava/util/Map;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->cleanupStopped:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->scheduleCleanupJob(Lorg/apache/ignite/internal/IgniteEx;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->cleanupStopped:Z

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->listenVisor:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteEx;->events()Lorg/apache/ignite/IgniteEvents;

    move-result-object v0

    sget-object v2, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->VISOR_TASK_EVTS:[I

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteEvents;->enableLocal([I)V

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopCollect(Lorg/apache/ignite/internal/IgniteEx;Ljava/lang/String;)V
    .locals 2
    .param p1, "g"    # Lorg/apache/ignite/internal/IgniteEx;
    .param p2, "visorKey"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v1, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->listenVisor:Ljava/util/Map;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->listenVisor:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->tryDisableEvents(Lorg/apache/ignite/internal/IgniteEx;)Z

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-class v0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
