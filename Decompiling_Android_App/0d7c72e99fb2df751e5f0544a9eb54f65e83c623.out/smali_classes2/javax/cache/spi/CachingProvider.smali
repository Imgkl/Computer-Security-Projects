.class public interface abstract Ljavax/cache/spi/CachingProvider;
.super Ljava/lang/Object;
.source "CachingProvider.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract close(Ljava/lang/ClassLoader;)V
.end method

.method public abstract close(Ljava/net/URI;Ljava/lang/ClassLoader;)V
.end method

.method public abstract getCacheManager()Ljavax/cache/CacheManager;
.end method

.method public abstract getCacheManager(Ljava/net/URI;Ljava/lang/ClassLoader;)Ljavax/cache/CacheManager;
.end method

.method public abstract getCacheManager(Ljava/net/URI;Ljava/lang/ClassLoader;Ljava/util/Properties;)Ljavax/cache/CacheManager;
.end method

.method public abstract getDefaultClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract getDefaultProperties()Ljava/util/Properties;
.end method

.method public abstract getDefaultURI()Ljava/net/URI;
.end method

.method public abstract isSupported(Ljavax/cache/configuration/OptionalFeature;)Z
.end method
