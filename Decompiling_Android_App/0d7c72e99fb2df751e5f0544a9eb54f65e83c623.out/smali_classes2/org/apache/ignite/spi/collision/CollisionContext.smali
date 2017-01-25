.class public interface abstract Lorg/apache/ignite/spi/collision/CollisionContext;
.super Ljava/lang/Object;
.source "CollisionContext.java"


# virtual methods
.method public abstract activeJobs()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;"
        }
    .end annotation
.end method

.method public abstract heldJobs()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;"
        }
    .end annotation
.end method

.method public abstract waitingJobs()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;"
        }
    .end annotation
.end method
