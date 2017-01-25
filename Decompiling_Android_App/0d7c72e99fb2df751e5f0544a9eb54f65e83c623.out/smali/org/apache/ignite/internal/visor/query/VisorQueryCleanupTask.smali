.class public Lorg/apache/ignite/internal/visor/query/VisorQueryCleanupTask;
.super Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;
.source "VisorQueryCleanupTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/query/VisorQueryCleanupTask$VisorQueryCleanupJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorMultiNodeTask",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/util/UUID;",
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
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
    .line 36
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryCleanupTask;->job(Ljava/util/Map;)Lorg/apache/ignite/internal/visor/VisorJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Ljava/util/Map;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/apache/ignite/internal/visor/VisorJob",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "arg":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected map0(Ljava/util/List;Lorg/apache/ignite/internal/visor/VisorTaskArgument;)Ljava/util/Map;
    .locals 8
    .param p2    # Lorg/apache/ignite/internal/visor/VisorTaskArgument;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/internal/visor/VisorTaskArgument",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/util/Map",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p2, "arg":Lorg/apache/ignite/internal/visor/VisorTaskArgument;, "Lorg/apache/ignite/internal/visor/VisorTaskArgument<Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Ljava/lang/String;>;>;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryCleanupTask;->taskArg:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 50
    .local v3, "nodeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v1

    .line 53
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 54
    .local v2, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    new-instance v5, Lorg/apache/ignite/internal/visor/query/VisorQueryCleanupTask$VisorQueryCleanupJob;

    iget-object v4, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryCleanupTask;->taskArg:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    iget-boolean v6, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryCleanupTask;->debug:Z

    invoke-direct {v5, v4, v6}, Lorg/apache/ignite/internal/visor/query/VisorQueryCleanupTask$VisorQueryCleanupJob;-><init>(Ljava/util/Collection;Z)V

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 60
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catchall_0
    move-exception v4

    iget-boolean v5, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryCleanupTask;->debug:Z

    if-eqz v5, :cond_1

    .line 61
    iget-object v5, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryCleanupTask;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v5}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->logMapped(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Class;Ljava/util/Collection;)V

    :cond_1
    throw v4

    .line 60
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-boolean v4, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryCleanupTask;->debug:Z

    if-eqz v4, :cond_3

    .line 61
    iget-object v4, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryCleanupTask;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->logMapped(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Class;Ljava/util/Collection;)V

    :cond_3
    return-object v1
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
    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryCleanupTask;->reduce0(Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected reduce0(Ljava/util/List;)Ljava/lang/Void;
    .locals 1
    .param p1, "list"    # Ljava/util/List;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method
