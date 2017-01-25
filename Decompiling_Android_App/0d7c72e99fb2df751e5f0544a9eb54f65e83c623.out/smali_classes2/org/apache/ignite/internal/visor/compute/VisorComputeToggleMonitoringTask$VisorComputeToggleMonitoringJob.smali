.class Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$VisorComputeToggleMonitoringJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorComputeToggleMonitoringTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorComputeToggleMonitoringJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Lorg/apache/ignite/lang/IgniteBiTuple;Z)V
    .locals 0
    .param p2, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/lang/IgniteBiTuple;ZLorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/lang/IgniteBiTuple;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$1;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$VisorComputeToggleMonitoringJob;-><init>(Lorg/apache/ignite/lang/IgniteBiTuple;Z)V

    return-void
.end method


# virtual methods
.method protected run(Lorg/apache/ignite/lang/IgniteBiTuple;)Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$VisorComputeToggleMonitoringJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-static {v6}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->checkExplicitTaskMonitoring(Lorg/apache/ignite/Ignite;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 76
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 102
    :goto_0
    return-object v6

    .line 78
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$VisorComputeToggleMonitoringJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v6}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    .line 80
    .local v4, "storage":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;>;"
    const-string v6, "VISOR_COMPUTE_MONITORING_KEY"

    invoke-interface {v4, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;

    .line 82
    .local v0, "holder":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    if-nez v0, :cond_1

    .line 83
    new-instance v1, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;

    invoke-direct {v1}, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;-><init>()V

    .line 85
    .local v1, "holderNew":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    const-string v6, "VISOR_COMPUTE_MONITORING_KEY"

    invoke-interface {v4, v6, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;

    .line 88
    .local v2, "holderOld":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    if-nez v2, :cond_2

    move-object v0, v1

    .line 91
    .end local v1    # "holderNew":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    .end local v2    # "holderOld":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 93
    .local v5, "visorKey":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 96
    .local v3, "state":Z
    if-eqz v3, :cond_3

    .line 97
    iget-object v6, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$VisorComputeToggleMonitoringJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-virtual {v0, v6, v5}, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->startCollect(Lorg/apache/ignite/internal/IgniteEx;Ljava/lang/String;)V

    .line 102
    :goto_2
    iget-object v6, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$VisorComputeToggleMonitoringJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    sget-object v7, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->VISOR_TASK_EVTS:[I

    invoke-interface {v6, v7}, Lorg/apache/ignite/internal/IgniteEx;->allEventsUserRecordable([I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .end local v3    # "state":Z
    .end local v5    # "visorKey":Ljava/lang/String;
    .restart local v1    # "holderNew":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    .restart local v2    # "holderOld":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    :cond_2
    move-object v0, v2

    .line 88
    goto :goto_1

    .line 99
    .end local v1    # "holderNew":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    .end local v2    # "holderOld":Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;
    .restart local v3    # "state":Z
    .restart local v5    # "visorKey":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$VisorComputeToggleMonitoringJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-virtual {v0, v6, v5}, Lorg/apache/ignite/internal/visor/compute/VisorComputeMonitoringHolder;->stopCollect(Lorg/apache/ignite/internal/IgniteEx;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 61
    check-cast p1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$VisorComputeToggleMonitoringJob;->run(Lorg/apache/ignite/lang/IgniteBiTuple;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-class v0, Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$VisorComputeToggleMonitoringJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
