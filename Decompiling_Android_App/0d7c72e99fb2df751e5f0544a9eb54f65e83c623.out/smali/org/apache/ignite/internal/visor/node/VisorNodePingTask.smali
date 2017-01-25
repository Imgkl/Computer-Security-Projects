.class public Lorg/apache/ignite/internal/visor/node/VisorNodePingTask;
.super Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.source "VisorNodePingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/node/VisorNodePingTask$VisorNodePingJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorOneNodeTask",
        "<",
        "Ljava/util/UUID;",
        "Lorg/apache/ignite/internal/util/lang/GridTuple3",
        "<",
        "Ljava/lang/Boolean;",
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
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodePingTask;->job(Ljava/util/UUID;)Lorg/apache/ignite/internal/visor/node/VisorNodePingTask$VisorNodePingJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Ljava/util/UUID;)Lorg/apache/ignite/internal/visor/node/VisorNodePingTask$VisorNodePingJob;
    .locals 2
    .param p1, "arg"    # Ljava/util/UUID;

    .prologue
    .line 40
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorNodePingTask$VisorNodePingJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodePingTask;->debug:Z

    invoke-direct {v0, p1, v1}, Lorg/apache/ignite/internal/visor/node/VisorNodePingTask$VisorNodePingJob;-><init>(Ljava/util/UUID;Z)V

    return-object v0
.end method

.method protected bridge synthetic reduce0(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodePingTask;->reduce0(Ljava/util/List;)Lorg/apache/ignite/internal/util/lang/GridTuple3;

    move-result-object v0

    return-object v0
.end method

.method protected reduce0(Ljava/util/List;)Lorg/apache/ignite/internal/util/lang/GridTuple3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    const-wide/16 v4, -0x1

    .line 46
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;->reduce0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/lang/GridTuple3;
    :try_end_0
    .catch Lorg/apache/ignite/cluster/ClusterTopologyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "ignored":Lorg/apache/ignite/cluster/ClusterTopologyException;
    new-instance v1, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/lang/GridTuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
