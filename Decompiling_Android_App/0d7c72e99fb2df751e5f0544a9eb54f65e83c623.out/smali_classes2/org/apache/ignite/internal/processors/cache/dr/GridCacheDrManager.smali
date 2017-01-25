.class public interface abstract Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;
.super Ljava/lang/Object;
.source "GridCacheDrManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheManager;


# virtual methods
.method public abstract beforeExchange(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract conflictResolver()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionAbstractConflictResolver;
.end method

.method public abstract dataCenterId()B
.end method

.method public abstract enabled()Z
.end method

.method public abstract onReceiveCacheConflictResolved(ZZZ)V
.end method

.method public abstract onReceiveCacheEntriesReceived(I)V
.end method

.method public abstract partitionEvicted(I)V
.end method

.method public abstract receiveEnabled()Z
.end method

.method public abstract replicate(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/dr/GridDrType;)V
    .param p2    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract resetMetrics()V
.end method
