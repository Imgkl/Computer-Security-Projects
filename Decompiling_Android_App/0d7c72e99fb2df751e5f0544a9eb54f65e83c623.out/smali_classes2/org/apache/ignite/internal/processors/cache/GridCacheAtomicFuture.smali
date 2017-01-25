.class public interface abstract Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture;
.super Ljava/lang/Object;
.source "GridCacheAtomicFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture",
        "<TR;>;"
    }
.end annotation


# virtual methods
.method public abstract checkTimeout(J)V
.end method

.method public abstract keys()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
.end method

.method public abstract waitForPartitionExchange()Z
.end method
