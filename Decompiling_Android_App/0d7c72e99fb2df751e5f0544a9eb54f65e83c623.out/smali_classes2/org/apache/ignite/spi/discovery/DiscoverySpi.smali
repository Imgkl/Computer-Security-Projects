.class public interface abstract Lorg/apache/ignite/spi/discovery/DiscoverySpi;
.super Ljava/lang/Object;
.source "DiscoverySpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpi;


# virtual methods
.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation
.end method

.method public abstract getGridStartTime()J
.end method

.method public abstract getLocalNode()Lorg/apache/ignite/cluster/ClusterNode;
.end method

.method public abstract getNode(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getRemoteNodes()Ljava/util/Collection;
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

.method public abstract pingNode(Ljava/util/UUID;)Z
.end method

.method public abstract sendCustomEvent(Ljava/io/Serializable;)V
.end method

.method public abstract setAuthenticator(Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;)V
.end method

.method public abstract setDataExchange(Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;)V
.end method

.method public abstract setListener(Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;)V
    .param p1    # Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setMetricsProvider(Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;)V
.end method

.method public abstract setNodeAttributes(Ljava/util/Map;Lorg/apache/ignite/lang/IgniteProductVersion;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteProductVersion;",
            ")V"
        }
    .end annotation
.end method
