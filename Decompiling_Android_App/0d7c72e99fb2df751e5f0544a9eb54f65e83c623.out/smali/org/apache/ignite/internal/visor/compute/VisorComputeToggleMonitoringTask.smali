.class public Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask;
.super Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;
.source "VisorComputeToggleMonitoringTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$1;,
        Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$VisorComputeToggleMonitoringJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorMultiNodeTask",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask;->job(Lorg/apache/ignite/lang/IgniteBiTuple;)Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$VisorComputeToggleMonitoringJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Lorg/apache/ignite/lang/IgniteBiTuple;)Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$VisorComputeToggleMonitoringJob;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$VisorComputeToggleMonitoringJob;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v0, Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$VisorComputeToggleMonitoringJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$VisorComputeToggleMonitoringJob;-><init>(Lorg/apache/ignite/lang/IgniteBiTuple;ZLorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask$1;)V

    return-object v0
.end method

.method protected reduce0(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    const/4 v3, 0x1

    .line 44
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 46
    .local v2, "toggles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Boolean;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/compute/ComputeJobResult;

    .line 47
    .local v1, "res":Lorg/apache/ignite/compute/ComputeJobResult;
    invoke-interface {v1}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v1    # "res":Lorg/apache/ignite/compute/ComputeJobResult;
    :cond_0
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic reduce0(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/compute/VisorComputeToggleMonitoringTask;->reduce0(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
