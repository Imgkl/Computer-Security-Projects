.class public Lorg/apache/ignite/cache/CachingProvider;
.super Ljava/lang/Object;
.source "CachingProvider.java"

# interfaces
.implements Ljavax/cache/spi/CachingProvider;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_URI:Ljava/net/URI;

.field public static final DFLT_PROPS:Ljava/util/Properties;


# instance fields
.field private final cacheManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map",
            "<",
            "Ljava/net/URI;",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Lorg/apache/ignite/cache/CacheManager;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const-class v2, Lorg/apache/ignite/cache/CachingProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lorg/apache/ignite/cache/CachingProvider;->$assertionsDisabled:Z

    .line 42
    const/4 v1, 0x0

    .line 45
    .local v1, "uri":Ljava/net/URI;
    :try_start_0
    const-string v2, "config/default-config.xml"

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveIgniteUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 47
    .local v0, "dfltCfgURL":Ljava/net/URL;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 54
    .end local v0    # "dfltCfgURL":Ljava/net/URL;
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 55
    const-string v2, "ignite://default"

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 57
    :cond_1
    sput-object v1, Lorg/apache/ignite/cache/CachingProvider;->DEFAULT_URI:Ljava/net/URI;

    .line 61
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sput-object v2, Lorg/apache/ignite/cache/CachingProvider;->DFLT_PROPS:Ljava/util/Properties;

    return-void

    .line 34
    .end local v1    # "uri":Ljava/net/URI;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 50
    .restart local v1    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/CachingProvider;->cacheManagers:Ljava/util/Map;

    return-void
.end method

