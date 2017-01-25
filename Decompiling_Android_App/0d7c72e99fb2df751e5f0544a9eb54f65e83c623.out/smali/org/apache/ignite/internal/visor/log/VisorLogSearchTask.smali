.class public Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask;
.super Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;
.source "VisorLogSearchTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$1;,
        Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob;,
        Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorMultiNodeTask",
        "<",
        "Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/Exception;",
        "Ljava/util/UUID;",
        ">;>;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;",
        ">;>;",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;",
        ">;>;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field public static final HALF:I = 0xa

.field public static final LINE_CNT:I = 0x15

.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;-><init>()V

    .line 122
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p1, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask;->job(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;)Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;)Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob;
    .locals 3
    .param p1, "arg"    # Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;

    .prologue
    .line 56
    new-instance v0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchJob;-><init>(Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask$VisorLogSearchArg;ZLorg/apache/ignite/internal/visor/log/VisorLogSearchTask$1;)V

    return-object v0
.end method

.method protected bridge synthetic reduce0(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/log/VisorLogSearchTask;->reduce0(Ljava/util/List;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method protected reduce0(Ljava/util/List;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Exception;",
            "Ljava/util/UUID;",
            ">;>;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    const/4 v5, 0x0

    .line 62
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v4, "searchRes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "exRes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Exception;Ljava/util/UUID;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/compute/ComputeJobResult;

    .line 67
    .local v3, "result":Lorg/apache/ignite/compute/ComputeJobResult;
    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 68
    new-instance v6, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeJobResult;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_1
    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 70
    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 72
    .local v0, "data":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;>;"
    invoke-interface {v4, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 76
    .end local v0    # "data":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/log/VisorLogSearchResult;>;"
    .end local v3    # "result":Lorg/apache/ignite/compute/ComputeJobResult;
    :cond_2
    new-instance v6, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v1, v5

    .end local v1    # "exRes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Exception;Ljava/util/UUID;>;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    invoke-direct {v6, v1, v5}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    :cond_4
    move-object v5, v4

    goto :goto_1
.end method
