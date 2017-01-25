.class public Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcValidationTask;
.super Lorg/apache/ignite/compute/ComputeTaskSplitAdapter;
.source "GridCacheQueryJdbcValidationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/compute/ComputeTaskSplitAdapter",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeTaskSplitAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public reduce(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/compute/ComputeJobResult;

    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

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
    .line 34
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcValidationTask;->reduce(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic split(ILjava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 34
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcValidationTask;->split(ILjava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected split(ILjava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "gridSize"    # I
    .param p2, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcValidationTask$1;

    invoke-direct {v0, p0, p2}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcValidationTask$1;-><init>(Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcValidationTask;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->asSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
