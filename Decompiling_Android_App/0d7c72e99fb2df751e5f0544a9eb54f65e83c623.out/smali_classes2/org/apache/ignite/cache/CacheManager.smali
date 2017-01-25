.class public Lorg/apache/ignite/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljavax/cache/CacheManager;


# static fields
.field private static final CACHE_CONFIGURATION:Ljava/lang/String; = "CacheConfiguration"

.field private static final CACHE_STATISTICS:Ljava/lang/String; = "CacheStatistics"

.field private static final igniteCnt:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final cachingProvider:Lorg/apache/ignite/cache/CachingProvider;

.field private final clsLdr:Ljava/lang/ClassLoader;

.field private final ignite:Lorg/apache/ignite/internal/IgniteKernal;

.field private final kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

.field private props:Ljava/util/Properties;

.field private final uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/apache/ignite/cache/CacheManager;->igniteCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/apache/ignite/cache/CachingProvider;Ljava/lang/ClassLoader;Ljava/util/Properties;)V
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cachingProvider"    # Lorg/apache/ignite/cache/CachingProvider;
    .param p3, "clsLdr"    # Ljava/lang/ClassLoader;
    .param p4, "props"    # Ljava/util/Properties;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    iput-object v3, p0, Lorg/apache/ignite/cache/CacheManager;->props:Ljava/util/Properties;

    .line 78
    iput-object p1, p0, Lorg/apache/ignite/cache/CacheManager;->uri:Ljava/net/URI;

    .line 79
    iput-object p2, p0, Lorg/apache/ignite/cache/CacheManager;->cachingProvider:Lorg/apache/ignite/cache/CachingProvider;

    .line 80
    iput-object p3, p0, Lorg/apache/ignite/cache/CacheManager;->clsLdr:Ljava/lang/ClassLoader;

    .line 81
    if-nez p4, :cond_0

    new-instance p4, Ljava/util/Properties;

    .end local p4    # "props":Ljava/util/Properties;
    invoke-direct {p4}, Ljava/util/Properties;-><init>()V

    :cond_0
    iput-object p4, p0, Lorg/apache/ignite/cache/CacheManager;->props:Ljava/util/Properties;

    .line 84
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/ignite/cache/CachingProvider;->getDefaultURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    new-instance v0, Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;-><init>()V

    .line 87
    .local v0, "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    const-string v3, "IGNITE_CACHE_CLIENT"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/apache/ignite/IgniteSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    new-instance v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-direct {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;-><init>()V

    .line 90
    .local v1, "discoSpi":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    new-instance v3, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;-><init>(Z)V

    invoke-virtual {v1, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->setIpFinder(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;)V

    .line 92
    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setDiscoverySpi(Lorg/apache/ignite/spi/discovery/DiscoverySpi;)V

    .line 95
    .end local v1    # "discoSpi":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CacheManager_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/cache/CacheManager;->igniteCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setGridName(Ljava/lang/String;)V

    .line 97
    invoke-static {v0}, Lorg/apache/ignite/internal/IgnitionEx;->start(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/Ignite;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/IgniteKernal;

    iput-object v3, p0, Lorg/apache/ignite/cache/CacheManager;->ignite:Lorg/apache/ignite/internal/IgniteKernal;

    .line 102
    .end local v0    # "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/cache/CacheManager;->ignite:Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    .line 110
    return-void

    .line 100
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/IgnitionEx;->start(Ljava/net/URL;)Lorg/apache/ignite/Ignite;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/IgniteKernal;

    iput-object v3, p0, Lorg/apache/ignite/cache/CacheManager;->ignite:Lorg/apache/ignite/internal/IgniteKernal;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 107
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v2

    .line 108
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v3, Ljavax/cache/CacheException;

    invoke-direct {v3, v2}, Ljavax/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getCache0(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 228
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/cache/CacheManager;->ignite:Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/IgniteKernal;->cache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 231
    :goto_0
    return-object v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getObjectName(Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;
    .locals 6
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "objName"    # Ljava/lang/String;

    .prologue
    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javax.cache:type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",CacheManager="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/cache/CacheManager;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ",|:|=|\n"

    const-string v5, "."

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",Cache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",|:|=|\n"

    const-string v4, "."

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "mBeanName":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljavax/management/ObjectName;

    invoke-direct {v2, v1}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/management/MalformedObjectNameException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljavax/management/MalformedObjectNameException;
    new-instance v2, Ljavax/cache/CacheException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create MBean name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private registerCacheObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "mxbean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "beanType"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v4, p0, Lorg/apache/ignite/cache/CacheManager;->ignite:Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/IgniteKernal;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v2

    .line 347
    .local v2, "mBeanSrv":Ljavax/management/MBeanServer;
    invoke-direct {p0, p2, p3}, Lorg/apache/ignite/cache/CacheManager;->getObjectName(Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v3

    .line 350
    .local v3, "registeredObjName":Ljavax/management/ObjectName;
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, v3, v4}, Ljavax/management/MBeanServer;->queryNames(Ljavax/management/ObjectName;Ljavax/management/QueryExp;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    const-string v4, "CacheConfiguration"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;

    check-cast p1, Ljavax/cache/management/CacheMXBean;

    .end local p1    # "mxbean":Ljava/lang/Object;
    const-class v4, Ljavax/cache/management/CacheMXBean;

    invoke-direct {v0, p1, v4}, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 355
    .local v0, "bean":Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;
    :goto_0
    invoke-interface {v2, v0, v3}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 361
    .end local v0    # "bean":Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;
    :cond_0
    return-void

    .line 351
    .restart local p1    # "mxbean":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;

    check-cast p1, Ljavax/cache/management/CacheStatisticsMXBean;

    .end local p1    # "mxbean":Ljava/lang/Object;
    const-class v4, Ljavax/cache/management/CacheStatisticsMXBean;

    invoke-direct {v0, p1, v4}, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljavax/cache/CacheException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to register MBean: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private unregisterCacheObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "beanType"    # Ljava/lang/String;

    .prologue
    .line 370
    iget-object v5, p0, Lorg/apache/ignite/cache/CacheManager;->ignite:Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/IgniteKernal;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v2

    .line 372
    .local v2, "mBeanSrv":Ljavax/management/MBeanServer;
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/cache/CacheManager;->getObjectName(Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Ljavax/management/MBeanServer;->queryNames(Ljavax/management/ObjectName;Ljavax/management/QueryExp;)Ljava/util/Set;

    move-result-object v3

    .line 375
    .local v3, "registeredObjNames":Ljava/util/Set;, "Ljava/util/Set<Ljavax/management/ObjectName;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/management/ObjectName;

    .line 377
    .local v4, "registeredObjectName":Ljavax/management/ObjectName;
    :try_start_0
    invoke-interface {v2, v4}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljavax/cache/CacheException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error unregistering object instance "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " . Error was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 384
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "registeredObjectName":Ljavax/management/ObjectName;
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 389
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheManager;->ignite:Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/IgniteKernal;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheManager;->cachingProvider:Lorg/apache/ignite/cache/CachingProvider;

    invoke-virtual {v0, p0}, Lorg/apache/ignite/cache/CachingProvider;->removeClosedManager(Lorg/apache/ignite/cache/CacheManager;)V

    .line 397
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 395
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheManager;->cachingProvider:Lorg/apache/ignite/cache/CachingProvider;

    invoke-virtual {v0, p0}, Lorg/apache/ignite/cache/CachingProvider;->removeClosedManager(Lorg/apache/ignite/cache/CacheManager;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/cache/CacheManager;->cachingProvider:Lorg/apache/ignite/cache/CachingProvider;

    invoke-virtual {v1, p0}, Lorg/apache/ignite/cache/CachingProvider;->removeClosedManager(Lorg/apache/ignite/cache/CacheManager;)V

    throw v0
.end method

.method public createCache(Ljava/lang/String;Ljavax/cache/configuration/Configuration;)Ljavax/cache/Cache;
    .locals 5
    .param p1, "cacheName"    # Ljava/lang/String;
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

    .prologue
    .line 135
    .local p2, "cacheCfg":Ljavax/cache/configuration/Configuration;, "TC;"
    iget-object v3, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 138
    if-nez p2, :cond_0

    .line 139
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local p2    # "cacheCfg":Ljavax/cache/configuration/Configuration;, "TC;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v3

    .line 141
    .restart local p2    # "cacheCfg":Ljavax/cache/configuration/Configuration;, "TC;"
    :cond_0
    if-nez p1, :cond_1

    .line 142
    :try_start_1
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 146
    :cond_1
    instance-of v3, p2, Ljavax/cache/configuration/CompleteConfiguration;

    if-eqz v3, :cond_2

    .line 147
    new-instance v1, Lorg/apache/ignite/configuration/CacheConfiguration;

    check-cast p2, Ljavax/cache/configuration/CompleteConfiguration;

    .end local p2    # "cacheCfg":Ljavax/cache/configuration/Configuration;, "TC;"
    invoke-direct {v1, p2}, Lorg/apache/ignite/configuration/CacheConfiguration;-><init>(Ljavax/cache/configuration/CompleteConfiguration;)V

    .line 154
    .local v1, "igniteCacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    :goto_0
    invoke-virtual {v1, p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setName(Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Lorg/apache/ignite/cache/CacheManager;->ignite:Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/IgniteKernal;->createCache(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/IgniteCache;

    move-result-object v2

    .line 158
    .local v2, "res":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    move-object v0, v2

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    move-object v3, v0

    invoke-virtual {v3, p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->setCacheManager(Lorg/apache/ignite/cache/CacheManager;)V

    .line 160
    if-nez v2, :cond_3

    .line 161
    new-instance v3, Ljavax/cache/CacheException;

    invoke-direct {v3}, Ljavax/cache/CacheException;-><init>()V

    throw v3

    .line 149
    .end local v1    # "igniteCacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    .end local v2    # "res":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    .restart local p2    # "cacheCfg":Ljavax/cache/configuration/Configuration;, "TC;"
    :cond_2
    new-instance v1, Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-direct {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;-><init>()V

    .line 151
    .restart local v1    # "igniteCacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    invoke-interface {p2}, Ljavax/cache/configuration/Configuration;->getKeyType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p2}, Ljavax/cache/configuration/Configuration;->getValueType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->setTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/cache/configuration/MutableConfiguration;

    goto :goto_0

    .line 163
    .end local p2    # "cacheCfg":Ljavax/cache/configuration/Configuration;, "TC;"
    .restart local v2    # "res":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    :cond_3
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isManagementEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 164
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/ignite/cache/CacheManager;->enableManagement(Ljava/lang/String;Z)V

    .line 166
    :cond_4
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 167
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/ignite/cache/CacheManager;->enableStatistics(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v2
.end method

.method public destroyCache(Ljava/lang/String;)V
    .locals 3
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-object v1, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 263
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/cache/CacheManager;->getCache0(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    .line 265
    .local v0, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<**>;"
    if-eqz v0, :cond_0

    .line 266
    const-string v1, "CacheConfiguration"

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/cache/CacheManager;->unregisterCacheObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "CacheStatistics"

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/cache/CacheManager;->unregisterCacheObject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    .line 274
    if-eqz v0, :cond_1

    .line 275
    invoke-interface {v0}, Lorg/apache/ignite/IgniteCache;->close()V

    .line 276
    :cond_1
    return-void

    .line 271
    .end local v0    # "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<**>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v1
.end method

.method public enableManagement(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 296
    iget-object v1, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 299
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/cache/CacheManager;->getCache0(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    .line 301
    .local v0, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<**>;"
    if-nez v0, :cond_0

    .line 302
    new-instance v1, Ljavax/cache/CacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .end local v0    # "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<**>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v1

    .line 304
    .restart local v0    # "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<**>;"
    :cond_0
    if-eqz p2, :cond_1

    .line 305
    :try_start_1
    invoke-interface {v0}, Lorg/apache/ignite/IgniteCache;->mxBean()Lorg/apache/ignite/mxbean/CacheMetricsMXBean;

    move-result-object v1

    const-string v2, "CacheConfiguration"

    invoke-direct {p0, v1, p1, v2}, Lorg/apache/ignite/cache/CacheManager;->registerCacheObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_0
    const-class v1, Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteCache;->getConfiguration(Ljava/lang/Class;)Ljavax/cache/configuration/Configuration;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v1, p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->setManagementEnabled(Z)Ljavax/cache/configuration/MutableConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    iget-object v1, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    .line 314
    return-void

    .line 307
    :cond_1
    :try_start_2
    const-string v1, "CacheConfiguration"

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/cache/CacheManager;->unregisterCacheObject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public enableStatistics(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 318
    iget-object v2, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 321
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/cache/CacheManager;->getCache0(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    .line 323
    .local v0, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<**>;"
    if-nez v0, :cond_0

    .line 324
    new-instance v2, Ljavax/cache/CacheException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    .end local v0    # "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<**>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v2

    .line 326
    .restart local v0    # "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<**>;"
    :cond_0
    :try_start_1
    const-class v2, Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteCache;->getConfiguration(Ljava/lang/Class;)Ljavax/cache/configuration/Configuration;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 328
    .local v1, "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    if-eqz p2, :cond_1

    .line 329
    invoke-interface {v0}, Lorg/apache/ignite/IgniteCache;->mxBean()Lorg/apache/ignite/mxbean/CacheMetricsMXBean;

    move-result-object v2

    const-string v3, "CacheStatistics"

    invoke-direct {p0, v2, p1, v3}, Lorg/apache/ignite/cache/CacheManager;->registerCacheObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    invoke-virtual {v1, p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->setStatisticsEnabled(Z)Ljavax/cache/configuration/MutableConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    iget-object v2, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    .line 338
    return-void

    .line 331
    :cond_1
    :try_start_2
    const-string v2, "CacheStatistics"

    invoke-direct {p0, p1, v2}, Lorg/apache/ignite/cache/CacheManager;->unregisterCacheObject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getCache(Ljava/lang/String;)Ljavax/cache/Cache;
    .locals 3
    .param p1, "cacheName"    # Ljava/lang/String;
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

    .prologue
    .line 200
    iget-object v1, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 203
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/cache/CacheManager;->getCache0(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    .line 205
    .local v0, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 206
    const-class v1, Ljavax/cache/configuration/Configuration;

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteCache;->getConfiguration(Ljava/lang/Class;)Ljavax/cache/configuration/Configuration;

    move-result-object v1

    invoke-interface {v1}, Ljavax/cache/configuration/Configuration;->getKeyType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v0    # "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v1

    .line 209
    .restart local v0    # "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    :cond_0
    :try_start_1
    const-class v1, Ljavax/cache/configuration/Configuration;

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteCache;->getConfiguration(Ljava/lang/Class;)Ljavax/cache/configuration/Configuration;

    move-result-object v1

    invoke-interface {v1}, Ljavax/cache/configuration/Configuration;->getValueType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v0
.end method

.method public getCache(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljavax/cache/Cache;
    .locals 3
    .param p1, "cacheName"    # Ljava/lang/String;
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
    .line 178
    .local p2, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "valType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 181
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/cache/CacheManager;->getCache0(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    .line 183
    .local v0, "cache":Ljavax/cache/Cache;, "Ljavax/cache/Cache<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 184
    const-class v1, Ljavax/cache/configuration/Configuration;

    invoke-interface {v0, v1}, Ljavax/cache/Cache;->getConfiguration(Ljava/lang/Class;)Ljavax/cache/configuration/Configuration;

    move-result-object v1

    invoke-interface {v1}, Ljavax/cache/configuration/Configuration;->getKeyType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v0    # "cache":Ljavax/cache/Cache;, "Ljavax/cache/Cache<TK;TV;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v1

    .line 187
    .restart local v0    # "cache":Ljavax/cache/Cache;, "Ljavax/cache/Cache<TK;TV;>;"
    :cond_0
    :try_start_1
    const-class v1, Ljavax/cache/configuration/Configuration;

    invoke-interface {v0, v1}, Ljavax/cache/Cache;->getConfiguration(Ljava/lang/Class;)Ljavax/cache/configuration/Configuration;

    move-result-object v1

    invoke-interface {v1}, Ljavax/cache/configuration/Configuration;->getValueType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v0
.end method

.method public getCacheNames()Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v3, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->readLockAnyway()V

    .line 240
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->getState()Lorg/apache/ignite/internal/GridKernalState;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/GridKernalState;->STARTED:Lorg/apache/ignite/internal/GridKernalState;

    if-eq v3, v4, :cond_0

    .line 241
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 252
    iget-object v4, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    :goto_0
    return-object v3

    .line 244
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v2, "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/apache/ignite/cache/CacheManager;->ignite:Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->publicCaches()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteCache;

    .line 247
    .local v0, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<**>;"
    invoke-interface {v0}, Lorg/apache/ignite/IgniteCache;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 252
    .end local v0    # "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<**>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v3

    .line 249
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 252
    iget-object v4, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    goto :goto_0
.end method

.method public bridge synthetic getCachingProvider()Ljavax/cache/spi/CachingProvider;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheManager;->getCachingProvider()Lorg/apache/ignite/cache/CachingProvider;

    move-result-object v0

    return-object v0
.end method

.method public getCachingProvider()Lorg/apache/ignite/cache/CachingProvider;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheManager;->cachingProvider:Lorg/apache/ignite/cache/CachingProvider;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheManager;->clsLdr:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheManager;->props:Ljava/util/Properties;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheManager;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readLockAnyway()V

    .line 404
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->getState()Lorg/apache/ignite/internal/GridKernalState;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/GridKernalState;->STARTED:Lorg/apache/ignite/internal/GridKernalState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 407
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return v0

    .line 404
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/cache/CacheManager;->kernalGateway:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    .line 416
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheManager;->ignite:Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheManager;->ignite:Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 419
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
