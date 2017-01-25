.class public interface abstract Lorg/apache/ignite/internal/client/GridClientNode;
.super Ljava/lang/Object;
.source "GridClientNode.java"


# virtual methods
.method public abstract attribute(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract attributes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract availableAddresses(Lorg/apache/ignite/internal/client/GridClientProtocol;Z)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/GridClientProtocol;",
            "Z)",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract caches()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/client/GridClientCacheMode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract connectable()Z
.end method

.method public abstract consistentId()Ljava/lang/Object;
.end method

.method public abstract metrics()Lorg/apache/ignite/internal/client/GridClientNodeMetrics;
.end method

.method public abstract nodeId()Ljava/util/UUID;
.end method

.method public abstract tcpAddresses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract tcpHostNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract tcpPort()I
.end method
