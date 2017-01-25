.class Lorg/apache/ignite/internal/visor/compute/VisorComputeCancelSessionsTask$VisorComputeCancelSessionsJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorComputeCancelSessionsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/compute/VisorComputeCancelSessionsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorComputeCancelSessionsJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/util/UUID;",
        "Ljava/util/Set",
        "<",
        "Lorg/apache/ignite/lang/IgniteUuid;",
        ">;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/util/Map;Z)V
    .locals 0
    .param p2, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "arg":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Set<Lorg/apache/ignite/lang/IgniteUuid;>;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;ZLorg/apache/ignite/internal/visor/compute/VisorComputeCancelSessionsTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/compute/VisorComputeCancelSessionsTask$1;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/compute/VisorComputeCancelSessionsTask$VisorComputeCancelSessionsJob;-><init>(Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 52
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/compute/VisorComputeCancelSessionsTask$VisorComputeCancelSessionsJob;->run(Ljava/util/Map;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/util/Map;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "arg":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Set<Lorg/apache/ignite/lang/IgniteUuid;>;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeCancelSessionsTask$VisorComputeCancelSessionsJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v6}, Lorg/apache/ignite/internal/IgniteEx;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 68
    .local v5, "sesIds":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/lang/IgniteUuid;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 69
    iget-object v6, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeCancelSessionsTask$VisorComputeCancelSessionsJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    iget-object v7, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeCancelSessionsTask$VisorComputeCancelSessionsJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v7}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forLocal()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/internal/IgniteEx;->compute(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/IgniteCompute;

    move-result-object v0

    .line 71
    .local v0, "compute":Lorg/apache/ignite/IgniteCompute;
    invoke-interface {v0}, Lorg/apache/ignite/IgniteCompute;->activeTaskFutures()Ljava/util/Map;

    move-result-object v2

    .line 73
    .local v2, "futs":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/compute/ComputeTaskFuture<Ljava/lang/Object;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/lang/IgniteUuid;

    .line 74
    .local v4, "sesId":Lorg/apache/ignite/lang/IgniteUuid;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/compute/ComputeTaskFuture;

    .line 76
    .local v1, "fut":Lorg/apache/ignite/compute/ComputeTaskFuture;, "Lorg/apache/ignite/compute/ComputeTaskFuture<Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 77
    invoke-interface {v1}, Lorg/apache/ignite/compute/ComputeTaskFuture;->cancel()Z

    goto :goto_0

    .line 81
    .end local v0    # "compute":Lorg/apache/ignite/IgniteCompute;
    .end local v1    # "fut":Lorg/apache/ignite/compute/ComputeTaskFuture;, "Lorg/apache/ignite/compute/ComputeTaskFuture<Ljava/lang/Object;>;"
    .end local v2    # "futs":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/compute/ComputeTaskFuture<Ljava/lang/Object;>;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "sesId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_1
    const/4 v6, 0x0

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-class v0, Lorg/apache/ignite/internal/visor/compute/VisorComputeCancelSessionsTask$VisorComputeCancelSessionsJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
