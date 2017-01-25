.class public interface abstract Lorg/apache/ignite/spi/IgniteSpiContext;
.super Ljava/lang/Object;
.source "IgniteSpiContext.java"


# virtual methods
.method public varargs abstract addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V
.end method

.method public abstract addMessageListener(Lorg/apache/ignite/internal/managers/communication/GridMessageListener;Ljava/lang/String;)V
.end method

.method public abstract authenticatedSubject(Ljava/util/UUID;)Lorg/apache/ignite/plugin/security/GridSecuritySubject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract authenticatedSubjects()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/plugin/security/GridSecuritySubject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract containsKey(Ljava/lang/String;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)Z"
        }
    .end annotation
.end method

.method public abstract deregisterPort(ILorg/apache/ignite/spi/IgnitePortProtocol;)V
.end method

.method public abstract deregisterPorts()V
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public varargs abstract isEventRecordable([I)Z
.end method

.method public abstract localNode()Lorg/apache/ignite/cluster/ClusterNode;
.end method

.method public abstract messageFactory()Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
.end method

.method public abstract messageFormatter()Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;
.end method

.method public abstract node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
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

.method public abstract partition(Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method public abstract pingNode(Ljava/util/UUID;)Z
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;TV;J)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract putIfAbsent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;TV;J)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract readFromSwap(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .param p3    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract readValueFromOffheapAndSwap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract recordEvent(Lorg/apache/ignite/events/Event;)V
.end method

.method public abstract registerPort(ILorg/apache/ignite/spi/IgnitePortProtocol;)V
.end method

.method public abstract remoteDaemonNodes()Ljava/util/Collection;
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

.method public abstract remoteNodes()Ljava/util/Collection;
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

.method public abstract remove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract removeFromSwap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .param p3    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;)Z
.end method

.method public abstract removeMessageListener(Lorg/apache/ignite/internal/managers/communication/GridMessageListener;Ljava/lang/String;)Z
.end method

.method public abstract send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/io/Serializable;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation
.end method

.method public abstract validateNode(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract writeToSwap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method
