.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;
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
    name = "T6"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
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
.field private final jobs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field private lb:Lorg/apache/ignite/compute/ComputeLoadBalancer;
    .annotation runtime Lorg/apache/ignite/resources/LoadBalancerResource;
    .end annotation
.end field

.field private final mode:Lorg/apache/ignite/internal/GridClosureCallMode;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;)V
    .locals 1
    .param p2, "mode"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1309
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6<TR;>;"
    .local p3, "jobs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TR;>;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;->this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    .line 1310
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->peerDeployAware0(Ljava/lang/Iterable;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;-><init>(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)V

    .line 1312
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;->mode:Lorg/apache/ignite/internal/GridClosureCallMode;

    .line 1313
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;->jobs:Ljava/util/Collection;

    .line 1314
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p3, "x2"    # Ljava/util/Collection;
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;

    .prologue
    .line 1288
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6<TR;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;)V

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
    .line 1288
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6<TR;>;"
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;->map(Ljava/util/List;Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/util/List;Ljava/lang/Void;)Ljava/util/Map;
    .locals 4
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
    .line 1318
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6<TR;>;"
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;->this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;->mode:Lorg/apache/ignite/internal/GridClosureCallMode;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;->jobs:Ljava/util/Collection;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;->lb:Lorg/apache/ignite/compute/ComputeLoadBalancer;

    invoke-static {v0, v1, v2, p1, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->access$2000(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/compute/ComputeLoadBalancer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
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
    .line 1288
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6<TR;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;->reduce(Ljava/util/List;)Ljava/util/Collection;

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

    .prologue
    .line 1323
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T6<TR;>;"
    .local p1, "res":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->jobResults(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
