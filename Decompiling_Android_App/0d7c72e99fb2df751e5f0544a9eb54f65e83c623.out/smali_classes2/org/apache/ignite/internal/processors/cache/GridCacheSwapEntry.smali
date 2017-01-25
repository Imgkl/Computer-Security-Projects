.class public interface abstract Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
.super Ljava/lang/Object;
.source "GridCacheSwapEntry.java"


# virtual methods
.method public abstract expireTime()J
.end method

.method public abstract keyClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract offheapPointer()J
.end method

.method public abstract ttl()J
.end method

.method public abstract type()B
.end method

.method public abstract value()Lorg/apache/ignite/internal/processors/cache/CacheObject;
.end method

.method public abstract value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
.end method

.method public abstract valueBytes([B)V
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract valueBytes()[B
.end method

.method public abstract valueClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
.end method
