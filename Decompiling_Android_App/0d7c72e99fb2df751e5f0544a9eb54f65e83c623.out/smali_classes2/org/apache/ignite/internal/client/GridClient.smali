.class public interface abstract Lorg/apache/ignite/internal/client/GridClient;
.super Ljava/lang/Object;
.source "GridClient.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract addTopologyListener(Lorg/apache/ignite/internal/client/GridClientTopologyListener;)V
.end method

.method public abstract close()V
.end method

.method public abstract compute()Lorg/apache/ignite/internal/client/GridClientCompute;
.end method

.method public abstract connected()Z
.end method

.method public abstract data()Lorg/apache/ignite/internal/client/GridClientData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract data(Ljava/lang/String;)Lorg/apache/ignite/internal/client/GridClientData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation
.end method

.method public abstract id()Ljava/util/UUID;
.end method

.method public abstract removeTopologyListener(Lorg/apache/ignite/internal/client/GridClientTopologyListener;)V
.end method

.method public abstract topologyListeners()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientTopologyListener;",
            ">;"
        }
    .end annotation
.end method
