.class public interface abstract Ljavax/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract createCache(Ljava/lang/String;Ljavax/cache/configuration/Configuration;)Ljavax/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "C::",
            "Ljavax/cache/configuration/Configuration",
            "<TK;TV;>;>(",
            "Ljava/lang/String;",
            "TC;)",
            "Ljavax/cache/Cache",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract destroyCache(Ljava/lang/String;)V
.end method

.method public abstract enableManagement(Ljava/lang/String;Z)V
.end method

.method public abstract enableStatistics(Ljava/lang/String;Z)V
.end method

.method public abstract getCache(Ljava/lang/String;)Ljavax/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljavax/cache/Cache",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getCache(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljavax/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljavax/cache/Cache",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getCacheNames()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCachingProvider()Ljavax/cache/spi/CachingProvider;
.end method

.method public abstract getClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract getProperties()Ljava/util/Properties;
.end method

.method public abstract getURI()Ljava/net/URI;
.end method

.method public abstract isClosed()Z
.end method

.method public abstract unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method
