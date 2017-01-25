.class public interface abstract Ljavax/cache/annotation/CacheResolverFactory;
.super Ljava/lang/Object;
.source "CacheResolverFactory.java"


# virtual methods
.method public abstract getCacheResolver(Ljavax/cache/annotation/CacheMethodDetails;)Ljavax/cache/annotation/CacheResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/annotation/CacheMethodDetails",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/cache/annotation/CacheResolver;"
        }
    .end annotation
.end method

.method public abstract getExceptionCacheResolver(Ljavax/cache/annotation/CacheMethodDetails;)Ljavax/cache/annotation/CacheResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/annotation/CacheMethodDetails",
            "<",
            "Ljavax/cache/annotation/CacheResult;",
            ">;)",
            "Ljavax/cache/annotation/CacheResolver;"
        }
    .end annotation
.end method
