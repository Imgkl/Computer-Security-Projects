.class public interface abstract Lorg/apache/ignite/cluster/ClusterGroup;
.super Ljava/lang/Object;
.source "ClusterGroup.java"


# virtual methods
.method public abstract forAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract forCacheNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public abstract forClientNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public abstract forClients()Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public abstract forDaemons()Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public abstract forDataNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public abstract forHost(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public varargs abstract forNode(Lorg/apache/ignite/cluster/ClusterNode;[Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public varargs abstract forNodeId(Ljava/util/UUID;[Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public abstract forNodeIds(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterGroup;"
        }
    .end annotation
.end method

.method public abstract forNodes(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterGroup;"
        }
    .end annotation
.end method

.method public abstract forOldest()Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public abstract forOthers(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public varargs abstract forOthers(Lorg/apache/ignite/cluster/ClusterNode;[Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public abstract forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterGroup;"
        }
    .end annotation
.end method

.method public abstract forRandom()Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public abstract forRemotes()Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public abstract forServers()Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public abstract forYoungest()Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public abstract ignite()Lorg/apache/ignite/Ignite;
.end method

.method public abstract metrics()Lorg/apache/ignite/cluster/ClusterMetrics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract node()Lorg/apache/ignite/cluster/ClusterNode;
.end method

.method public abstract node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
.end method

.method public abstract nodes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract predicate()Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end method
