.class public interface abstract Lorg/apache/ignite/cache/affinity/AffinityFunction;
.super Ljava/lang/Object;
.source "AffinityFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract assignPartitions(Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract partition(Ljava/lang/Object;)I
.end method

.method public abstract partitions()I
.end method

.method public abstract removeNode(Ljava/util/UUID;)V
.end method

.method public abstract reset()V
.end method