.method private closeManagers(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Lorg/apache/ignite/cache/CacheManager;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "futs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 215
    .local v0, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cache/CacheManager;

    .line 217
    .local v2, "mgr":Lorg/apache/ignite/cache/CacheManager;
    invoke-virtual {v2}, Lorg/apache/ignite/cache/CacheManager;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    .end local v2    # "mgr":Lorg/apache/ignite/cache/CacheManager;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 223
    .end local v0    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "futs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    iget-object v4, p0, Lorg/apache/ignite/cache/CachingProvider;->cacheManagers:Ljava/util/Map;

    monitor-enter v4

    .line 186
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/cache/CachingProvider;->cacheManagers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 187
    .local v2, "uriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 190
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "uriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 189
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/cache/CachingProvider;->cacheManagers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 190
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    invoke-direct {p0, v0}, Lorg/apache/ignite/cache/CachingProvider;->closeManagers(Ljava/util/Collection;)V

    .line 193
    return-void
.end method

.method public close(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "clsLdr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 199
    iget-object v2, p0, Lorg/apache/ignite/cache/CachingProvider;->cacheManagers:Ljava/util/Map;

    monitor-enter v2

    .line 200
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/cache/CachingProvider;->cacheManagers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 201
    .local v0, "uriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    monitor-exit v2

    .line 203
    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 201
    .end local v0    # "uriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 206
    .restart local v0    # "uriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/cache/CachingProvider;->closeManagers(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public close(Ljava/net/URI;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "clsLdr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 252
    iget-object v5, p0, Lorg/apache/ignite/cache/CachingProvider;->cacheManagers:Ljava/util/Map;

    monitor-enter v5

    .line 253
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/cache/CachingProvider;->cacheManagers:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 255
    .local v3, "uriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    if-nez v3, :cond_1

    .line 256
    monitor-exit v5

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 259
    .local v0, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    if-eqz v0, :cond_0

    .line 265
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cache/CacheManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    .local v2, "mgr":Lorg/apache/ignite/cache/CacheManager;
    invoke-virtual {v2}, Lorg/apache/ignite/cache/CacheManager;->close()V

    goto :goto_0

    .line 259
    .end local v0    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    .end local v2    # "mgr":Lorg/apache/ignite/cache/CacheManager;
    .end local v3    # "uriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 267
    .restart local v0    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    .restart local v3    # "uriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    :catch_0
    move-exception v1

    .line 268
    .local v1, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public findManager(Lorg/apache/ignite/Ignite;)Ljavax/cache/CacheManager;
    .locals 8
    .param p1, "ignite"    # Lorg/apache/ignite/Ignite;

    .prologue
    .line 158
    iget-object v7, p0, Lorg/apache/ignite/cache/CachingProvider;->cacheManagers:Ljava/util/Map;

    monitor-enter v7

    .line 159
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/cache/CachingProvider;->cacheManagers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 160
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 161
    .local v1, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 162
    sget-boolean v6, Lorg/apache/ignite/cache/CachingProvider;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isFailed()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 176
    .end local v1    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 165
    .restart local v1    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/cache/CacheManager;

    .line 167
    .local v5, "mgr":Lorg/apache/ignite/cache/CacheManager;
    const-class v6, Lorg/apache/ignite/Ignite;

    invoke-virtual {v5, v6}, Lorg/apache/ignite/cache/CacheManager;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-ne v6, p1, :cond_1

    .line 168
    :try_start_2
    monitor-exit v7

    .line 178
    .end local v1    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    .end local v5    # "mgr":Lorg/apache/ignite/cache/CacheManager;
    :goto_0
    return-object v5

    .line 170
    .restart local v1    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 176
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    :cond_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getCacheManager()Ljavax/cache/CacheManager;
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CachingProvider;->getDefaultURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/cache/CachingProvider;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/cache/CachingProvider;->getCacheManager(Ljava/net/URI;Ljava/lang/ClassLoader;)Ljavax/cache/CacheManager;

    move-result-object v0

    return-object v0
.end method

.method public getCacheManager(Ljava/net/URI;Ljava/lang/ClassLoader;)Ljavax/cache/CacheManager;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "clsLdr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CachingProvider;->getDefaultProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/cache/CachingProvider;->getCacheManager(Ljava/net/URI;Ljava/lang/ClassLoader;Ljava/util/Properties;)Ljavax/cache/CacheManager;

    move-result-object v0

    return-object v0
.end method

.method public getCacheManager(Ljava/net/URI;Ljava/lang/ClassLoader;Ljava/util/Properties;)Ljavax/cache/CacheManager;
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "clsLdr"    # Ljava/lang/ClassLoader;
    .param p3, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/CacheException;
        }
    .end annotation

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CachingProvider;->getDefaultURI()Ljava/net/URI;

    move-result-object p1

    .line 72
    :cond_0
    if-nez p2, :cond_1

    .line 73
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CachingProvider;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 77
    :cond_1
    const/4 v3, 0x0

    .line 81
    .local v3, "needStartMgr":Z
    iget-object v6, p0, Lorg/apache/ignite/cache/CachingProvider;->cacheManagers:Ljava/util/Map;

    monitor-enter v6

    .line 82
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/cache/CachingProvider;->cacheManagers:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 84
    .local v4, "uriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    if-nez v4, :cond_2

    .line 85
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "uriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 87
    .restart local v4    # "uriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    iget-object v5, p0, Lorg/apache/ignite/cache/CachingProvider;->cacheManagers:Ljava/util/Map;

    invoke-interface {v5, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_2
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 92
    .local v1, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    if-nez v1, :cond_3

    .line 93
    const/4 v3, 0x1

    .line 95
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .end local v1    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    invoke-direct {v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 97
    .restart local v1    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-eqz v3, :cond_4

    .line 103
    :try_start_1
    new-instance v2, Lorg/apache/ignite/cache/CacheManager;

    invoke-direct {v2, p1, p0, p2, p3}, Lorg/apache/ignite/cache/CacheManager;-><init>(Ljava/net/URI;Lorg/apache/ignite/cache/CachingProvider;Ljava/lang/ClassLoader;Ljava/util/Properties;)V

    .line 105
    .local v2, "mgr":Lorg/apache/ignite/cache/CacheManager;
    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    .end local v2    # "mgr":Lorg/apache/ignite/cache/CacheManager;
    :goto_0
    return-object v2

    .line 99
    .end local v1    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    .end local v4    # "uriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 109
    .restart local v1    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    .restart local v4    # "uriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v6, p0, Lorg/apache/ignite/cache/CachingProvider;->cacheManagers:Ljava/util/Map;

    monitor-enter v6

    .line 111
    :try_start_3
    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 116
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 112
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 121
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    :try_start_5
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/cache/CacheManager;
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v5

    goto :goto_0

    .line 123
    :catch_1
    move-exception v0

    .line 124
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public getDefaultClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lorg/apache/ignite/cache/CachingProvider;->DFLT_PROPS:Ljava/util/Properties;

    return-object v0
.end method

.method public getDefaultURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lorg/apache/ignite/cache/CachingProvider;->DEFAULT_URI:Ljava/net/URI;

    return-object v0
.end method

.method public isSupported(Ljavax/cache/configuration/OptionalFeature;)Z
    .locals 1
    .param p1, "optionalFeature"    # Ljavax/cache/configuration/OptionalFeature;

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method protected removeClosedManager(Lorg/apache/ignite/cache/CacheManager;)V
    .locals 7
    .param p1, "mgr"    # Lorg/apache/ignite/cache/CacheManager;

    .prologue
    .line 229
    iget-object v5, p0, Lorg/apache/ignite/cache/CachingProvider;->cacheManagers:Ljava/util/Map;

    monitor-enter v5

    .line 230
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/cache/CachingProvider;->cacheManagers:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/cache/CacheManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 232
    .local v3, "uriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/cache/CacheManager;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 234
    .local v2, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isFailed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 236
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/CacheManager;

    .line 238
    .local v0, "cachedManager":Lorg/apache/ignite/cache/CacheManager;
    if-ne v0, p1, :cond_0

    .line 239
    invoke-virtual {p1}, Lorg/apache/ignite/cache/CacheManager;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    .end local v0    # "cachedManager":Lorg/apache/ignite/cache/CacheManager;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v5

    .line 246
    return-void

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    goto :goto_0

    .line 245
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;"
    .end local v3    # "uriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/cache/CacheManager;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method
