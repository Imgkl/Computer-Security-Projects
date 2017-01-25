.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;
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
    name = "T3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R1:",
        "Ljava/lang/Object;",
        "R2:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter",
        "<",
        "Ljava/lang/Void;",
        "TR2;>;",
        "Lorg/apache/ignite/internal/processors/resource/GridNoImplicitInjection;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private lb:Lorg/apache/ignite/compute/ComputeLoadBalancer;
    .annotation runtime Lorg/apache/ignite/resources/LoadBalancerResource;
    .end annotation
.end field

.field private t:Lorg/apache/ignite/internal/util/lang/GridTuple3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TR1;>;>;",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TR1;TR2;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteReducer;)V
    .locals 1
    .param p2, "mode"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TR1;>;>;",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TR1;TR2;>;)V"
        }
    .end annotation

    .prologue
    .line 1181
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3<TR1;TR2;>;"
    .local p3, "jobs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TR1;>;>;"
    .local p4, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<TR1;TR2;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;->this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    .line 1182
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->peerDeployAware0(Ljava/lang/Iterable;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;-><init>(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)V

    .line 1184
    invoke-static {p2, p3, p4}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple3;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;->t:Lorg/apache/ignite/internal/util/lang/GridTuple3;

    .line 1189
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteReducer;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p3, "x2"    # Ljava/util/Collection;
    .param p4, "x3"    # Lorg/apache/ignite/lang/IgniteReducer;
    .param p5, "x4"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;

    .prologue
    .line 1161
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3<TR1;TR2;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteReducer;)V

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
    .line 1161
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3<TR1;TR2;>;"
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;->map(Ljava/util/List;Ljava/lang/Void;)Ljava/util/Map;

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
    .line 1193
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3<TR1;TR2;>;"
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;->this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;->t:Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridClosureCallMode;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;->t:Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;->lb:Lorg/apache/ignite/compute/ComputeLoadBalancer;

    invoke-static {v2, v0, v1, p1, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->access$2000(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/compute/ComputeLoadBalancer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public reduce(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)TR2;"
        }
    .end annotation

    .prologue
    .line 1208
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3<TR1;TR2;>;"
    .local p1, "res":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;->t:Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteReducer;

    invoke-interface {v0}, Lorg/apache/ignite/lang/IgniteReducer;->reduce()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public result(Lorg/apache/ignite/compute/ComputeJobResult;Ljava/util/List;)Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    .locals 3
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
    .line 1198
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3<TR1;TR2;>;"
    .local p2, "rcvd":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;->result(Lorg/apache/ignite/compute/ComputeJobResult;Ljava/util/List;)Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    move-result-object v0

    .line 1200
    .local v0, "resPlc":Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    invoke-interface {p1}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->FAILOVER:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T3;->t:Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteReducer;

    invoke-interface {p1}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/lang/IgniteReducer;->collect(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1201
    sget-object v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->REDUCE:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    .line 1203
    :cond_0
    return-object v0
.end method
