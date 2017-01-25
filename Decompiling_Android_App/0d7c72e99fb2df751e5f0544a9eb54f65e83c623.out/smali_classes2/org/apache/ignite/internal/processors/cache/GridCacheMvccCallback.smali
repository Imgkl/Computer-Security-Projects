.class public interface abstract Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCallback;
.super Ljava/lang/Object;
.source "GridCacheMvccCallback.java"


# virtual methods
.method public abstract onFreed(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;)V
.end method

.method public abstract onLocked(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;)V
.end method

.method public abstract onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V
.end method
