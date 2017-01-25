.class final Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
.super Ljava/lang/Object;
.source "IgnitionEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/IgnitionEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IgniteNamedInstance"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_STR_ARR:[Ljava/lang/String;

.field private static final mbeans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/management/MBeanServer;",
            "Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private execSvc:Ljava/util/concurrent/ExecutorService;

.field private volatile grid:Lorg/apache/ignite/internal/IgniteKernal;

.field private igfsExecSvc:Ljava/util/concurrent/ExecutorService;

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private marshCacheExecSvc:Ljava/util/concurrent/ExecutorService;

.field private mgmtExecSvc:Ljava/util/concurrent/ExecutorService;

.field private final name:Ljava/lang/String;

.field private p2pExecSvc:Ljava/util/concurrent/ExecutorService;

.field private restExecSvc:Ljava/util/concurrent/ExecutorService;

.field private shutdownHook:Ljava/lang/Thread;

.field private final startGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final startLatch:Ljava/util/concurrent/CountDownLatch;

.field private starterThread:Ljava/lang/Thread;

.field private volatile state:Lorg/apache/ignite/IgniteState;

.field private sysExecSvc:Ljava/util/concurrent/ExecutorService;

.field private utilityCacheExecSvc:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1168
    const-class v0, Lorg/apache/ignite/internal/IgnitionEx;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->$assertionsDisabled:Z

    .line 1170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->mbeans:Ljava/util/Map;

    .line 1174
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->EMPTY_STR_ARR:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    .line 1168
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1207
    sget-object v0, Lorg/apache/ignite/IgniteState;->STOPPED:Lorg/apache/ignite/IgniteState;

    iput-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->state:Lorg/apache/ignite/IgniteState;

    .line 1216
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->startGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1219
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->startLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1234
    iput-object p1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->name:Ljava/lang/String;

    .line 1235
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    .prologue
    .line 1168
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    .prologue
    .line 1168
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->startLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private static atomicsSystemCache(Lorg/apache/ignite/configuration/AtomicConfiguration;Z)Lorg/apache/ignite/configuration/CacheConfiguration;
    .locals 3
    .param p0, "cfg"    # Lorg/apache/ignite/configuration/AtomicConfiguration;
    .param p1, "client"    # Z

    .prologue
    .line 1955
    if-nez p1, :cond_1

    .line 1956
    new-instance v0, Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;-><init>()V

    .line 1958
    .local v0, "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    const-string v1, "ignite-atomics-sys-cache"

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setName(Ljava/lang/String;)V

    .line 1959
    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicityMode;->TRANSACTIONAL:Lorg/apache/ignite/cache/CacheAtomicityMode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setAtomicityMode(Lorg/apache/ignite/cache/CacheAtomicityMode;)V

    .line 1960
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setSwapEnabled(Z)V

    .line 1961
    sget-object v1, Lorg/apache/ignite/cache/CacheRebalanceMode;->SYNC:Lorg/apache/ignite/cache/CacheRebalanceMode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setRebalanceMode(Lorg/apache/ignite/cache/CacheRebalanceMode;)V

    .line 1962
    sget-object v1, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setWriteSynchronizationMode(Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;)V

    .line 1963
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/AtomicConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setCacheMode(Lorg/apache/ignite/cache/CacheMode;)V

    .line 1964
    sget-object v1, Lorg/apache/ignite/configuration/CacheConfiguration;->ALL_NODES:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setNodeFilter(Lorg/apache/ignite/lang/IgnitePredicate;)V

    .line 1965
    new-instance v1, Lorg/apache/ignite/configuration/NearCacheConfiguration;

    invoke-direct {v1}, Lorg/apache/ignite/configuration/NearCacheConfiguration;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setNearConfiguration(Lorg/apache/ignite/configuration/NearCacheConfiguration;)V

    .line 1967
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/AtomicConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v1, v2, :cond_0

    .line 1968
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/AtomicConfiguration;->getBackups()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setBackups(I)V

    .line 1973
    .end local v0    # "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureMultiInstanceSupport(Lorg/apache/ignite/spi/IgniteSpi;)V
    .locals 4
    .param p1, "spi"    # Lorg/apache/ignite/spi/IgniteSpi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1284
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;

    .line 1287
    .local v0, "ann":Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;->value()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1288
    :cond_0
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPI implementation doesn\'t support multiple grid instances in the same VM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1290
    :cond_1
    return-void
.end method

.method private ensureMultiInstanceSupport([Lorg/apache/ignite/spi/IgniteSpi;)V
    .locals 4
    .param p1, "spis"    # [Lorg/apache/ignite/spi/IgniteSpi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1297
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/ignite/spi/IgniteSpi;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1298
    .local v3, "spi":Lorg/apache/ignite/spi/IgniteSpi;
    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->ensureMultiInstanceSupport(Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1299
    .end local v3    # "spi":Lorg/apache/ignite/spi/IgniteSpi;
    :cond_0
    return-void
.end method

.method private initLogger(Lorg/apache/ignite/IgniteLogger;Ljava/util/UUID;)Lorg/apache/ignite/IgniteLogger;
    .locals 13
    .param p1, "cfgLog"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1826
    const/4 v8, 0x0

    .line 1828
    .local v8, "log4jInitErr":Ljava/lang/Exception;
    if-nez p1, :cond_4

    .line 1832
    :try_start_0
    const-string v10, "org.apache.ignite.logger.log4j.Log4JLogger"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 1838
    .local v7, "log4jCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v7, :cond_9

    .line 1840
    :try_start_1
    const-string v10, "config/ignite-log4j.xml"

    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveIgniteUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    .line 1842
    .local v9, "url":Ljava/net/URL;
    if-nez v9, :cond_1

    .line 1843
    new-instance v1, Ljava/io/File;

    const-string v10, "config/ignite-log4j.xml"

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1845
    .local v1, "cfgFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1846
    new-instance v1, Ljava/io/File;

    .end local v1    # "cfgFile":Ljava/io/File;
    const-string v10, "../config/ignite-log4j.xml"

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1848
    .restart local v1    # "cfgFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-eqz v10, :cond_1

    .line 1850
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    .line 1858
    .end local v1    # "cfgFile":Ljava/io/File;
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    .line 1859
    :try_start_3
    const-string v10, "isConfigured"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v7, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1861
    .local v3, "configured":Z
    if-eqz v3, :cond_2

    .line 1862
    const/4 v9, 0x0

    .line 1865
    .end local v3    # "configured":Z
    :cond_2
    if-eqz v9, :cond_7

    .line 1866
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/net/URL;

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 1868
    .local v4, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lorg/apache/ignite/IgniteLogger;

    move-object p1, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v4    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_2
    move-object v2, p1

    .line 1878
    .end local v9    # "url":Ljava/net/URL;
    .end local p1    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    .local v2, "cfgLog":Lorg/apache/ignite/IgniteLogger;
    :goto_3
    if-eqz v7, :cond_3

    if-eqz v8, :cond_8

    .line 1879
    :cond_3
    :try_start_4
    new-instance p1, Lorg/apache/ignite/logger/java/JavaLogger;

    invoke-direct {p1}, Lorg/apache/ignite/logger/java/JavaLogger;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1883
    .end local v2    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    .end local v7    # "log4jCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    :cond_4
    :goto_4
    :try_start_5
    instance-of v10, p1, Lorg/apache/ignite/logger/LoggerNodeIdAware;

    if-eqz v10, :cond_5

    .line 1884
    move-object v0, p1

    check-cast v0, Lorg/apache/ignite/logger/LoggerNodeIdAware;

    move-object v10, v0

    invoke-interface {v10, p2}, Lorg/apache/ignite/logger/LoggerNodeIdAware;->setNodeId(Ljava/util/UUID;)V

    .line 1886
    :cond_5
    if-eqz v8, :cond_6

    .line 1887
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to initialize Log4JLogger (falling back to standard java logging): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1890
    :cond_6
    return-object p1

    .line 1834
    :catch_0
    move-exception v6

    .line 1835
    .local v6, "ignored":Ljava/lang/Throwable;
    :goto_5
    const/4 v7, 0x0

    .restart local v7    # "log4jCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_0

    .line 1871
    .end local v6    # "ignored":Ljava/lang/Throwable;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_7
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lorg/apache/ignite/IgniteLogger;

    move-object p1, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 1873
    .end local v9    # "url":Ljava/net/URL;
    :catch_1
    move-exception v5

    .line 1874
    .local v5, "e":Ljava/lang/Exception;
    move-object v8, v5

    move-object v2, p1

    .end local p1    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    .restart local v2    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    goto :goto_3

    .line 1892
    .end local v2    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "log4jCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    :catch_2
    move-exception v5

    .line 1893
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_6
    new-instance v10, Lorg/apache/ignite/IgniteCheckedException;

    const-string v11, "Failed to create logger."

    invoke-direct {v10, v11, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 1892
    .end local v5    # "e":Ljava/lang/Exception;
    .end local p1    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    .restart local v2    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    .restart local v7    # "log4jCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v5

    move-object p1, v2

    .end local v2    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    .restart local p1    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    goto :goto_6

    .line 1852
    .restart local v1    # "cfgFile":Ljava/io/File;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_4
    move-exception v10

    goto/16 :goto_1

    .line 1834
    .end local v1    # "cfgFile":Ljava/io/File;
    .end local v7    # "log4jCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "url":Ljava/net/URL;
    :catch_5
    move-exception v6

    goto :goto_5

    .end local p1    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    .restart local v2    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    .restart local v7    # "log4jCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    move-object p1, v2

    .end local v2    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    .restart local p1    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    goto :goto_4

    :cond_9
    move-object v2, p1

    .end local p1    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    .restart local v2    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    goto :goto_3
.end method

.method private initializeConfiguration(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/configuration/IgniteConfiguration;
    .locals 22
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1511
    new-instance v15, Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;-><init>(Lorg/apache/ignite/configuration/IgniteConfiguration;)V

    .line 1513
    .local v15, "myCfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIgniteHome()Ljava/lang/String;

    move-result-object v9

    .line 1516
    .local v9, "ggHome":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 1517
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getIgniteHome()Ljava/lang/String;

    move-result-object v9

    .line 1522
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getWorkDirectory()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->setWorkDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    sget-boolean v19, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->$assertionsDisabled:Z

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 1520
    :cond_0
    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->setIgniteHome(Ljava/lang/String;)V

    goto :goto_0

    .line 1529
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v16

    .line 1531
    .local v16, "nodeId":Ljava/util/UUID;
    :goto_1
    invoke-virtual/range {v15 .. v16}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setNodeId(Ljava/util/UUID;)V

    .line 1533
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->initLogger(Lorg/apache/ignite/IgniteLogger;Ljava/util/UUID;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    .line 1535
    .local v3, "cfgLog":Lorg/apache/ignite/IgniteLogger;
    sget-boolean v19, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->$assertionsDisabled:Z

    if-nez v19, :cond_3

    if-nez v3, :cond_3

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 1529
    .end local v3    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    .end local v16    # "nodeId":Ljava/util/UUID;
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v16

    goto :goto_1

    .line 1537
    .restart local v3    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    .restart local v16    # "nodeId":Ljava/util/UUID;
    :cond_3
    new-instance v4, Lorg/apache/ignite/internal/GridLoggerProxy;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v4, v3, v0, v1, v2}, Lorg/apache/ignite/internal/GridLoggerProxy;-><init>(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    .end local v3    # "cfgLog":Lorg/apache/ignite/IgniteLogger;
    .local v4, "cfgLog":Lorg/apache/ignite/IgniteLogger;
    const-class v19, Lorg/apache/ignite/internal/util/typedef/G;

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    .line 1542
    invoke-virtual {v15, v4}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setGridLogger(Lorg/apache/ignite/IgniteLogger;)V

    .line 1545
    if-eqz v9, :cond_5

    .line 1546
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1548
    .local v10, "ggHomeFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-nez v19, :cond_5

    .line 1549
    :cond_4
    new-instance v19, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid Ignite installation home folder: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1552
    .end local v10    # "ggHomeFile":Ljava/io/File;
    :cond_5
    invoke-virtual {v15, v9}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setIgniteHome(Ljava/lang/String;)V

    .line 1555
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSegmentationPolicy()Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    move-result-object v17

    .line 1559
    .local v17, "segPlc":Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSegmentationResolvers()[Lorg/apache/ignite/plugin/segmentation/GridSegmentationResolver;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    sget-object v19, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->RESTART_JVM:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isWaitForSegmentOnStart()Z

    move-result v19

    if-nez v19, :cond_6

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Found potential configuration problem (forgot to enable waiting for segmenton start?) [segPlc="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", wait=false]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1564
    :cond_6
    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v19

    if-eqz v19, :cond_f

    new-instance v19, Lorg/apache/ignite/configuration/TransactionConfiguration;

    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/apache/ignite/configuration/TransactionConfiguration;-><init>(Lorg/apache/ignite/configuration/TransactionConfiguration;)V

    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setTransactionConfiguration(Lorg/apache/ignite/configuration/TransactionConfiguration;)V

    .line 1567
    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v19

    if-eqz v19, :cond_10

    new-instance v19, Lorg/apache/ignite/configuration/ConnectorConfiguration;

    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/apache/ignite/configuration/ConnectorConfiguration;-><init>(Lorg/apache/ignite/configuration/ConnectorConfiguration;)V

    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setConnectorConfiguration(Lorg/apache/ignite/configuration/ConnectorConfiguration;)V

    .line 1571
    const-string v19, "IGNITE_LOCAL_HOST"

    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/IgniteSystemProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1573
    .local v13, "locHost":Ljava/lang/String;
    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLocalHost()Ljava/lang/String;

    move-result-object v13

    .end local v13    # "locHost":Ljava/lang/String;
    :cond_7
    invoke-virtual {v15, v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setLocalHost(Ljava/lang/String;)V

    .line 1576
    # getter for: Lorg/apache/ignite/internal/IgnitionEx;->daemon:Ljava/lang/ThreadLocal;
    invoke-static {}, Lorg/apache/ignite/internal/IgnitionEx;->access$200()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1577
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setDaemon(Z)V

    .line 1579
    :cond_8
    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isClientMode()Ljava/lang/Boolean;

    move-result-object v19

    if-nez v19, :cond_9

    .line 1580
    # getter for: Lorg/apache/ignite/internal/IgnitionEx;->clientMode:Ljava/lang/ThreadLocal;
    invoke-static {}, Lorg/apache/ignite/internal/IgnitionEx;->access$300()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    .line 1582
    .local v18, "threadClient":Ljava/lang/Boolean;
    if-nez v18, :cond_11

    .line 1583
    const-string v19, "IGNITE_CACHE_CLIENT"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lorg/apache/ignite/IgniteSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setClientMode(Z)V

    .line 1589
    .end local v18    # "threadClient":Ljava/lang/Boolean;
    :cond_9
    :goto_4
    const-string v19, "IGNITE_DEPLOYMENT_MODE_OVERRIDE"

    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/IgniteSystemProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1591
    .local v7, "depModeName":Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 1592
    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_12

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    const-string v20, "Skipping deployment mode override for caches (custom closure execution may not work for console Visor)"

    invoke-static/range {v19 .. v20}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndInfo(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V

    .line 1611
    :cond_a
    :goto_5
    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getUserAttributes()Ljava/util/Map;

    move-result-object v19

    if-nez v19, :cond_b

    .line 1612
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setUserAttributes(Ljava/util/Map;)V

    .line 1614
    :cond_b
    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v19

    if-nez v19, :cond_c

    .line 1615
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setMBeanServer(Ljavax/management/MBeanServer;)V

    .line 1617
    :cond_c
    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v14

    .line 1619
    .local v14, "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    if-nez v14, :cond_15

    .line 1620
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isHotSpot()Z

    move-result v19

    if-nez v19, :cond_13

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    const-string v20, "OptimizedMarshaller is not supported on this JVM (only Java HotSpot VMs are supported). Switching to standard JDK marshalling - object serialization performance will be significantly slower."

    const-string v21, "To enable fast marshalling upgrade to recent 1.6 or 1.7 HotSpot VM release."

    invoke-static/range {v19 .. v21}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1626
    new-instance v14, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

    .end local v14    # "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    invoke-direct {v14}, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;-><init>()V

    .line 1647
    .restart local v14    # "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    :cond_d
    :goto_6
    invoke-virtual {v15, v14}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setMarshaller(Lorg/apache/ignite/marshaller/Marshaller;)V

    .line 1649
    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingLocalClassPathExclude()[Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_e

    .line 1650
    sget-object v19, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->EMPTY_STR_ARR:[Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setPeerClassLoadingLocalClassPathExclude([Ljava/lang/String;)V

    .line 1652
    :cond_e
    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFileSystemConfiguration()[Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v12

    .line 1654
    .local v12, "igfsCfgs":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    if-eqz v12, :cond_17

    .line 1655
    invoke-virtual {v12}, [Lorg/apache/ignite/configuration/FileSystemConfiguration;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/ignite/configuration/FileSystemConfiguration;

    .line 1657
    .local v5, "clone":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_16

    .line 1658
    new-instance v19, Lorg/apache/ignite/configuration/FileSystemConfiguration;

    aget-object v20, v12, v11

    invoke-direct/range {v19 .. v20}, Lorg/apache/ignite/configuration/FileSystemConfiguration;-><init>(Lorg/apache/ignite/configuration/FileSystemConfiguration;)V

    aput-object v19, v5, v11

    .line 1657
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1564
    .end local v5    # "clone":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .end local v7    # "depModeName":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "igfsCfgs":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .end local v14    # "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 1567
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1585
    .restart local v18    # "threadClient":Ljava/lang/Boolean;
    :cond_11
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setClientMode(Z)V

    goto/16 :goto_4

    .line 1598
    .end local v18    # "threadClient":Ljava/lang/Boolean;
    .restart local v7    # "depModeName":Ljava/lang/String;
    :cond_12
    :try_start_0
    invoke-static {v7}, Lorg/apache/ignite/configuration/DeploymentMode;->valueOf(Ljava/lang/String;)Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v6

    .line 1600
    .local v6, "depMode":Lorg/apache/ignite/configuration/DeploymentMode;
    invoke-virtual {v15}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v19

    move-object/from16 v0, v19

    if-eq v0, v6, :cond_a

    .line 1601
    invoke-virtual {v15, v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setDeploymentMode(Lorg/apache/ignite/configuration/DeploymentMode;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 1603
    .end local v6    # "depMode":Lorg/apache/ignite/configuration/DeploymentMode;
    :catch_0
    move-exception v8

    .line 1604
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    new-instance v19, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to override deployment mode using system property (are there any misspellings?)[name=IGNITE_DEPLOYMENT_MODE_OVERRIDE, value="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5d

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 1628
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v14    # "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    :cond_13
    invoke-static {}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->available()Z

    move-result v19

    if-nez v19, :cond_14

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    const-string v20, "OptimizedMarshaller is not supported on this JVM (only recent 1.6 and 1.7 versions HotSpot VMs are supported). To enable fast marshalling upgrade to recent 1.6 or 1.7 HotSpot VM release. Switching to standard JDK marshalling - object serialization performance will be significantly slower."

    const-string v21, "To enable fast marshalling upgrade to recent 1.6 or 1.7 HotSpot VM release."

    invoke-static/range {v19 .. v21}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1636
    new-instance v14, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

    .end local v14    # "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    invoke-direct {v14}, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;-><init>()V

    .restart local v14    # "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    goto/16 :goto_6

    .line 1639
    :cond_14
    new-instance v14, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    .end local v14    # "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    invoke-direct {v14}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;-><init>()V

    .restart local v14    # "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    goto/16 :goto_6

    .line 1641
    :cond_15
    instance-of v0, v14, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isHotSpot()Z

    move-result v19

    if-nez v19, :cond_d

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    const-string v20, "Using OptimizedMarshaller on untested JVM (only Java HotSpot VMs were tested) - object serialization behavior could yield unexpected results."

    const-string v21, "Using GridOptimizedMarshaller on untested JVM."

    invoke-static/range {v19 .. v21}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1660
    .restart local v5    # "clone":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .restart local v11    # "i":I
    .restart local v12    # "igfsCfgs":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    :cond_16
    invoke-virtual {v15, v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setFileSystemConfiguration([Lorg/apache/ignite/configuration/FileSystemConfiguration;)V

    .line 1663
    .end local v5    # "clone":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .end local v11    # "i":I
    :cond_17
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->initializeDefaultSpi(Lorg/apache/ignite/configuration/IgniteConfiguration;)V

    .line 1665
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->initializeDefaultCacheConfiguration(Lorg/apache/ignite/configuration/IgniteConfiguration;)V

    .line 1667
    return-object v15
.end method

.method private initializeDefaultSpi(Lorg/apache/ignite/configuration/IgniteConfiguration;)V
    .locals 10
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1766
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoverySpi()Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1767
    new-instance v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-direct {v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;-><init>()V

    invoke-virtual {p1, v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setDiscoverySpi(Lorg/apache/ignite/spi/discovery/DiscoverySpi;)V

    .line 1769
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoverySpi()Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    move-result-object v6

    instance-of v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    if-eqz v6, :cond_1

    .line 1770
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoverySpi()Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .line 1772
    .local v5, "tcpDisco":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    invoke-virtual {v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->getIpFinder()Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1773
    new-instance v6, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;

    invoke-direct {v6}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/multicast/TcpDiscoveryMulticastIpFinder;-><init>()V

    invoke-virtual {v5, v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->setIpFinder(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;)V

    .line 1776
    .end local v5    # "tcpDisco":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCommunicationSpi()Lorg/apache/ignite/spi/communication/CommunicationSpi;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1777
    new-instance v6, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-direct {v6}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;-><init>()V

    invoke-virtual {p1, v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setCommunicationSpi(Lorg/apache/ignite/spi/communication/CommunicationSpi;)V

    .line 1779
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentSpi()Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1780
    new-instance v6, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;

    invoke-direct {v6}, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;-><init>()V

    invoke-virtual {p1, v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setDeploymentSpi(Lorg/apache/ignite/spi/deployment/DeploymentSpi;)V

    .line 1782
    :cond_3
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getEventStorageSpi()Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

    move-result-object v6

    if-nez v6, :cond_4

    .line 1783
    new-instance v6, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;

    invoke-direct {v6}, Lorg/apache/ignite/spi/eventstorage/memory/MemoryEventStorageSpi;-><init>()V

    invoke-virtual {p1, v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setEventStorageSpi(Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;)V

    .line 1785
    :cond_4
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCheckpointSpi()[Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    move-result-object v6

    if-nez v6, :cond_5

    .line 1786
    new-array v6, v9, [Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    new-instance v7, Lorg/apache/ignite/spi/checkpoint/noop/NoopCheckpointSpi;

    invoke-direct {v7}, Lorg/apache/ignite/spi/checkpoint/noop/NoopCheckpointSpi;-><init>()V

    aput-object v7, v6, v8

    invoke-virtual {p1, v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setCheckpointSpi([Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;)V

    .line 1788
    :cond_5
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCollisionSpi()Lorg/apache/ignite/spi/collision/CollisionSpi;

    move-result-object v6

    if-nez v6, :cond_6

    .line 1789
    new-instance v6, Lorg/apache/ignite/spi/collision/noop/NoopCollisionSpi;

    invoke-direct {v6}, Lorg/apache/ignite/spi/collision/noop/NoopCollisionSpi;-><init>()V

    invoke-virtual {p1, v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setCollisionSpi(Lorg/apache/ignite/spi/collision/CollisionSpi;)V

    .line 1791
    :cond_6
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFailoverSpi()[Lorg/apache/ignite/spi/failover/FailoverSpi;

    move-result-object v6

    if-nez v6, :cond_7

    .line 1792
    new-array v6, v9, [Lorg/apache/ignite/spi/failover/FailoverSpi;

    new-instance v7, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;

    invoke-direct {v7}, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;-><init>()V

    aput-object v7, v6, v8

    invoke-virtual {p1, v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setFailoverSpi([Lorg/apache/ignite/spi/failover/FailoverSpi;)V

    .line 1794
    :cond_7
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLoadBalancingSpi()[Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;

    move-result-object v6

    if-nez v6, :cond_8

    .line 1795
    new-array v6, v9, [Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;

    new-instance v7, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;

    invoke-direct {v7}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpi;-><init>()V

    aput-object v7, v6, v8

    invoke-virtual {p1, v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setLoadBalancingSpi([Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;)V

    .line 1797
    :cond_8
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIndexingSpi()Lorg/apache/ignite/spi/indexing/IndexingSpi;

    move-result-object v6

    if-nez v6, :cond_9

    .line 1798
    new-instance v6, Lorg/apache/ignite/spi/indexing/noop/NoopIndexingSpi;

    invoke-direct {v6}, Lorg/apache/ignite/spi/indexing/noop/NoopIndexingSpi;-><init>()V

    invoke-virtual {p1, v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setIndexingSpi(Lorg/apache/ignite/spi/indexing/IndexingSpi;)V

    .line 1800
    :cond_9
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSwapSpaceSpi()Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    move-result-object v6

    if-nez v6, :cond_b

    .line 1801
    const/4 v4, 0x0

    .line 1803
    .local v4, "needSwap":Z
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 1804
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_a

    aget-object v1, v0, v2

    .line 1805
    .local v1, "c":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->isSwapEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1806
    const/4 v4, 0x1

    .line 1813
    .end local v0    # "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v1    # "c":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_a
    if-eqz v4, :cond_d

    new-instance v6, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-direct {v6}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;-><init>()V

    :goto_1
    check-cast v6, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    invoke-virtual {p1, v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setSwapSpaceSpi(Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;)V

    .line 1815
    .end local v4    # "needSwap":Z
    :cond_b
    return-void

    .line 1804
    .restart local v0    # "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    .restart local v1    # "c":Lorg/apache/ignite/configuration/CacheConfiguration;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "needSwap":Z
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1813
    .end local v0    # "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v1    # "c":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_d
    new-instance v6, Lorg/apache/ignite/spi/swapspace/noop/NoopSwapSpaceSpi;

    invoke-direct {v6}, Lorg/apache/ignite/spi/swapspace/noop/NoopSwapSpaceSpi;-><init>()V

    goto :goto_1
.end method

.method private static marshallerSystemCache(Z)Lorg/apache/ignite/configuration/CacheConfiguration;
    .locals 4
    .param p0, "client"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1904
    if-nez p0, :cond_0

    .line 1905
    new-instance v0, Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;-><init>()V

    .line 1907
    .local v0, "cache":Lorg/apache/ignite/configuration/CacheConfiguration;
    const-string v1, "ignite-marshaller-sys-cache"

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setName(Ljava/lang/String;)V

    .line 1908
    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->REPLICATED:Lorg/apache/ignite/cache/CacheMode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setCacheMode(Lorg/apache/ignite/cache/CacheMode;)V

    .line 1909
    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicityMode;->ATOMIC:Lorg/apache/ignite/cache/CacheAtomicityMode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setAtomicityMode(Lorg/apache/ignite/cache/CacheAtomicityMode;)V

    .line 1910
    invoke-virtual {v0, v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->setSwapEnabled(Z)V

    .line 1911
    sget-object v1, Lorg/apache/ignite/cache/CacheRebalanceMode;->SYNC:Lorg/apache/ignite/cache/CacheRebalanceMode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setRebalanceMode(Lorg/apache/ignite/cache/CacheRebalanceMode;)V

    .line 1912
    sget-object v1, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setWriteSynchronizationMode(Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;)V

    .line 1913
    new-instance v1, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    const/16 v2, 0x64

    invoke-direct {v1, v3, v2}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setAffinity(Lorg/apache/ignite/cache/affinity/AffinityFunction;)V

    .line 1914
    sget-object v1, Lorg/apache/ignite/configuration/CacheConfiguration;->ALL_NODES:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setNodeFilter(Lorg/apache/ignite/lang/IgnitePredicate;)V

    .line 1919
    .end local v0    # "cache":Lorg/apache/ignite/configuration/CacheConfiguration;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerFactoryMbean(Ljavax/management/MBeanServer;)V
    .locals 11
    .param p1, "srv"    # Ljavax/management/MBeanServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2109
    sget-object v10, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->mbeans:Ljava/util/Map;

    monitor-enter v10

    .line 2110
    :try_start_0
    sget-object v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->mbeans:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2112
    .local v6, "data":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    if-nez v6, :cond_2

    .line 2114
    :try_start_1
    new-instance v4, Lorg/apache/ignite/internal/IgnitionMXBeanAdapter;

    invoke-direct {v4}, Lorg/apache/ignite/internal/IgnitionMXBeanAdapter;-><init>()V

    .line 2116
    .local v4, "mbean":Lorg/apache/ignite/mxbean/IgnitionMXBean;
    const/4 v0, 0x0

    const-string v1, "Kernal"

    const-class v2, Lorg/apache/ignite/Ignition;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->makeMBeanName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v9

    .line 2123
    .local v9, "objName":Ljavax/management/ObjectName;
    const/4 v0, 0x0

    invoke-interface {p1, v9, v0}, Ljavax/management/MBeanServer;->queryMBeans(Ljavax/management/ObjectName;Ljavax/management/QueryExp;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2124
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MBean was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljavax/management/JMException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2143
    .end local v4    # "mbean":Lorg/apache/ignite/mxbean/IgnitionMXBean;
    .end local v9    # "objName":Ljavax/management/ObjectName;
    :catch_0
    move-exception v8

    .line 2144
    .local v8, "e":Ljavax/management/JMException;
    :goto_0
    :try_start_2
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "Failed to register MBean."

    invoke-direct {v0, v1, v8}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2152
    .end local v6    # "data":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    .end local v8    # "e":Ljavax/management/JMException;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2126
    .restart local v4    # "mbean":Lorg/apache/ignite/mxbean/IgnitionMXBean;
    .restart local v6    # "data":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    .restart local v9    # "objName":Ljavax/management/ObjectName;
    :cond_0
    const/4 v1, 0x0

    :try_start_3
    const-string v2, "Kernal"

    const-class v0, Lorg/apache/ignite/Ignition;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lorg/apache/ignite/mxbean/IgnitionMXBean;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->registerMBean(Ljavax/management/MBeanServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljavax/management/ObjectName;

    move-result-object v9

    .line 2135
    new-instance v7, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;

    invoke-direct {v7, v9}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;-><init>(Ljavax/management/ObjectName;)V
    :try_end_3
    .catch Ljavax/management/JMException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2137
    .end local v6    # "data":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    .local v7, "data":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    :try_start_4
    sget-object v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->mbeans:Ljava/util/Map;

    invoke-interface {v0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2140
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered MBean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljavax/management/JMException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    move-object v6, v7

    .line 2148
    .end local v4    # "mbean":Lorg/apache/ignite/mxbean/IgnitionMXBean;
    .end local v7    # "data":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    .end local v9    # "objName":Ljavax/management/ObjectName;
    .restart local v6    # "data":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    :cond_2
    :try_start_5
    sget-boolean v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez v6, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2150
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->addGrid(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {v6}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->getCounter()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->setCounter(I)V

    .line 2152
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2153
    return-void

    .line 2143
    .end local v6    # "data":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    .restart local v4    # "mbean":Lorg/apache/ignite/mxbean/IgnitionMXBean;
    .restart local v7    # "data":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    .restart local v9    # "objName":Ljavax/management/ObjectName;
    :catch_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "data":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    .restart local v6    # "data":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    goto :goto_0
.end method

.method private start0(Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;)V
    .locals 15
    .param p1, "startCtx"    # Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1334
    sget-boolean v1, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid:Lorg/apache/ignite/internal/IgniteKernal;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grid is already started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1336
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v11

    .line 1338
    .local v11, "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    :goto_0
    invoke-direct {p0, v11}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->initializeConfiguration(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v13

    .line 1341
    .local v13, "myCfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->configUrl()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1342
    const-string v1, "IGNITE_CONFIG_URL"

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->configUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1345
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->single()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1346
    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentSpi()Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->ensureMultiInstanceSupport(Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1347
    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCommunicationSpi()Lorg/apache/ignite/spi/communication/CommunicationSpi;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->ensureMultiInstanceSupport(Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1348
    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoverySpi()Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->ensureMultiInstanceSupport(Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1349
    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCheckpointSpi()[Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->ensureMultiInstanceSupport([Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1350
    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getEventStorageSpi()Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->ensureMultiInstanceSupport(Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1351
    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCollisionSpi()Lorg/apache/ignite/spi/collision/CollisionSpi;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->ensureMultiInstanceSupport(Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1352
    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFailoverSpi()[Lorg/apache/ignite/spi/failover/FailoverSpi;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->ensureMultiInstanceSupport([Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1353
    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLoadBalancingSpi()[Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->ensureMultiInstanceSupport([Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1354
    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSwapSpaceSpi()Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->ensureMultiInstanceSupport(Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1357
    :cond_2
    new-instance v0, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pub-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPublicThreadPoolSize()I

    move-result v2

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPublicThreadPoolSize()I

    move-result v3

    const-wide/16 v4, 0x0

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const v7, 0x7fffffff

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->execSvc:Ljava/util/concurrent/ExecutorService;

    .line 1365
    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->execSvc:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    .line 1369
    new-instance v0, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sys-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSystemThreadPoolSize()I

    move-result v2

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSystemThreadPoolSize()I

    move-result v3

    const-wide/16 v4, 0x0

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const v7, 0x7fffffff

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->sysExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 1377
    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->sysExecSvc:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    .line 1383
    new-instance v0, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mgmt-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getManagementThreadPoolSize()I

    move-result v2

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getManagementThreadPoolSize()I

    move-result v3

    const-wide/16 v4, 0x0

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->mgmtExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 1394
    new-instance v0, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p2p-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingThreadPoolSize()I

    move-result v2

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingThreadPoolSize()I

    move-result v3

    const-wide/16 v4, 0x0

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->p2pExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 1402
    new-instance v0, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "igfs-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIgfsThreadPoolSize()I

    move-result v2

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIgfsThreadPoolSize()I

    move-result v3

    const-wide/16 v4, 0x0

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->igfsExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 1409
    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1410
    new-instance v0, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rest-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getThreadPoolSize()I

    move-result v2

    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getThreadPoolSize()I

    move-result v3

    const-wide/16 v4, 0x0

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const v7, 0x7fffffff

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->restExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 1419
    :cond_3
    new-instance v0, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "utility-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_SYSTEM_CORE_THREAD_CNT:I

    sget v3, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_SYSTEM_MAX_THREAD_CNT:I

    const-wide/16 v4, 0x0

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const v7, 0x7fffffff

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->utilityCacheExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 1426
    new-instance v0, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "marshaller-cache-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_SYSTEM_CORE_THREAD_CNT:I

    sget v3, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_SYSTEM_MAX_THREAD_CNT:I

    const-wide/16 v4, 0x0

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const v7, 0x7fffffff

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->marshCacheExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 1434
    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->registerFactoryMbean(Ljavax/management/MBeanServer;)V

    .line 1436
    const/4 v14, 0x0

    .line 1439
    .local v14, "started":Z
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->springContext()Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;-><init>(Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)V

    .line 1442
    .local v0, "grid0":Lorg/apache/ignite/internal/IgniteKernal;
    iput-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid:Lorg/apache/ignite/internal/IgniteKernal;

    .line 1444
    iget-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->utilityCacheExecSvc:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->marshCacheExecSvc:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->execSvc:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->sysExecSvc:Ljava/util/concurrent/ExecutorService;

    iget-object v6, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->p2pExecSvc:Ljava/util/concurrent/ExecutorService;

    iget-object v7, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->mgmtExecSvc:Ljava/util/concurrent/ExecutorService;

    iget-object v8, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->igfsExecSvc:Ljava/util/concurrent/ExecutorService;

    iget-object v9, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->restExecSvc:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$1;

    invoke-direct {v10, p0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$1;-><init>(Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;)V

    move-object v1, v13

    invoke-virtual/range {v0 .. v10}, Lorg/apache/ignite/internal/IgniteKernal;->start(Lorg/apache/ignite/configuration/IgniteConfiguration;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/internal/util/lang/GridAbsClosure;)V

    .line 1452
    sget-object v1, Lorg/apache/ignite/IgniteState;->STARTED:Lorg/apache/ignite/IgniteState;

    iput-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->state:Lorg/apache/ignite/IgniteState;

    .line 1454
    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1455
    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Grid factory started ok: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    :cond_4
    const/4 v14, 0x1

    .line 1471
    if-nez v14, :cond_5

    .line 1473
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid:Lorg/apache/ignite/internal/IgniteKernal;

    .line 1477
    :cond_5
    const-string v1, "IGNITE_NO_SHUTDOWN_HOOK"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/ignite/IgniteSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1479
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$2;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$2;-><init>(Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->shutdownHook:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 1488
    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1489
    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Shutdown hook is installed."

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1502
    :cond_6
    :goto_1
    return-void

    .line 1336
    .end local v0    # "grid0":Lorg/apache/ignite/internal/IgniteKernal;
    .end local v11    # "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    .end local v13    # "myCfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    .end local v14    # "started":Z
    :cond_7
    new-instance v11, Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-direct {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;-><init>()V

    goto/16 :goto_0

    .line 1459
    .restart local v11    # "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    .restart local v13    # "myCfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    .restart local v14    # "started":Z
    :catch_0
    move-exception v12

    .line 1460
    .local v12, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->unregisterFactoryMBean()V

    .line 1462
    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1471
    .end local v12    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    if-nez v14, :cond_8

    .line 1473
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid:Lorg/apache/ignite/internal/IgniteKernal;

    :cond_8
    throw v1

    .line 1465
    :catch_1
    move-exception v12

    .line 1466
    .local v12, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->unregisterFactoryMBean()V

    .line 1468
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v2, "Unexpected exception when starting grid."

    invoke-direct {v1, v2, v12}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1491
    .end local v12    # "e":Ljava/lang/Throwable;
    .restart local v0    # "grid0":Lorg/apache/ignite/internal/IgniteKernal;
    :catch_2
    move-exception v12

    .line 1492
    .local v12, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->stop(Z)V

    .line 1494
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v2, "Failed to install shutdown hook."

    invoke-direct {v1, v2, v12}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1498
    .end local v12    # "e":Ljava/lang/IllegalStateException;
    :cond_9
    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1499
    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Shutdown hook has not been installed because environment or system property IGNITE_NO_SHUTDOWN_HOOK is set."

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized stop0(Z)V
    .locals 5
    .param p1, "cancel"    # Z

    .prologue
    .line 1995
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid:Lorg/apache/ignite/internal/IgniteKernal;

    .line 1998
    .local v1, "grid0":Lorg/apache/ignite/internal/IgniteKernal;
    if-nez v1, :cond_1

    .line 1999
    iget-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    if-eqz v2, :cond_0

    .line 2000
    iget-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to stop an already stopped grid instance (ignore): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2041
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2005
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->shutdownHook:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 2007
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->shutdownHook:Ljava/lang/Thread;

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    .line 2009
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->shutdownHook:Ljava/lang/Thread;

    .line 2011
    iget-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2012
    iget-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Shutdown hook is removed."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2021
    :cond_2
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->unregisterFactoryMBean()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2024
    :try_start_4
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/IgniteKernal;->stop(Z)V

    .line 2026
    iget-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2027
    iget-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Grid instance stopped ok: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2033
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->segmented()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lorg/apache/ignite/IgniteState;->STOPPED_ON_SEGMENTATION:Lorg/apache/ignite/IgniteState;

    :goto_2
    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->state:Lorg/apache/ignite/IgniteState;

    .line 2035
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid:Lorg/apache/ignite/internal/IgniteKernal;

    .line 2037
    iget-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->stopExecutors(Lorg/apache/ignite/IgniteLogger;)V

    .line 2039
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1995
    .end local v1    # "grid0":Lorg/apache/ignite/internal/IgniteKernal;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2014
    .restart local v1    # "grid0":Lorg/apache/ignite/internal/IgniteKernal;
    :catch_0
    move-exception v0

    .line 2016
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_6
    iget-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2017
    iget-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shutdown is in progress (ignoring): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 2033
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_4
    sget-object v2, Lorg/apache/ignite/IgniteState;->STOPPED:Lorg/apache/ignite/IgniteState;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 2029
    :catch_1
    move-exception v0

    .line 2030
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_7
    iget-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to properly stop grid instance due to undeclared exception."

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2033
    :try_start_8
    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->segmented()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lorg/apache/ignite/IgniteState;->STOPPED_ON_SEGMENTATION:Lorg/apache/ignite/IgniteState;

    :goto_3
    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->state:Lorg/apache/ignite/IgniteState;

    .line 2035
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid:Lorg/apache/ignite/internal/IgniteKernal;

    .line 2037
    iget-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->stopExecutors(Lorg/apache/ignite/IgniteLogger;)V

    .line 2039
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    goto/16 :goto_0

    .line 2033
    :cond_5
    sget-object v2, Lorg/apache/ignite/IgniteState;->STOPPED:Lorg/apache/ignite/IgniteState;

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->segmented()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lorg/apache/ignite/IgniteState;->STOPPED_ON_SEGMENTATION:Lorg/apache/ignite/IgniteState;

    :goto_4
    iput-object v3, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->state:Lorg/apache/ignite/IgniteState;

    .line 2035
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid:Lorg/apache/ignite/internal/IgniteKernal;

    .line 2037
    iget-object v3, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->stopExecutors(Lorg/apache/ignite/IgniteLogger;)V

    .line 2039
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    throw v2

    .line 2033
    :cond_6
    sget-object v3, Lorg/apache/ignite/IgniteState;->STOPPED:Lorg/apache/ignite/IgniteState;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4
.end method

.method private stopExecutors(Lorg/apache/ignite/IgniteLogger;)V
    .locals 3
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 2049
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    .line 2052
    .local v0, "interrupted":Z
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->stopExecutors0(Lorg/apache/ignite/IgniteLogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2055
    if-eqz v0, :cond_0

    .line 2056
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 2058
    :cond_0
    return-void

    .line 2055
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 2056
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v1
.end method

.method private stopExecutors0(Lorg/apache/ignite/IgniteLogger;)V
    .locals 3
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    const/4 v2, 0x0

    .line 2066
    sget-boolean v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2068
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->execSvc:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/IgniteLogger;)V

    .line 2070
    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->execSvc:Ljava/util/concurrent/ExecutorService;

    .line 2072
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->sysExecSvc:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/IgniteLogger;)V

    .line 2074
    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->sysExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 2076
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->mgmtExecSvc:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/IgniteLogger;)V

    .line 2078
    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->mgmtExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 2080
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->p2pExecSvc:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/IgniteLogger;)V

    .line 2082
    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->p2pExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 2084
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->igfsExecSvc:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/IgniteLogger;)V

    .line 2086
    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->igfsExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 2088
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->restExecSvc:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 2089
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->restExecSvc:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/IgniteLogger;)V

    .line 2091
    :cond_1
    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->restExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 2093
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->utilityCacheExecSvc:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/IgniteLogger;)V

    .line 2095
    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->utilityCacheExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 2097
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->marshCacheExecSvc:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/IgniteLogger;)V

    .line 2099
    iput-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->marshCacheExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 2100
    return-void
.end method

.method private unregisterFactoryMBean()V
    .locals 8

    .prologue
    .line 2159
    sget-object v5, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->mbeans:Ljava/util/Map;

    monitor-enter v5

    .line 2160
    :try_start_0
    sget-object v4, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->mbeans:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2162
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljavax/management/MBeanServer;Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2165
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/management/MBeanServer;Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;

    iget-object v6, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->containsGrid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2166
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;

    .line 2168
    .local v0, "data":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    sget-boolean v4, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2191
    .end local v0    # "data":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/management/MBeanServer;Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljavax/management/MBeanServer;Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2171
    .restart local v0    # "data":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/management/MBeanServer;Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;>;"
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljavax/management/MBeanServer;Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;>;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->getCounter()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 2173
    :try_start_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/management/MBeanServer;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->getMbean()Ljavax/management/ObjectName;

    move-result-object v6

    invoke-interface {v4, v6}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V

    .line 2175
    iget-object v4, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2176
    iget-object v4, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unregistered MBean: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->getMbean()Ljavax/management/ObjectName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/management/JMException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2182
    :cond_2
    :goto_1
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2178
    :catch_0
    move-exception v1

    .line 2179
    .local v1, "e":Ljavax/management/JMException;
    iget-object v4, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Failed to unregister MBean."

    invoke-static {v4, v6, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2186
    .end local v1    # "e":Ljavax/management/JMException;
    :cond_3
    invoke-virtual {v0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->getCounter()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->setCounter(I)V

    .line 2187
    iget-object v4, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->removeGrid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2191
    .end local v0    # "data":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/management/MBeanServer;Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;>;"
    :cond_4
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2192
    return-void
.end method

.method private static utilitySystemCache(Z)Lorg/apache/ignite/configuration/CacheConfiguration;
    .locals 4
    .param p0, "client"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1929
    if-nez p0, :cond_0

    .line 1930
    new-instance v0, Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;-><init>()V

    .line 1932
    .local v0, "cache":Lorg/apache/ignite/configuration/CacheConfiguration;
    const-string v1, "ignite-sys-cache"

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setName(Ljava/lang/String;)V

    .line 1933
    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->REPLICATED:Lorg/apache/ignite/cache/CacheMode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setCacheMode(Lorg/apache/ignite/cache/CacheMode;)V

    .line 1934
    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicityMode;->TRANSACTIONAL:Lorg/apache/ignite/cache/CacheAtomicityMode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setAtomicityMode(Lorg/apache/ignite/cache/CacheAtomicityMode;)V

    .line 1935
    invoke-virtual {v0, v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->setSwapEnabled(Z)V

    .line 1936
    sget-object v1, Lorg/apache/ignite/cache/CacheRebalanceMode;->SYNC:Lorg/apache/ignite/cache/CacheRebalanceMode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setRebalanceMode(Lorg/apache/ignite/cache/CacheRebalanceMode;)V

    .line 1937
    sget-object v1, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setWriteSynchronizationMode(Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;)V

    .line 1938
    new-instance v1, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    const/16 v2, 0x64

    invoke-direct {v1, v3, v2}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setAffinity(Lorg/apache/ignite/cache/affinity/AffinityFunction;)V

    .line 1939
    sget-object v1, Lorg/apache/ignite/configuration/CacheConfiguration;->ALL_NODES:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setNodeFilter(Lorg/apache/ignite/lang/IgnitePredicate;)V

    .line 1944
    .end local v0    # "cache":Lorg/apache/ignite/configuration/CacheConfiguration;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->name:Ljava/lang/String;

    return-object v0
.end method

.method grid()Lorg/apache/ignite/internal/IgniteKernal;
    .locals 2

    .prologue
    .line 1252
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->starterThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1253
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->awaitQuiet(Ljava/util/concurrent/CountDownLatch;)V

    .line 1255
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid:Lorg/apache/ignite/internal/IgniteKernal;

    return-object v0
.end method

.method public gridx()Lorg/apache/ignite/internal/IgniteKernal;
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid:Lorg/apache/ignite/internal/IgniteKernal;

    return-object v0
.end method

.method public initializeDefaultCacheConfiguration(Lorg/apache/ignite/configuration/IgniteConfiguration;)V
    .locals 18
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1678
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    .line 1680
    .local v3, "cacheCfgs":[Lorg/apache/ignite/configuration/CacheConfiguration;
    sget-object v16, Lorg/apache/ignite/internal/IgniteComponentType;->HADOOP:Lorg/apache/ignite/internal/IgniteComponentType;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/IgniteComponentType;->inClassPath()Z

    move-result v13

    .line 1682
    .local v13, "hasHadoop":Z
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getAtomicConfiguration()Lorg/apache/ignite/configuration/AtomicConfiguration;

    move-result-object v16

    if-eqz v16, :cond_0

    const/4 v12, 0x1

    .line 1684
    .local v12, "hasAtomics":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoverySpi()Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v8, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .line 1688
    .local v8, "clientDisco":Z
    if-eqz v3, :cond_9

    array-length v0, v3

    move/from16 v16, v0

    if-lez v16, :cond_9

    .line 1689
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoverySpi()Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/U;->discoOrdered(Lorg/apache/ignite/spi/discovery/DiscoverySpi;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->relaxDiscoveryOrdered()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1690
    new-instance v16, Lorg/apache/ignite/IgniteCheckedException;

    const-string v17, "Discovery SPI implementation does not support node ordering and cannot be used with cache (use SPI with @GridDiscoverySpiOrderSupport annotation, like GridTcpDiscoverySpi)"

    invoke-direct/range {v16 .. v17}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1682
    .end local v8    # "clientDisco":Z
    .end local v12    # "hasAtomics":Z
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 1694
    .restart local v8    # "clientDisco":Z
    .restart local v12    # "hasAtomics":Z
    :cond_1
    move-object v2, v3

    .local v2, "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    array-length v15, v2

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    if-ge v14, v15, :cond_6

    aget-object v7, v2, v14

    .line 1695
    .local v7, "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v7}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isHadoopSystemCache(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1696
    new-instance v16, Lorg/apache/ignite/IgniteCheckedException;

    const-string v17, "Cache name cannot be \"ignite-hadoop-mr-sys-cache\" because it is reserved for internal purposes."

    invoke-direct/range {v16 .. v17}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1699
    :cond_2
    invoke-virtual {v7}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isAtomicsCache(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1700
    new-instance v16, Lorg/apache/ignite/IgniteCheckedException;

    const-string v17, "Cache name cannot be \"ignite-atomics-sys-cache\" because it is reserved for internal purposes."

    invoke-direct/range {v16 .. v17}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1703
    :cond_3
    invoke-virtual {v7}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isUtilityCache(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1704
    new-instance v16, Lorg/apache/ignite/IgniteCheckedException;

    const-string v17, "Cache name cannot be \"ignite-sys-cache\" because it is reserved for internal purposes."

    invoke-direct/range {v16 .. v17}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1707
    :cond_4
    invoke-virtual {v7}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isMarshallerCache(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1708
    new-instance v16, Lorg/apache/ignite/IgniteCheckedException;

    const-string v17, "Cache name cannot be \"ignite-marshaller-sys-cache\" because it is reserved for internal purposes."

    invoke-direct/range {v16 .. v17}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1694
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1712
    .end local v7    # "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    :cond_6
    const/4 v1, 0x2

    .line 1714
    .local v1, "addCacheCnt":I
    if-eqz v13, :cond_7

    .line 1715
    add-int/lit8 v1, v1, 0x1

    .line 1717
    :cond_7
    if-eqz v12, :cond_8

    .line 1718
    add-int/lit8 v1, v1, 0x1

    .line 1720
    :cond_8
    array-length v0, v3

    move/from16 v16, v0

    add-int v16, v16, v1

    move/from16 v0, v16

    new-array v11, v0, [Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 1722
    .local v11, "copies":[Lorg/apache/ignite/configuration/CacheConfiguration;
    const/4 v9, 0x2

    .line 1724
    .local v9, "cloneIdx":I
    if-eqz v13, :cond_f

    .line 1725
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "cloneIdx":I
    .local v10, "cloneIdx":I
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->hadoopSystemCache()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v16

    aput-object v16, v11, v9

    .line 1727
    :goto_2
    if-eqz v12, :cond_e

    .line 1728
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "cloneIdx":I
    .restart local v9    # "cloneIdx":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getAtomicConfiguration()Lorg/apache/ignite/configuration/AtomicConfiguration;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v8}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->atomicsSystemCache(Lorg/apache/ignite/configuration/AtomicConfiguration;Z)Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v16

    aput-object v16, v11, v10

    .line 1730
    :goto_3
    move-object v2, v3

    array-length v15, v2

    const/4 v14, 0x0

    move v10, v9

    .end local v9    # "cloneIdx":I
    .restart local v10    # "cloneIdx":I
    :goto_4
    if-ge v14, v15, :cond_d

    aget-object v7, v2, v14

    .line 1731
    .restart local v7    # "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "cloneIdx":I
    .restart local v9    # "cloneIdx":I
    new-instance v16, Lorg/apache/ignite/configuration/CacheConfiguration;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lorg/apache/ignite/configuration/CacheConfiguration;-><init>(Ljavax/cache/configuration/CompleteConfiguration;)V

    aput-object v16, v11, v10

    .line 1730
    add-int/lit8 v14, v14, 0x1

    move v10, v9

    .end local v9    # "cloneIdx":I
    .restart local v10    # "cloneIdx":I
    goto :goto_4

    .line 1734
    .end local v1    # "addCacheCnt":I
    .end local v2    # "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v7    # "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v10    # "cloneIdx":I
    .end local v11    # "copies":[Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    :cond_9
    const/4 v4, 0x2

    .line 1736
    .local v4, "cacheCnt":I
    if-eqz v13, :cond_a

    .line 1737
    add-int/lit8 v4, v4, 0x1

    .line 1739
    :cond_a
    if-eqz v12, :cond_b

    .line 1740
    add-int/lit8 v4, v4, 0x1

    .line 1742
    :cond_b
    new-array v11, v4, [Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 1744
    .restart local v11    # "copies":[Lorg/apache/ignite/configuration/CacheConfiguration;
    const/4 v5, 0x2

    .line 1746
    .local v5, "cacheIdx":I
    if-eqz v13, :cond_c

    .line 1747
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "cacheIdx":I
    .local v6, "cacheIdx":I
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->hadoopSystemCache()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v16

    aput-object v16, v11, v5

    move v5, v6

    .line 1749
    .end local v6    # "cacheIdx":I
    .restart local v5    # "cacheIdx":I
    :cond_c
    if-eqz v12, :cond_d

    .line 1750
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getAtomicConfiguration()Lorg/apache/ignite/configuration/AtomicConfiguration;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v8}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->atomicsSystemCache(Lorg/apache/ignite/configuration/AtomicConfiguration;Z)Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v16

    aput-object v16, v11, v5

    .line 1754
    .end local v4    # "cacheCnt":I
    .end local v5    # "cacheIdx":I
    :cond_d
    const/16 v16, 0x0

    invoke-static {v8}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->marshallerSystemCache(Z)Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v17

    aput-object v17, v11, v16

    .line 1755
    const/16 v16, 0x1

    invoke-static {v8}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->utilitySystemCache(Z)Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v17

    aput-object v17, v11, v16

    .line 1757
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setCacheConfiguration([Lorg/apache/ignite/configuration/CacheConfiguration;)V

    .line 1758
    return-void

    .restart local v1    # "addCacheCnt":I
    .restart local v2    # "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    .restart local v10    # "cloneIdx":I
    .restart local v14    # "i$":I
    .restart local v15    # "len$":I
    :cond_e
    move v9, v10

    .end local v10    # "cloneIdx":I
    .restart local v9    # "cloneIdx":I
    goto :goto_3

    :cond_f
    move v10, v9

    .end local v9    # "cloneIdx":I
    .restart local v10    # "cloneIdx":I
    goto :goto_2
.end method

.method declared-synchronized start(Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;)V
    .locals 4
    .param p1, "startCtx"    # Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1308
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->startGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_1

    .line 1310
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->starterThread:Ljava/lang/Thread;

    .line 1312
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->start0(Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1321
    :try_start_2
    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1326
    :goto_0
    monitor-exit p0

    return-void

    .line 1314
    :catch_0
    move-exception v0

    .line 1315
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    if-eqz v1, :cond_0

    .line 1316
    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->stopExecutors(Lorg/apache/ignite/IgniteLogger;)V

    .line 1318
    :cond_0
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1321
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1308
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1325
    :cond_1
    :try_start_5
    iget-object v1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->awaitQuiet(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method state()Lorg/apache/ignite/IgniteState;
    .locals 2

    .prologue
    .line 1273
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->starterThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1274
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->awaitQuiet(Ljava/util/concurrent/CountDownLatch;)V

    .line 1276
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->state:Lorg/apache/ignite/IgniteState;

    return-object v0
.end method

.method stop(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 1985
    sget-boolean v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->startGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1987
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->stop0(Z)V

    .line 1988
    return-void
.end method
