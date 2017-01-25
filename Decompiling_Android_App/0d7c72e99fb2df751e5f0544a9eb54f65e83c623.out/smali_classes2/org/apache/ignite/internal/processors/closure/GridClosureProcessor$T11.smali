.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;
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
    name = "T11"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter",
        "<TT;",
        "Ljava/util/Collection",
        "<TR;>;>;",
        "Lorg/apache/ignite/internal/processors/resource/GridNoImplicitInjection;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final job:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/lang/IgniteClosure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 1542
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11<TT;TR;>;"
    .local p2, "job":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;->this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    .line 1543
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->peerDeployAware(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;-><init>(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)V

    .line 1545
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;->job:Lorg/apache/ignite/lang/IgniteClosure;

    .line 1546
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/lang/IgniteClosure;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/lang/IgniteClosure;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;

    .prologue
    .line 1531
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11<TT;TR;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;Lorg/apache/ignite/lang/IgniteClosure;)V

    return-void
.end method


# virtual methods
.method public map(Ljava/util/List;Ljava/lang/Object;)Ljava/util/Map;
    .locals 7
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    .line 1550
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11<TT;TR;>;"
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1551
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 1559
    :goto_0
    return-object v4

    .line 1554
    :cond_0
    :try_start_0
    new-instance v2, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;->this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v6}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;ILorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    .line 1556
    .local v2, "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1557
    .local v3, "n":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;->job:Lorg/apache/ignite/lang/IgniteClosure;

    # invokes: Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->job(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Lorg/apache/ignite/compute/ComputeJob;
    invoke-static {v4, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->access$2300(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->map(Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1561
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    .end local v3    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :catch_0
    move-exception v0

    .line 1562
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v4, Lorg/apache/ignite/IgniteException;

    invoke-direct {v4, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1559
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "mapper":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->map()Ljava/util/Map;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0
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
    .line 1531
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11<TT;TR;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;->reduce(Ljava/util/List;)Ljava/util/Collection;

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
    .line 1568
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T11<TT;TR;>;"
    .local p1, "res":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->jobResults(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
