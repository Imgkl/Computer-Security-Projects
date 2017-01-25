.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;
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
    name = "T5"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
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
.field private job:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TR;>;"
        }
    .end annotation
.end field

.field private node:Lorg/apache/ignite/cluster/ClusterNode;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/concurrent/Callable;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/concurrent/Callable",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 1260
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5<TR;>;"
    .local p2, "job":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->peerDeployAware0(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;-><init>(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)V

    .line 1262
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 1263
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;->job:Ljava/util/concurrent/Callable;

    .line 1264
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x1"    # Ljava/util/concurrent/Callable;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;

    .prologue
    .line 1245
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5<TR;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/concurrent/Callable;)V

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
    .line 1245
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5<TR;>;"
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;->map(Ljava/util/List;Ljava/lang/Void;)Ljava/util/Map;

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
    .line 1268
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5<TR;>;"
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;->job:Ljava/util/concurrent/Callable;

    # invokes: Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->job(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/compute/ComputeJob;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->access$2200(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v0

    .line 1270
    .local v0, "job":Lorg/apache/ignite/compute/ComputeJob;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;->node:Lorg/apache/ignite/cluster/ClusterNode;

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

    .prologue
    .line 1275
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$T5<TR;>;"
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

    .line 1276
    .local v1, "r":Lorg/apache/ignite/compute/ComputeJobResult;
    invoke-interface {v1}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1277
    invoke-interface {v1}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1280
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
