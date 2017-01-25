.class public interface abstract Lorg/apache/ignite/spi/failover/FailoverContext;
.super Ljava/lang/Object;
.source "FailoverContext.java"


# virtual methods
.method public abstract getBalancedNode(Ljava/util/List;)Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
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
.end method

.method public abstract getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;
.end method

.method public abstract getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;
.end method
