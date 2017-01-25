.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;
.super Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;
.source "GridClosureProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/resource/GridNoImplicitInjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "T8"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter",
        "<",
        "Ljava/lang/Void;",
        "TR;>;",
        "Lorg/apache/ignite/internal/processors/resource/GridNoImplicitInjection;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private arg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private job:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field private lb:Lorg/apache/ignite/compute/ComputeLoadBalancer;
    .annotation runtime Lorg/apache/ignite/resources/LoadBalancerResource;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 1388
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8<TT;TR;>;"
    .local p1, "job":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->peerDeployAware(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;-><init>(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)V

    .line 1390
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;->job:Lorg/apache/ignite/lang/IgniteClosure;

    .line 1391
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;->arg:Ljava/lang/Object;

    .line 1392
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/lang/IgniteClosure;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;

    .prologue
    .line 1369
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8<TT;TR;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;-><init>(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
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
    .line 1369
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8<TT;TR;>;"
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;->map(Ljava/util/List;Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/util/List;Ljava/lang/Void;)Ljava/util/Map;
    .locals 3
    .param p2, "arg"    # Ljava/lang/Void;
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
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1396
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8<TT;TR;>;"
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;->job:Lorg/apache/ignite/lang/IgniteClosure;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;->arg:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->access$2300(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v0

    .line 1398
    .local v0, "job":Lorg/apache/ignite/compute/ComputeJob;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;->lb:Lorg/apache/ignite/compute/ComputeLoadBalancer;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/apache/ignite/compute/ComputeLoadBalancer;->getBalancedNode(Lorg/apache/ignite/compute/ComputeJob;Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public reduce(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
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

    .prologue
    .line 1403
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T8<TT;TR;>;"
    .local p1, "res":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/compute/ComputeJobResult;

    .line 1404
    .local v1, "r":Lorg/apache/ignite/compute/ComputeJobResult;
    invoke-interface {v1}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1405
    invoke-interface {v1}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1407
    .end local v1    # "r":Lorg/apache/ignite/compute/ComputeJobResult;
    :cond_1
    new-instance v2, Lorg/apache/ignite/IgniteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find successful job result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
