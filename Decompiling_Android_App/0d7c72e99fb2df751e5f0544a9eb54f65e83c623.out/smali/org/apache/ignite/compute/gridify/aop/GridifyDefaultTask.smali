.class public Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;
.super Lorg/apache/ignite/compute/ComputeTaskAdapter;
.source "GridifyDefaultTask.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/compute/ComputeTaskAdapter",
        "<",
        "Lorg/apache/ignite/compute/gridify/GridifyArgument;",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;"
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

.field private final transient clsLdr:Ljava/lang/ClassLoader;

.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private final transient p2pCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeTaskAdapter;-><init>()V

    .line 65
    sget-boolean v0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;->p2pCls:Ljava/lang/Class;

    .line 69
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;->clsLdr:Ljava/lang/ClassLoader;

    .line 70
    return-void
.end method


# virtual methods
.method public classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;->clsLdr:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public deployClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;->p2pCls:Ljava/lang/Class;

    return-object v0
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
    .line 38
    check-cast p2, Lorg/apache/ignite/compute/gridify/GridifyArgument;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;->map(Ljava/util/List;Lorg/apache/ignite/compute/gridify/GridifyArgument;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/util/List;Lorg/apache/ignite/compute/gridify/GridifyArgument;)Ljava/util/Map;
    .locals 5
    .param p2, "arg"    # Lorg/apache/ignite/compute/gridify/GridifyArgument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/compute/gridify/GridifyArgument;",
            ")",
            "Ljava/util/Map",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v2, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subgrid should not be empty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 86
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;->ignite:Lorg/apache/ignite/Ignite;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Grid instance could not be injected"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 87
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;->balancer:Lorg/apache/ignite/compute/ComputeLoadBalancer;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Load balancer could not be injected"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 89
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/util/gridify/GridifyJobAdapter;

    invoke-direct {v0, p2}, Lorg/apache/ignite/internal/util/gridify/GridifyJobAdapter;-><init>(Lorg/apache/ignite/compute/gridify/GridifyArgument;)V

    .line 91
    .local v0, "job":Lorg/apache/ignite/compute/ComputeJob;
    iget-object v2, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;->balancer:Lorg/apache/ignite/compute/ComputeLoadBalancer;

    iget-object v3, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v3}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteCluster;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/apache/ignite/compute/ComputeLoadBalancer;->getBalancedNode(Lorg/apache/ignite/compute/ComputeJob;Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 93
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v1, :cond_3

    .line 95
    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 98
    :goto_0
    return-object v2

    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;->balancer:Lorg/apache/ignite/compute/ComputeLoadBalancer;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lorg/apache/ignite/compute/ComputeLoadBalancer;->getBalancedNode(Lorg/apache/ignite/compute/ComputeJob;Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0
.end method

.method public final reduce(Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    sget-boolean v1, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 105
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/compute/ComputeJobResult;

    .line 107
    .local v0, "res":Lorg/apache/ignite/compute/ComputeJobResult;
    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1

    .line 110
    :cond_1
    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
