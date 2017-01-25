.class public interface abstract Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ProjectionFactory;
.super Ljava/lang/Object;
.source "GridClientAbstractProjection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "ProjectionFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(Ljava/util/Collection;Lorg/apache/ignite/internal/client/GridClientPredicate;Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;)Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection;
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/apache/ignite/internal/client/GridClientPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<-",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;",
            "Lorg/apache/ignite/internal/client/balancer/GridClientLoadBalancer;",
            ")TX;"
        }
    .end annotation
.end method
