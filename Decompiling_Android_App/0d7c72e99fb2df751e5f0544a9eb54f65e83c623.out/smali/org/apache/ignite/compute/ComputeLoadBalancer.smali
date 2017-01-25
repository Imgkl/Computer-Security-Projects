.class public interface abstract Lorg/apache/ignite/compute/ComputeLoadBalancer;
.super Ljava/lang/Object;
.source "ComputeLoadBalancer.java"


# virtual methods
.method public abstract getBalancedNode(Lorg/apache/ignite/compute/ComputeJob;Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterNode;
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
