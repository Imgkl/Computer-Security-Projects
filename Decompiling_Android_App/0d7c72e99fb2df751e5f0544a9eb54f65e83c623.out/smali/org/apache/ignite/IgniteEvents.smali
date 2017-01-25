.class public interface abstract Lorg/apache/ignite/IgniteEvents;
.super Ljava/lang/Object;
.source "IgniteEvents.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteAsyncSupport;


# virtual methods
.method public abstract clusterGroup()Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public varargs abstract disableLocal([I)V
.end method

.method public varargs abstract enableLocal([I)V
.end method

.method public abstract enabledEvents()[I
.end method

.method public abstract isEnabled(I)Z
.end method

.method public varargs abstract localListen(Lorg/apache/ignite/lang/IgnitePredicate;[I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<+",
            "Lorg/apache/ignite/events/Event;",
            ">;[I)V"
        }
    .end annotation
.end method

.method public varargs abstract localQuery(Lorg/apache/ignite/lang/IgnitePredicate;[I)Ljava/util/Collection;
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/events/Event;",
            ">(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;[I)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract recordLocal(Lorg/apache/ignite/events/Event;)V
.end method

.method public varargs abstract remoteListen(IJZLorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/lang/IgnitePredicate;[I)Ljava/util/UUID;
    .param p5    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/events/Event;",
            ">(IJZ",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "TT;>;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;[I)",
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

.method public varargs abstract remoteListen(Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/lang/IgnitePredicate;[I)Ljava/util/UUID;
    .param p1    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/events/Event;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "TT;>;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;[I)",
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

.method public varargs abstract remoteQuery(Lorg/apache/ignite/lang/IgnitePredicate;J[I)Ljava/util/List;
    .param p4    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/events/Event;",
            ">(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;J[I)",
            "Ljava/util/List",
            "<TT;>;"
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

.method public varargs abstract stopLocalListen(Lorg/apache/ignite/lang/IgnitePredicate;[I)Z
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<+",
            "Lorg/apache/ignite/events/Event;",
            ">;[I)Z"
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

.method public varargs abstract waitForLocal(Lorg/apache/ignite/lang/IgnitePredicate;[I)Lorg/apache/ignite/events/Event;
    .param p1    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/events/Event;",
            ">(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;[I)TT;"
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

.method public abstract withAsync()Lorg/apache/ignite/IgniteEvents;
.end method
