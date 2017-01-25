.class public interface abstract Lorg/apache/ignite/spi/collision/CollisionSpi;
.super Ljava/lang/Object;
.source "CollisionSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpi;


# virtual methods
.method public abstract onCollision(Lorg/apache/ignite/spi/collision/CollisionContext;)V
.end method

.method public abstract setExternalCollisionListener(Lorg/apache/ignite/spi/collision/CollisionExternalListener;)V
    .param p1    # Lorg/apache/ignite/spi/collision/CollisionExternalListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
