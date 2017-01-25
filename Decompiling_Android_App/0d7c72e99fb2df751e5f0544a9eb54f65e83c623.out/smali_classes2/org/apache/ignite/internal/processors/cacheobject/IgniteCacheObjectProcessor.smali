.class public interface abstract Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;
.super Ljava/lang/Object;
.source "IgniteCacheObjectProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/GridProcessor;


# virtual methods
.method public abstract contextForCache(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/apache/ignite/configuration/CacheConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract hasField(Ljava/lang/Object;Ljava/lang/String;)Z
.end method

.method public abstract immutable(Ljava/lang/Object;)Z
.end method

.method public abstract isPortableObject(Ljava/lang/Object;)Z
.end method

.method public abstract keepPortableInStore(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract marshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract onCacheProcessorStarted()V
.end method

.method public abstract prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p1    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract toCacheKeyObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
.end method

.method public abstract toCacheObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;B[B)Lorg/apache/ignite/internal/processors/cache/CacheObject;
.end method

.method public abstract toCacheObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract toCacheObject(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;JZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract typeId(Ljava/lang/Object;)I
.end method

.method public abstract typeId(Ljava/lang/String;)I
.end method

.method public abstract unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;[BLjava/lang/ClassLoader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract unwrapTemporary(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
