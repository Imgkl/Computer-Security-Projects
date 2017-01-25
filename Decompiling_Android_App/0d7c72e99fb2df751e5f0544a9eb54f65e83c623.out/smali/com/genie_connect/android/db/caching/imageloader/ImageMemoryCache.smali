.class Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;
.super Ljava/lang/Object;
.source "ImageMemoryCache.java"


# static fields
.field private static sCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sLockObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->sLockObject:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;Ljava/lang/ref/SoftReference;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "bitmap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-static {}, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->getInstance()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->getInstance()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    return-void
.end method

.method public static get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {}, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->getInstance()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->getInstance()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getInstance()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->sCache:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 110
    sget-object v1, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->sLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->sCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->sCache:Ljava/util/Map;

    .line 114
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_1
    sget-object v0, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->sCache:Ljava/util/Map;

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearMemory(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "recycle"    # Z

    .prologue
    .line 76
    invoke-static {}, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->getInstance()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->getInstance()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 78
    invoke-static {}, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->getInstance()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 79
    .local v0, "sr":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-static {}, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->getInstance()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 87
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 90
    .end local v0    # "sr":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_1
    return-void
.end method

.method public clearMemory(Ljava/util/List;Z)V
    .locals 3
    .param p2, "recycle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->clearMemory(Ljava/lang/String;Z)V

    goto :goto_0

    .line 49
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public clearMemory(Z)V
    .locals 4
    .param p1, "recycle"    # Z

    .prologue
    .line 53
    invoke-static {}, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->getInstance()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 57
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 59
    .local v1, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 61
    .local v2, "sr":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 62
    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->clear()V

    .line 68
    const/4 v2, 0x0

    goto :goto_0

    .line 71
    .end local v1    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    .end local v2    # "sr":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_2
    invoke-static {}, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->getInstance()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 72
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 73
    return-void
.end method
