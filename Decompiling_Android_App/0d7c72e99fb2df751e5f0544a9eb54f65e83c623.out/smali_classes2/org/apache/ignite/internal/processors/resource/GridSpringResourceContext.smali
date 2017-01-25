.class public interface abstract Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;
.super Ljava/lang/Object;
.source "GridSpringResourceContext.java"


# virtual methods
.method public abstract springBeanInjector()Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;
.end method

.method public abstract springContextInjector()Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;
.end method

.method public abstract unwrapTarget(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
