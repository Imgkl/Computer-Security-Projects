.class public final Ljavax/cache/Caching;
.super Ljava/lang/Object;
.source "Caching.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/cache/Caching$CachingProviderRegistry;
    }
.end annotation


# static fields
.field private static final CACHING_PROVIDERS:Ljavax/cache/Caching$CachingProviderRegistry;

.field public static final JAVAX_CACHE_CACHING_PROVIDER:Ljava/lang/String; = "javax.cache.spi.CachingProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Ljavax/cache/Caching$CachingProviderRegistry;

    invoke-direct {v0}, Ljavax/cache/Caching$CachingProviderRegistry;-><init>()V

    sput-object v0, Ljavax/cache/Caching;->CACHING_PROVIDERS:Ljavax/cache/Caching$CachingProviderRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static getCache(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljavax/cache/Cache;
    .locals 1
    .param p0, "cacheName"    # Ljava/lang/String;
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

    .prologue
    .line 279
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-static {}, Ljavax/cache/Caching;->getCachingProvider()Ljavax/cache/spi/CachingProvider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/cache/spi/CachingProvider;->getCacheManager()Ljavax/cache/CacheManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Ljavax/cache/CacheManager;->getCache(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljavax/cache/Cache;

    move-result-object v0

    return-object v0
.end method

.method public static getCachingProvider()Ljavax/cache/spi/CachingProvider;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Ljavax/cache/Caching;->CACHING_PROVIDERS:Ljavax/cache/Caching$CachingProviderRegistry;

    invoke-virtual {v0}, Ljavax/cache/Caching$CachingProviderRegistry;->getCachingProvider()Ljavax/cache/spi/CachingProvider;

    move-result-object v0

    return-object v0
.end method

.method public static getCachingProvider(Ljava/lang/ClassLoader;)Ljavax/cache/spi/CachingProvider;
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 160
    sget-object v0, Ljavax/cache/Caching;->CACHING_PROVIDERS:Ljavax/cache/Caching$CachingProviderRegistry;

    invoke-virtual {v0, p0}, Ljavax/cache/Caching$CachingProviderRegistry;->getCachingProvider(Ljava/lang/ClassLoader;)Ljavax/cache/spi/CachingProvider;

    move-result-object v0

    return-object v0
.end method

.method public static getCachingProvider(Ljava/lang/String;)Ljavax/cache/spi/CachingProvider;
    .locals 1
    .param p0, "fullyQualifiedClassName"    # Ljava/lang/String;

    .prologue
    .line 217
    sget-object v0, Ljavax/cache/Caching;->CACHING_PROVIDERS:Ljavax/cache/Caching$CachingProviderRegistry;

    invoke-virtual {v0, p0}, Ljavax/cache/Caching$CachingProviderRegistry;->getCachingProvider(Ljava/lang/String;)Ljavax/cache/spi/CachingProvider;

    move-result-object v0

    return-object v0
.end method

.method public static getCachingProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/cache/spi/CachingProvider;
    .locals 1
    .param p0, "fullyQualifiedClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 238
    sget-object v0, Ljavax/cache/Caching;->CACHING_PROVIDERS:Ljavax/cache/Caching$CachingProviderRegistry;

    invoke-virtual {v0, p0, p1}, Ljavax/cache/Caching$CachingProviderRegistry;->getCachingProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/cache/spi/CachingProvider;

    move-result-object v0

    return-object v0
.end method

.method public static getCachingProviders()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/cache/spi/CachingProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    sget-object v0, Ljavax/cache/Caching;->CACHING_PROVIDERS:Ljavax/cache/Caching$CachingProviderRegistry;

    invoke-virtual {v0}, Ljavax/cache/Caching$CachingProviderRegistry;->getCachingProviders()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static getCachingProviders(Ljava/lang/ClassLoader;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/cache/spi/CachingProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    sget-object v0, Ljavax/cache/Caching;->CACHING_PROVIDERS:Ljavax/cache/Caching$CachingProviderRegistry;

    invoke-virtual {v0, p0}, Ljavax/cache/Caching$CachingProviderRegistry;->getCachingProviders(Ljava/lang/ClassLoader;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Ljavax/cache/Caching;->CACHING_PROVIDERS:Ljavax/cache/Caching$CachingProviderRegistry;

    invoke-virtual {v0}, Ljavax/cache/Caching$CachingProviderRegistry;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 127
    sget-object v0, Ljavax/cache/Caching;->CACHING_PROVIDERS:Ljavax/cache/Caching$CachingProviderRegistry;

    invoke-virtual {v0, p0}, Ljavax/cache/Caching$CachingProviderRegistry;->setDefaultClassLoader(Ljava/lang/ClassLoader;)V

    .line 128
    return-void
.end method
