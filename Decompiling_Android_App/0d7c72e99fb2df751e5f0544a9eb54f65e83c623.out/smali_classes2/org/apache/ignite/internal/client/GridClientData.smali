.class public interface abstract Lorg/apache/ignite/internal/client/GridClientData;
.super Ljava/lang/Object;
.source "GridClientData.java"


# virtual methods
.method public abstract affinity(Ljava/lang/Object;)Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;)",
            "Ljava/util/UUID;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract append(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract appendAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract cacheName()Ljava/lang/String;
.end method

.method public abstract cachedMetrics()Lorg/apache/ignite/internal/client/GridClientDataMetrics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract cas(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract casAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract flags()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientCacheFlag;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract flagsOff([Lorg/apache/ignite/internal/client/GridClientCacheFlag;)Lorg/apache/ignite/internal/client/GridClientData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public varargs abstract flagsOn([Lorg/apache/ignite/internal/client/GridClientCacheFlag;)Lorg/apache/ignite/internal/client/GridClientData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract getAll(Ljava/util/Collection;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract getAllAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TK;>;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract getAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<TV;>;"
        }
    .end annotation
.end method

.method public abstract metrics()Lorg/apache/ignite/internal/client/GridClientDataMetrics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract metricsAsync()Lorg/apache/ignite/internal/client/GridClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientDataMetrics;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract pinNodes(Lorg/apache/ignite/internal/client/GridClientNode;[Lorg/apache/ignite/internal/client/GridClientNode;)Lorg/apache/ignite/internal/client/GridClientData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract pinnedNodes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prepend(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract prependAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract putAll(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract putAllAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract putAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract removeAll(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TK;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract removeAllAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TK;>;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract removeAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract replace(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract replaceAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
