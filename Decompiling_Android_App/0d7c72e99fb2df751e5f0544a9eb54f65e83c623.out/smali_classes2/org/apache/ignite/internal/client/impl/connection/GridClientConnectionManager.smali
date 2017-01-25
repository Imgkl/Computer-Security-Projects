.class public interface abstract Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManager;
.super Ljava/lang/Object;
.source "GridClientConnectionManager.java"


# virtual methods
.method public abstract connection(Lorg/apache/ignite/internal/client/GridClientNode;)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridServerUnreachableException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract init(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract stop(Z)V
.end method

.method public abstract terminateConnection(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;Lorg/apache/ignite/internal/client/GridClientNode;Ljava/lang/Throwable;)V
    .param p2    # Lorg/apache/ignite/internal/client/GridClientNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
