.class public interface abstract Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;
.super Ljava/lang/Object;
.source "DiscoverySpiListener.java"


# virtual methods
.method public abstract onDiscovery(IJLorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Ljava/util/Map;Ljava/io/Serializable;)V
    .param p6    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/io/Serializable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;",
            "Ljava/io/Serializable;",
            ")V"
        }
    .end annotation
.end method
