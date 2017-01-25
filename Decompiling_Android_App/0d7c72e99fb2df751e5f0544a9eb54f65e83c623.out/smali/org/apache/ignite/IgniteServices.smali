.class public interface abstract Lorg/apache/ignite/IgniteServices;
.super Ljava/lang/Object;
.source "IgniteServices.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteAsyncSupport;


# virtual methods
.method public abstract cancel(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract cancelAll()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract clusterGroup()Lorg/apache/ignite/cluster/ClusterGroup;
.end method

.method public abstract deploy(Lorg/apache/ignite/services/ServiceConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract deployClusterSingleton(Ljava/lang/String;Lorg/apache/ignite/services/Service;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract deployKeyAffinitySingleton(Ljava/lang/String;Lorg/apache/ignite/services/Service;Ljava/lang/String;Ljava/lang/Object;)V
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract deployMultiple(Ljava/lang/String;Lorg/apache/ignite/services/Service;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract deployNodeSingleton(Ljava/lang/String;Lorg/apache/ignite/services/Service;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract service(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract serviceDescriptors()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/services/ServiceDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract serviceProxy(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<-TT;>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract services(Ljava/lang/String;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract withAsync()Lorg/apache/ignite/IgniteServices;
.end method
