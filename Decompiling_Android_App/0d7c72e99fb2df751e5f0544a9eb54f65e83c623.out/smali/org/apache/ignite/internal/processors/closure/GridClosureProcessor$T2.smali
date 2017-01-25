.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T2;
.super Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$TaskNoReduceAdapter;
.source "GridClosureProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/resource/GridNoImplicitInjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "T2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$TaskNoReduceAdapter",
        "<",
        "Ljava/lang/Void;",
        ">;",
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

.field private t:Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/internal/GridClosureCallMode;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "mode"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p3, "job"    # Ljava/lang/Runnable;

    .prologue
    .line 1145
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T2;->this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    .line 1146
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->peerDeployAware(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$TaskNoReduceAdapter;-><init>(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)V

    .line 1148
    invoke-static {p2, p3}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T2;->t:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1149
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/lang/Runnable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/GridClosureCallMode;
    .param p3, "x2"    # Ljava/lang/Runnable;
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;

    .prologue
    .line 1130
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T2;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/lang/Runnable;)V

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
    .line 1130
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T2;->map(Ljava/util/List;Ljava/lang/Void;)Ljava/util/Map;

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
    .line 1153
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T2;->this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T2;->t:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridClosureCallMode;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T2;->t:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v2}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T2;->lb:Lorg/apache/ignite/compute/ComputeLoadBalancer;

    invoke-static {v1, v0, v2, p1, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->access$1900(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/compute/ComputeLoadBalancer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
