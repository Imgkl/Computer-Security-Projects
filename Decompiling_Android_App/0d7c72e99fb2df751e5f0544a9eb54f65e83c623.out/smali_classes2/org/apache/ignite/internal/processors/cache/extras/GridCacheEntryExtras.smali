.class public interface abstract Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
.super Ljava/lang/Object;
.source "GridCacheEntryExtras.java"


# virtual methods
.method public abstract attributesData(Lorg/apache/ignite/internal/util/GridLeanMap;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/GridLeanMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;"
        }
    .end annotation
.end method

.method public abstract attributesData()Lorg/apache/ignite/internal/util/GridLeanMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/GridLeanMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract expireTime()J
.end method

.method public abstract mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract mvcc(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
.end method

.method public abstract obsoleteVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
.end method

.method public abstract obsoleteVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract size()I
.end method

.method public abstract ttl()J
.end method

.method public abstract ttlAndExpireTime(JJ)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
.end method
