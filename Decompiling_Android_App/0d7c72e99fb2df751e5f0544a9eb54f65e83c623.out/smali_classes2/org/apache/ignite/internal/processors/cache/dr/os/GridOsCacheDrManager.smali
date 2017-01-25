.class public Lorg/apache/ignite/internal/processors/cache/dr/os/GridOsCacheDrManager;
.super Ljava/lang/Object;
.source "GridOsCacheDrManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeExchange(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)V
    .locals 0
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "left"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 85
    return-void
.end method

.method public conflictResolver()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionAbstractConflictResolver;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public dataCenterId()B
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public enabled()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onKernalStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 50
    return-void
.end method

.method public onKernalStop(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 55
    return-void
.end method

.method public onReceiveCacheConflictResolved(ZZZ)V
    .locals 0
    .param p1, "useNew"    # Z
    .param p2, "useOld"    # Z
    .param p3, "merge"    # Z

    .prologue
    .line 100
    return-void
.end method

.method public onReceiveCacheEntriesReceived(I)V
    .locals 0
    .param p1, "entriesCnt"    # I

    .prologue
    .line 95
    return-void
.end method

.method public partitionEvicted(I)V
    .locals 0
    .param p1, "part"    # I

    .prologue
    .line 90
    return-void
.end method

.method public printMemoryStats()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public receiveEnabled()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public replicate(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/dr/GridDrType;)V
    .locals 0
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "ttl"    # J
    .param p5, "expireTime"    # J
    .param p7, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p8, "drType"    # Lorg/apache/ignite/internal/processors/dr/GridDrType;

    .prologue
    .line 80
    return-void
.end method

.method public resetMetrics()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public start(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 40
    return-void
.end method

.method public stop(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 45
    return-void
.end method
