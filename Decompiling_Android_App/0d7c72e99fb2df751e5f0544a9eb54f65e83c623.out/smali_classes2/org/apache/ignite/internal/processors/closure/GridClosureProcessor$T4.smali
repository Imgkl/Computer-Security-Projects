.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T4;
.super Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$TaskNoReduceAdapter;
.source "GridClosureProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/resource/GridNoImplicitInjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "T4"
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
.field private job:Ljava/lang/Runnable;

.field private node:Lorg/apache/ignite/cluster/ClusterNode;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "job"    # Ljava/lang/Runnable;

    .prologue
    .line 1229
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->peerDeployAware0(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$TaskNoReduceAdapter;-><init>(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)V

    .line 1231
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T4;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 1232
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T4;->job:Ljava/lang/Runnable;

    .line 1233
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Runnable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x1"    # Ljava/lang/Runnable;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;

    .prologue
    .line 1214
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T4;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Runnable;)V

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
    .line 1214
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T4;->map(Ljava/util/List;Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/util/List;Ljava/lang/Void;)Ljava/util/Map;
    .locals 2
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
    .line 1237
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T4;->job:Ljava/lang/Runnable;

    # invokes: Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->job(Ljava/lang/Runnable;)Lorg/apache/ignite/compute/ComputeJob;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->access$2100(Ljava/lang/Runnable;)Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v0

    .line 1239
    .local v0, "job":Lorg/apache/ignite/compute/ComputeJob;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T4;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method
