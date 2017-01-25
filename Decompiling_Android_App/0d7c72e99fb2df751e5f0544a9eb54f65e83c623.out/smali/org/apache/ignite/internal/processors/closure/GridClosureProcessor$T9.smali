.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;
.super Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;
.source "GridClosureProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/resource/GridNoImplicitInjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "T9"
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
        "Ljava/util/Collection",
        "<TR;>;>;",
        "Lorg/apache/ignite/internal/processors/resource/GridNoImplicitInjection;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private args:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+TT;>;"
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

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/lang/IgniteClosure;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1432
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9<TT;TR;>;"
    .local p2, "job":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR;>;"
    .local p3, "args":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;->this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    .line 1433
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->peerDeployAware(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;-><init>(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)V

    .line 1435
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;->job:Lorg/apache/ignite/lang/IgniteClosure;

    .line 1436
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;->args:Ljava/util/Collection;

    .line 1437
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/lang/IgniteClosure;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/lang/IgniteClosure;
    .param p3, "x2"    # Ljava/util/Collection;
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;

    .prologue
    .line 1413
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9<TT;TR;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/lang/IgniteClosure;Ljava/util/Collection;)V

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
    .line 1413
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9<TT;TR;>;"
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;->map(Ljava/util/List;Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/util/List;Ljava/lang/Void;)Ljava/util/Map;
    .locals 8
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
    .line 1442
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9<TT;TR;>;"
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :try_start_0
    new-instance v4, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;->this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;->args:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;ILorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    .line 1444
    .local v4, "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;->args:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1445
    .local v3, "jobArg":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;->job:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-static {v5, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->access$2300(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v2

    .line 1447
    .local v2, "job":Lorg/apache/ignite/compute/ComputeJob;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;->lb:Lorg/apache/ignite/compute/ComputeLoadBalancer;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Lorg/apache/ignite/compute/ComputeLoadBalancer;->getBalancedNode(Lorg/apache/ignite/compute/ComputeJob;Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->map(Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1452
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "job":Lorg/apache/ignite/compute/ComputeJob;
    .end local v3    # "jobArg":Ljava/lang/Object;, "TT;"
    .end local v4    # "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    :catch_0
    move-exception v0

    .line 1453
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v5, Lorg/apache/ignite/IgniteException;

    invoke-direct {v5, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1450
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->map()Ljava/util/Map;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic reduce(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 1413
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9<TT;TR;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;->reduce(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public reduce(Ljava/util/List;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Ljava/util/Collection",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 1459
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T9<TT;TR;>;"
    .local p1, "res":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->jobResults(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
