.class public interface abstract Lorg/apache/ignite/internal/processors/hadoop/HadoopMapReducePlanner;
.super Ljava/lang/Object;
.source "HadoopMapReducePlanner.java"


# virtual methods
.method public abstract preparePlan(Lorg/apache/ignite/internal/processors/hadoop/HadoopJob;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/hadoop/HadoopMapReducePlan;)Lorg/apache/ignite/internal/processors/hadoop/HadoopMapReducePlan;
    .param p3    # Lorg/apache/ignite/internal/processors/hadoop/HadoopMapReducePlan;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/hadoop/HadoopJob;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/internal/processors/hadoop/HadoopMapReducePlan;",
            ")",
            "Lorg/apache/ignite/internal/processors/hadoop/HadoopMapReducePlan;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
