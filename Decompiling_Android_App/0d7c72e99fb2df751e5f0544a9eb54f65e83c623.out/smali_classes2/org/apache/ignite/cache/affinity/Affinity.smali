.class public interface abstract Lorg/apache/ignite/cache/affinity/Affinity;
.super Ljava/lang/Object;
.source "Affinity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract affinityKey(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract allPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I
.end method

.method public abstract backupPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I
.end method

.method public abstract isBackup(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "TK;)Z"
        }
    .end annotation
.end method

.method public abstract isPrimary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "TK;)Z"
        }
    .end annotation
.end method

.method public abstract isPrimaryOrBackup(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "TK;)Z"
        }
    .end annotation
.end method

.method public abstract mapKeyToNode(Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract mapKeyToPrimaryAndBackups(Ljava/lang/Object;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mapKeysToNodes(Ljava/util/Collection;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<TK;>;>;"
        }
    .end annotation
.end method

.method public abstract mapPartitionToNode(I)Lorg/apache/ignite/cluster/ClusterNode;
.end method

.method public abstract mapPartitionToPrimaryAndBackups(I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mapPartitionsToNodes(Ljava/util/Collection;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract partition(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation
.end method

.method public abstract partitions()I
.end method

.method public abstract primaryPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I
.end method
