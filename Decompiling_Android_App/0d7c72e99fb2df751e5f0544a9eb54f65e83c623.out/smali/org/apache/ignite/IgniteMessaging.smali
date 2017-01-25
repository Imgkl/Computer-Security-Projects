.class public interface abstract Lorg/apache/ignite/IgniteMessaging;
.super Ljava/lang/Object;
.source "IgniteMessaging.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteAsyncSupport;


# virtual methods
.method public abstract clusterGroup()Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public abstract localListen(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract remoteListen(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)Ljava/util/UUID;
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "*>;)",
            "Ljava/util/UUID;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract send(Ljava/lang/Object;Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract send(Ljava/lang/Object;Ljava/util/Collection;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract sendOrdered(Ljava/lang/Object;Ljava/lang/Object;J)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract stopLocalListen(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract stopRemoteListen(Ljava/util/UUID;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract withAsync()Lorg/apache/ignite/IgniteMessaging;
.end method
