.class public interface abstract Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
.super Ljava/lang/Object;
.source "GridContinuousHandler.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
    }
.end annotation


# virtual methods
.method public abstract cacheName()Ljava/lang/String;
.end method

.method public abstract clone()Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
.end method

.method public abstract isForEvents()Z
.end method

.method public abstract isForMessaging()Z
.end method

.method public abstract isForQuery()Z
.end method

.method public abstract notifyCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/Collection;Lorg/apache/ignite/internal/GridKernalContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<*>;",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onListenerRegistered(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V
.end method

.method public abstract orderedTopic()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract p2pMarshal(Lorg/apache/ignite/internal/GridKernalContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract p2pUnmarshal(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract register(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract unregister(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V
.end method
