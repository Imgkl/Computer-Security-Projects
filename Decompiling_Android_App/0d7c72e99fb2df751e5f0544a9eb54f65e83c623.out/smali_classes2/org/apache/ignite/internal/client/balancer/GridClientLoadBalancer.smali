.class public interface abstract Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;
.super Ljava/lang/Object;
.source "GridClientLoadBalancer.java"


# virtual methods
.method public abstract balancedNode(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;)",
            "Lorg/apache/ignite/internal/client/GridClientNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method
