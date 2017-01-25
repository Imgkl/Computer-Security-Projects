.class public Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;
.super Ljava/lang/Object;
.source "GridFailoverContextImpl.java"

# interfaces
.implements Lorg/apache/ignite/spi/failover/FailoverContext;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final jobRes:Lorg/apache/ignite/compute/ComputeJobResult;

.field private final loadMgr:Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final taskSes:Lorg/apache/ignite/internal/GridTaskSessionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridTaskSessionImpl;Lorg/apache/ignite/compute/ComputeJobResult;Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;)V
    .locals 1
    .param p1, "taskSes"    # Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .param p2, "jobRes"    # Lorg/apache/ignite/compute/ComputeJobResult;
    .param p3, "loadMgr"    # Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-boolean v0, Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;->taskSes:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    .line 58
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;->jobRes:Lorg/apache/ignite/compute/ComputeJobResult;

    .line 59
    iput-object p3, p0, Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;->loadMgr:Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;

    .line 60
    return-void
.end method


# virtual methods
.method public getBalancedNode(Ljava/util/List;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "top":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;->loadMgr:Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;->taskSes:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;->jobRes:Lorg/apache/ignite/compute/ComputeJobResult;

    invoke-interface {v2}, Lorg/apache/ignite/compute/ComputeJobResult;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->getBalancedNode(Lorg/apache/ignite/internal/GridTaskSessionImpl;Ljava/util/List;Lorg/apache/ignite/compute/ComputeJob;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;->jobRes:Lorg/apache/ignite/compute/ComputeJobResult;

    return-object v0
.end method

.method public getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;->taskSes:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-class v0, Lorg/apache/ignite/internal/managers/failover/GridFailoverContextImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
