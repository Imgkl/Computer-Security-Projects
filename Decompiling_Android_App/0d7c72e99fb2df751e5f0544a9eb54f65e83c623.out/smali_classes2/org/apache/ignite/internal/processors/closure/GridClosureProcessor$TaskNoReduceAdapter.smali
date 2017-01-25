.class abstract Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$TaskNoReduceAdapter;
.super Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;
.source "GridClosureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TaskNoReduceAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter",
        "<TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)V
    .locals 0
    .param p1, "pda"    # Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1083
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$TaskNoReduceAdapter;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$TaskNoReduceAdapter<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;-><init>(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)V

    .line 1084
    return-void
.end method


# virtual methods
.method public bridge synthetic reduce(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 1075
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$TaskNoReduceAdapter;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$TaskNoReduceAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$TaskNoReduceAdapter;->reduce(Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public reduce(Ljava/util/List;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1088
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$TaskNoReduceAdapter;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$TaskNoReduceAdapter<TT;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    const/4 v0, 0x0

    return-object v0
.end method
