.class public abstract Lorg/apache/ignite/compute/ComputeTaskSplitAdapter;
.super Lorg/apache/ignite/compute/ComputeTaskAdapter;
.source "ComputeTaskSplitAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/compute/ComputeTaskAdapter",
        "<TT;TR;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private balancer:Lorg/apache/ignite/compute/ComputeLoadBalancer;
    .annotation runtime Lorg/apache/ignite/resources/LoadBalancerResource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lorg/apache/ignite/compute/ComputeTaskSplitAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/compute/ComputeTaskSplitAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/compute/ComputeTaskSplitAdapter;, "Lorg/apache/ignite/compute/ComputeTaskSplitAdapter<TT;TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeTaskAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final map(Ljava/util/List;Ljava/lang/Object;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;TT;)",
            "Ljava/util/Map",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lorg/apache/ignite/compute/ComputeTaskSplitAdapter;, "Lorg/apache/ignite/compute/ComputeTaskSplitAdapter<TT;TR;>;"
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    sget-boolean v5, Lorg/apache/ignite/compute/ComputeTaskSplitAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 103
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/compute/ComputeTaskSplitAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 105
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v5, p2}, Lorg/apache/ignite/compute/ComputeTaskSplitAdapter;->split(ILjava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 107
    .local v2, "jobs":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/compute/ComputeJob;>;"
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    new-instance v5, Lorg/apache/ignite/IgniteException;

    const-string v6, "Split returned no jobs."

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v3

    .line 112
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/compute/ComputeJob;

    .line 113
    .local v1, "job":Lorg/apache/ignite/compute/ComputeJob;
    iget-object v5, p0, Lorg/apache/ignite/compute/ComputeTaskSplitAdapter;->balancer:Lorg/apache/ignite/compute/ComputeLoadBalancer;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lorg/apache/ignite/compute/ComputeLoadBalancer;->getBalancedNode(Lorg/apache/ignite/compute/ComputeJob;Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cluster/ClusterNode;

    .line 115
    .local v4, "old":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v4, :cond_3

    .line 116
    new-instance v5, Lorg/apache/ignite/IgniteException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to map task (same job instance is being mapped more than once) [job="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    .end local v1    # "job":Lorg/apache/ignite/compute/ComputeJob;
    .end local v4    # "old":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_4
    return-object v3
.end method

.method protected abstract split(ILjava/lang/Object;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method
