.class Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder$1;
.super Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;
.source "VisorComputeMonitoringHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->scheduleCleanupJob(Lorg/apache/ignite/internal/IgniteEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;

.field final synthetic val$ignite:Lorg/apache/ignite/internal/IgniteEx;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;JLorg/apache/ignite/internal/IgniteEx;)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 101
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder$1;->this$0:Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;

    iput-object p4, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder$1;->val$ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-direct {p0, p2, p3}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 5

    .prologue
    .line 103
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder$1;->this$0:Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;

    # getter for: Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->listenVisor:Ljava/util/Map;
    invoke-static {v2}, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->access$000(Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 104
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder$1;->this$0:Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;

    iget-object v4, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder$1;->val$ignite:Lorg/apache/ignite/internal/IgniteEx;

    # invokes: Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->tryDisableEvents(Lorg/apache/ignite/internal/IgniteEx;)Z
    invoke-static {v2, v4}, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->access$100(Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;Lorg/apache/ignite/internal/IgniteEx;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder$1;->this$0:Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;

    # getter for: Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->listenVisor:Ljava/util/Map;
    invoke-static {v2}, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->access$000(Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    .local v1, "visorKey":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder$1;->this$0:Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;

    # getter for: Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->listenVisor:Ljava/util/Map;
    invoke-static {v2}, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->access$000(Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;)Ljava/util/Map;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "visorKey":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 108
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder$1;->this$0:Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;

    iget-object v4, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder$1;->val$ignite:Lorg/apache/ignite/internal/IgniteEx;

    # invokes: Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->scheduleCleanupJob(Lorg/apache/ignite/internal/IgniteEx;)V
    invoke-static {v2, v4}, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->access$200(Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;Lorg/apache/ignite/internal/IgniteEx;)V

    .line 112
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    monitor-exit v3

    .line 113
    return-void

    .line 111
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder$1;->this$0:Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;

    const/4 v4, 0x1

    # setter for: Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->cleanupStopped:Z
    invoke-static {v2, v4}, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->access$302(Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
