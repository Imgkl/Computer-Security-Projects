.class Ljavax/cache/Caching$CachingProviderRegistry;
.super Ljava/lang/Object;
.source "Caching.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/cache/Caching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachingProviderRegistry"
.end annotation


# instance fields
.field private cachingProviders:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/cache/spi/CachingProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile classLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Ljavax/cache/Caching$CachingProviderRegistry;->cachingProviders:Ljava/util/WeakHashMap;

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/cache/Caching$CachingProviderRegistry;->classLoader:Ljava/lang/ClassLoader;

    .line 309
    return-void
.end method


# virtual methods
.method public getCachingProvider()Ljavax/cache/spi/CachingProvider;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Ljavax/cache/Caching$CachingProviderRegistry;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/cache/Caching$CachingProviderRegistry;->getCachingProvider(Ljava/lang/ClassLoader;)Ljavax/cache/spi/CachingProvider;

    move-result-object v0

    return-object v0
.end method

.method public getCachingProvider(Ljava/lang/ClassLoader;)Ljavax/cache/spi/CachingProvider;
    .locals 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Ljavax/cache/Caching$CachingProviderRegistry;->getCachingProviders(Ljava/lang/ClassLoader;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 372
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/cache/spi/CachingProvider;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/cache/spi/CachingProvider;

    .line 375
    .local v1, "provider":Ljavax/cache/spi/CachingProvider;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    new-instance v2, Ljavax/cache/CacheException;

    const-string v3, "Multiple CachingProviders have been configured when only a single CachingProvider is expected"

    invoke-direct {v2, v3}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 381
    .end local v1    # "provider":Ljavax/cache/spi/CachingProvider;
    :cond_0
    new-instance v2, Ljavax/cache/CacheException;

    const-string v3, "No CachingProviders have been configured"

    invoke-direct {v2, v3}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 378
    .restart local v1    # "provider":Ljavax/cache/spi/CachingProvider;
    :cond_1
    return-object v1
.end method

.method public getCachingProvider(Ljava/lang/String;)Ljavax/cache/spi/CachingProvider;
    .locals 1
    .param p1, "fullyQualifiedClassName"    # Ljava/lang/String;

    .prologue
    .line 466
    invoke-virtual {p0}, Ljavax/cache/Caching$CachingProviderRegistry;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljavax/cache/Caching$CachingProviderRegistry;->getCachingProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/cache/spi/CachingProvider;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCachingProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/cache/spi/CachingProvider;
    .locals 4
    .param p1, "fullyQualifiedClassName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 512
    monitor-enter p0

    if-nez p2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljavax/cache/Caching$CachingProviderRegistry;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 514
    .local v2, "serviceClassLoader":Ljava/lang/ClassLoader;
    :goto_0
    iget-object v3, p0, Ljavax/cache/Caching$CachingProviderRegistry;->cachingProviders:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 516
    .local v1, "providers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljavax/cache/spi/CachingProvider;>;"
    if-nez v1, :cond_0

    .line 519
    invoke-virtual {p0, v2}, Ljavax/cache/Caching$CachingProviderRegistry;->getCachingProviders(Ljava/lang/ClassLoader;)Ljava/lang/Iterable;

    .line 520
    iget-object v3, p0, Ljavax/cache/Caching$CachingProviderRegistry;->cachingProviders:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "providers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljavax/cache/spi/CachingProvider;>;"
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 523
    .restart local v1    # "providers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljavax/cache/spi/CachingProvider;>;"
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/spi/CachingProvider;

    .line 525
    .local v0, "provider":Ljavax/cache/spi/CachingProvider;
    if-nez v0, :cond_1

    .line 526
    invoke-virtual {p0, p1, v2}, Ljavax/cache/Caching$CachingProviderRegistry;->loadCachingProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/cache/spi/CachingProvider;

    move-result-object v0

    .line 527
    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :cond_1
    monitor-exit p0

    return-object v0

    .end local v0    # "provider":Ljavax/cache/spi/CachingProvider;
    .end local v1    # "providers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljavax/cache/spi/CachingProvider;>;"
    .end local v2    # "serviceClassLoader":Ljava/lang/ClassLoader;
    :cond_2
    move-object v2, p2

    .line 512
    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getCachingProviders()Ljava/lang/Iterable;
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
    .line 400
    invoke-virtual {p0}, Ljavax/cache/Caching$CachingProviderRegistry;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/cache/Caching$CachingProviderRegistry;->getCachingProviders(Ljava/lang/ClassLoader;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCachingProviders(Ljava/lang/ClassLoader;)Ljava/lang/Iterable;
    .locals 5
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
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
    .line 421
    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljavax/cache/Caching$CachingProviderRegistry;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 422
    .local v2, "serviceClassLoader":Ljava/lang/ClassLoader;
    :goto_0
    iget-object v3, p0, Ljavax/cache/Caching$CachingProviderRegistry;->cachingProviders:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 424
    .local v1, "providers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljavax/cache/spi/CachingProvider;>;"
    if-nez v1, :cond_0

    .line 426
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    const-string v4, "javax.cache.spi.CachingProvider"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 427
    const-string v3, "javax.cache.spi.CachingProvider"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Ljava/util/LinkedHashMap;

    .end local v1    # "providers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljavax/cache/spi/CachingProvider;>;"
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 429
    .restart local v1    # "providers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljavax/cache/spi/CachingProvider;>;"
    invoke-virtual {p0, v0, v2}, Ljavax/cache/Caching$CachingProviderRegistry;->loadCachingProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/cache/spi/CachingProvider;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .end local v0    # "className":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Ljavax/cache/Caching$CachingProviderRegistry;->cachingProviders:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3

    .end local v1    # "providers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljavax/cache/spi/CachingProvider;>;"
    .end local v2    # "serviceClassLoader":Ljava/lang/ClassLoader;
    :cond_1
    move-object v2, p1

    .line 421
    goto :goto_0

    .line 432
    .restart local v1    # "providers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljavax/cache/spi/CachingProvider;>;"
    .restart local v2    # "serviceClassLoader":Ljava/lang/ClassLoader;
    :cond_2
    :try_start_1
    new-instance v3, Ljavax/cache/Caching$CachingProviderRegistry$1;

    invoke-direct {v3, p0, v2}, Ljavax/cache/Caching$CachingProviderRegistry$1;-><init>(Ljavax/cache/Caching$CachingProviderRegistry;Ljava/lang/ClassLoader;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "providers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljavax/cache/spi/CachingProvider;>;"
    check-cast v1, Ljava/util/LinkedHashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1    # "providers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljavax/cache/spi/CachingProvider;>;"
    goto :goto_1

    .line 421
    .end local v1    # "providers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljavax/cache/spi/CachingProvider;>;"
    .end local v2    # "serviceClassLoader":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getDefaultClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Ljavax/cache/Caching$CachingProviderRegistry;->classLoader:Ljava/lang/ClassLoader;

    .line 321
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .end local v0    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    return-object v0
.end method

.method protected loadCachingProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/cache/spi/CachingProvider;
    .locals 5
    .param p1, "fullyQualifiedClassName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 483
    monitor-enter p2

    .line 485
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 486
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljavax/cache/spi/CachingProvider;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/cache/spi/CachingProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 489
    :cond_0
    :try_start_2
    new-instance v2, Ljavax/cache/CacheException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The specified class ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not a CachingProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 491
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 492
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljavax/cache/CacheException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load the CachingProvider ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 494
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public setDefaultClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 333
    iput-object p1, p0, Ljavax/cache/Caching$CachingProviderRegistry;->classLoader:Ljava/lang/ClassLoader;

    .line 334
    return-void
.end method
