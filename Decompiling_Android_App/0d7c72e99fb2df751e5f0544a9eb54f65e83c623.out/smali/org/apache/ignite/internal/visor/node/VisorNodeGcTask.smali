.class public Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask;
.super Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;
.source "VisorNodeGcTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask$1;,
        Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask$VisorNodeGcJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorMultiNodeTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/util/UUID;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;>;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;>;"
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
    .line 34
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask;->job(Ljava/lang/Void;)Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask$VisorNodeGcJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Ljava/lang/Void;)Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask$VisorNodeGcJob;
    .locals 3
    .param p1, "arg"    # Ljava/lang/Void;

    .prologue
    .line 41
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask$VisorNodeGcJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask$VisorNodeGcJob;-><init>(Ljava/lang/Void;ZLorg/apache/ignite/internal/visor/node/VisorNodeGcTask$1;)V

    return-object v0
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
    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask;->reduce0(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected reduce0(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 46
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v3, "total":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/compute/ComputeJobResult;

    .line 49
    .local v2, "res":Lorg/apache/ignite/compute/ComputeJobResult;
    invoke-interface {v2}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 51
    .local v1, "jobRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface {v2}, Lorg/apache/ignite/compute/ComputeJobResult;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 54
    .end local v1    # "jobRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v2    # "res":Lorg/apache/ignite/compute/ComputeJobResult;
    :cond_0
    return-object v3
.end method
