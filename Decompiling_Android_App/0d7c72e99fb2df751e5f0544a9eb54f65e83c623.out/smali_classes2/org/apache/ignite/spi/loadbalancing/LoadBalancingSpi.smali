.class public interface abstract Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;
.super Ljava/lang/Object;
.source "LoadBalancingSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpi;


# virtual methods
.method public abstract getBalancedNode(Lorg/apache/ignite/compute/ComputeTaskSession;Ljava/util/List;Lorg/apache/ignite/compute/ComputeJob;)Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/compute/ComputeTaskSession;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/compute/ComputeJob;",
            ")",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method
