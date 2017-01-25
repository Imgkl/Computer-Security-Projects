.class public abstract Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;
.super Ljava/lang/Object;
.source "VisorMultiNodeTask.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "J:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/compute/ComputeTask",
        "<",
        "Lorg/apache/ignite/internal/visor/VisorTaskArgument",
        "<TA;>;TR;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected debug:Z

.field protected ignite:Lorg/apache/ignite/internal/IgniteEx;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field protected start:J

.field protected taskArg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;, "Lorg/apache/ignite/internal/visor/VisorMultiNodeTask<TA;TR;TJ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lorg/apache/ignite/internal/visor/VisorJob",
            "<TA;TJ;>;"
        }
    .end annotation
.end method

.method public bridge synthetic map(Ljava/util/List;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;, "Lorg/apache/ignite/internal/visor/VisorMultiNodeTask<TA;TR;TJ;>;"
    check-cast p2, Lorg/apache/ignite/internal/visor/VisorTaskArgument;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->map(Ljava/util/List;Lorg/apache/ignite/internal/visor/VisorTaskArgument;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/util/List;Lorg/apache/ignite/internal/visor/VisorTaskArgument;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/internal/visor/VisorTaskArgument",
            "<TA;>;)",
            "Ljava/util/Map",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;, "Lorg/apache/ignite/internal/visor/VisorMultiNodeTask<TA;TR;TJ;>;"
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p2, "arg":Lorg/apache/ignite/internal/visor/VisorTaskArgument;, "Lorg/apache/ignite/internal/visor/VisorTaskArgument<TA;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->start:J

    .line 65
    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/VisorTaskArgument;->debug()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->debug:Z

    .line 67
    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/VisorTaskArgument;->argument()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->taskArg:Ljava/lang/Object;

    .line 69
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->debug:Z

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->start:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->logStart(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Class;J)V

    .line 72
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->map0(Ljava/util/List;Lorg/apache/ignite/internal/visor/VisorTaskArgument;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected map0(Ljava/util/List;Lorg/apache/ignite/internal/visor/VisorTaskArgument;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/internal/visor/VisorTaskArgument",
            "<TA;>;)",
            "Ljava/util/Map",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;, "Lorg/apache/ignite/internal/visor/VisorMultiNodeTask<TA;TR;TJ;>;"
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p2, "arg":Lorg/apache/ignite/internal/visor/VisorTaskArgument;, "Lorg/apache/ignite/internal/visor/VisorTaskArgument<TA;>;"
    invoke-virtual {p2}, Lorg/apache/ignite/internal/visor/VisorTaskArgument;->nodes()Ljava/util/Collection;

    move-result-object v3

    .line 86
    .local v3, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v1

    .line 89
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

    .line 90
    .local v2, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    iget-object v4, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->taskArg:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catchall_0
    move-exception v4

    iget-boolean v5, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->debug:Z

    if-eqz v5, :cond_1

    .line 97
    iget-object v5, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v5}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->logMapped(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Class;Ljava/util/Collection;)V

    :cond_1
    throw v4

    .line 96
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-boolean v4, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->debug:Z

    if-eqz v4, :cond_3

    .line 97
    iget-object v4, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->ignite:Lorg/apache/ignite/internal/IgniteEx;

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

.method public final reduce(Ljava/util/List;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)TR;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;, "Lorg/apache/ignite/internal/visor/VisorMultiNodeTask<TA;TR;TJ;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->reduce0(Ljava/util/List;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 122
    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->debug:Z

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->start:J

    invoke-static {v1, v2, v4, v5}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->logFinish(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Class;J)V

    :cond_0
    return-object v0

    .line 122
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->debug:Z

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;->start:J

    invoke-static {v1, v2, v4, v5}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->logFinish(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Class;J)V

    :cond_1
    throw v0
.end method

.method protected abstract reduce0(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public result(Lorg/apache/ignite/compute/ComputeJobResult;Ljava/util/List;)Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    .locals 1
    .param p1, "res"    # Lorg/apache/ignite/compute/ComputeJobResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Lorg/apache/ignite/compute/ComputeJobResultPolicy;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;, "Lorg/apache/ignite/internal/visor/VisorMultiNodeTask<TA;TR;TJ;>;"
    .local p2, "rcvd":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    sget-object v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->WAIT:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    return-object v0
.end method
