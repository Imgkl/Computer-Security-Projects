.class public interface abstract Lorg/apache/ignite/internal/client/GridClientCompute;
.super Ljava/lang/Object;
.source "GridClientCompute.java"


# virtual methods
.method public abstract affinityExecute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract affinityExecuteAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<TR;>;"
        }
    .end annotation
.end method

.method public abstract balancer()Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;
.end method

.method public abstract daemonNodes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract execute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract executeAsync(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<TR;>;"
        }
    .end annotation
.end method

.method public abstract node(Ljava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract nodes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract nodes(Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract nodes(Lorg/apache/ignite/internal/client/GridClientPredicate;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract projection(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientCompute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;)",
            "Lorg/apache/ignite/internal/client/GridClientCompute;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract projection(Ljava/util/Collection;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)Lorg/apache/ignite/internal/client/GridClientCompute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;",
            "Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;",
            ")",
            "Lorg/apache/ignite/internal/client/GridClientCompute;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract projection(Lorg/apache/ignite/internal/client/GridClientNode;)Lorg/apache/ignite/internal/client/GridClientCompute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract projection(Lorg/apache/ignite/internal/client/GridClientPredicate;)Lorg/apache/ignite/internal/client/GridClientCompute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<-",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;)",
            "Lorg/apache/ignite/internal/client/GridClientCompute;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract projection(Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)Lorg/apache/ignite/internal/client/GridClientCompute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<-",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;",
            "Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;",
            ")",
            "Lorg/apache/ignite/internal/client/GridClientCompute;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract refreshNode(Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/client/GridClientNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract refreshNode(Ljava/util/UUID;ZZ)Lorg/apache/ignite/internal/client/GridClientNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract refreshNodeAsync(Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/client/GridClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refreshNodeAsync(Ljava/util/UUID;ZZ)Lorg/apache/ignite/internal/client/GridClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "ZZ)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refreshTopology(ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract refreshTopologyAsync(ZZ)Lorg/apache/ignite/internal/client/GridClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract withKeepPortables()Lorg/apache/ignite/internal/client/GridClientCompute;
.end method
