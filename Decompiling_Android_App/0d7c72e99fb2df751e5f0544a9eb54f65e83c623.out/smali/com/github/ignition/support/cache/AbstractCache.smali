.class public abstract Lcom/github/ignition/support/cache/AbstractCache;
.super Ljava/lang/Object;
.source "AbstractCache.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyT:",
        "Ljava/lang/Object;",
        "ValT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TKeyT;TValT;>;"
    }
.end annotation


# static fields
.field public static final DISK_CACHE_INTERNAL:I = 0x0

.field public static final DISK_CACHE_SDCARD:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Droid-Fu[CacheFu]"


# instance fields
.field private cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TKeyT;TValT;>;"
        }
    .end annotation
.end field

.field protected diskCacheDirectory:Ljava/lang/String;

.field private expirationInMinutes:J

.field private isDiskCacheEnabled:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJI)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initialCapacity"    # I
    .param p3, "expirationInMinutes"    # J
    .param p5, "maxConcurrentThreads"    # I

    .prologue
    .line 92
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/github/ignition/support/cache/AbstractCache;->name:Ljava/lang/String;

    .line 95
    iput-wide p3, p0, Lcom/github/ignition/support/cache/AbstractCache;->expirationInMinutes:J

    .line 97
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    .line 98
    .local v0, "mapMaker":Lcom/google/common/collect/MapMaker;
    invoke-virtual {v0, p2}, Lcom/google/common/collect/MapMaker;->initialCapacity(I)Lcom/google/common/collect/MapMaker;

    .line 99
    const-wide/16 v2, 0x3c

    mul-long/2addr v2, p3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/collect/MapMaker;->expiration(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    .line 100
    invoke-virtual {v0, p5}, Lcom/google/common/collect/MapMaker;->concurrencyLevel(I)Lcom/google/common/collect/MapMaker;

    .line 101
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->softValues()Lcom/google/common/collect/MapMaker;

    .line 102
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iput-object v1, p0, Lcom/github/ignition/support/cache/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 103
    return-void
.end method

.method private cacheToDisk(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyT;TValT;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    .local p1, "key":Ljava/lang/Object;, "TKeyT;"
    .local p2, "value":Ljava/lang/Object;, "TValT;"
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/github/ignition/support/cache/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/github/ignition/support/cache/AbstractCache;->getFileNameForKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 231
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 233
    invoke-virtual {p0, v1, p2}, Lcom/github/ignition/support/cache/AbstractCache;->writeValueToDisk(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 237
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 238
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getFileForKey(Ljava/lang/Object;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyT;)",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    .local p1, "key":Ljava/lang/Object;, "TKeyT;"
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/github/ignition/support/cache/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/github/ignition/support/cache/AbstractCache;->getFileNameForKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private sanitizeDiskCache()V
    .locals 12

    .prologue
    .line 109
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    invoke-virtual {p0}, Lcom/github/ignition/support/cache/AbstractCache;->getCachedFiles()Ljava/util/List;

    move-result-object v2

    .line 110
    .local v2, "cachedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 112
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 113
    .local v6, "lastModified":J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 114
    .local v5, "now":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/32 v10, 0xea60

    div-long v0, v8, v10

    .line 116
    .local v0, "ageInMinutes":J
    iget-wide v8, p0, Lcom/github/ignition/support/cache/AbstractCache;->expirationInMinutes:J

    cmp-long v8, v0, v8

    if-ltz v8, :cond_0

    .line 117
    iget-object v8, p0, Lcom/github/ignition/support/cache/AbstractCache;->name:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DISK cache expiration for file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 121
    .end local v0    # "ageInMinutes":J
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "now":Ljava/util/Date;
    .end local v6    # "lastModified":J
    :cond_1
    return-void
.end method

.method private setRootDir(Ljava/lang/String;)V
    .locals 4
    .param p1, "rootDir"    # Ljava/lang/String;

    .prologue
    .line 179
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cachefu/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/ignition/support/cache/AbstractCache;->name:Ljava/lang/String;

    const-string v2, "\\s"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/ignition/support/IgnitedStrings;->underscore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    .line 181
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 439
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->isDiskCacheEnabled:Z

    invoke-virtual {p0, v0}, Lcom/github/ignition/support/cache/AbstractCache;->clear(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear(Z)V
    .locals 7
    .param p1, "removeFromDisk"    # Z

    .prologue
    .line 450
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/github/ignition/support/cache/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 452
    if-eqz p1, :cond_1

    iget-boolean v5, p0, Lcom/github/ignition/support/cache/AbstractCache;->isDiskCacheEnabled:Z

    if-eqz v5, :cond_1

    .line 453
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/github/ignition/support/cache/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 454
    .local v1, "cachedFiles":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 463
    .end local v1    # "cachedFiles":[Ljava/io/File;
    :goto_0
    monitor-exit p0

    return-void

    .line 457
    .restart local v1    # "cachedFiles":[Ljava/io/File;
    :cond_0
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    :try_start_1
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 458
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 457
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 462
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "cachedFiles":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    const-string v5, "Droid-Fu[CacheFu]"

    const-string v6, "Cache cleared"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 323
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/ignition/support/cache/AbstractCache;->containsKeyOnDisk(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsKeyInMemory(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 334
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsKeyOnDisk(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 347
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->isDiskCacheEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/github/ignition/support/cache/AbstractCache;->getFileForKey(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 355
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableDiskCache(Landroid/content/Context;I)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageDevice"    # I

    .prologue
    .line 134
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 136
    .local v0, "appContext":Landroid/content/Context;
    const/4 v5, 0x0

    .line 137
    .local v5, "rootDir":Ljava/lang/String;
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    const-string v6, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Android/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/cache"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    :goto_0
    invoke-direct {p0, v5}, Lcom/github/ignition/support/cache/AbstractCache;->setRootDir(Ljava/lang/String;)V

    .line 153
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/github/ignition/support/cache/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v4, "outFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 155
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/github/ignition/support/cache/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    const-string v7, ".nomedia"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v3, "nomedia":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v3    # "nomedia":Ljava/io/File;
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    iput-boolean v6, p0, Lcom/github/ignition/support/cache/AbstractCache;->isDiskCacheEnabled:Z

    .line 165
    iget-boolean v6, p0, Lcom/github/ignition/support/cache/AbstractCache;->isDiskCacheEnabled:Z

    if-nez v6, :cond_3

    .line 166
    const-string v6, "Droid-Fu[CacheFu]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed creating disk cache directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/github/ignition/support/cache/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_2
    iget-boolean v6, p0, Lcom/github/ignition/support/cache/AbstractCache;->isDiskCacheEnabled:Z

    .end local v4    # "outFile":Ljava/io/File;
    :goto_3
    return v6

    .line 143
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 145
    .local v2, "internalCacheDir":Ljava/io/File;
    if-nez v2, :cond_2

    .line 146
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/github/ignition/support/cache/AbstractCache;->isDiskCacheEnabled:Z

    goto :goto_3

    .line 148
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 158
    .end local v2    # "internalCacheDir":Ljava/io/File;
    .restart local v3    # "nomedia":Ljava/io/File;
    .restart local v4    # "outFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "Droid-Fu[CacheFu]"

    const-string v7, "Failed creating .nomedia file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 168
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "nomedia":Ljava/io/File;
    :cond_3
    iget-object v6, p0, Lcom/github/ignition/support/cache/AbstractCache;->name:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enabled write through to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/github/ignition/support/cache/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v6, p0, Lcom/github/ignition/support/cache/AbstractCache;->name:Ljava/lang/String;

    const-string v7, "sanitize DISK cache"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/github/ignition/support/cache/AbstractCache;->sanitizeDiskCache()V

    goto :goto_2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TKeyT;TValT;>;>;"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    iget-object v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "elementKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TValT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    const/4 v9, 0x0

    .line 256
    monitor-enter p0

    move-object v4, p1

    .line 257
    .local v4, "key":Ljava/lang/Object;, "TKeyT;"
    :try_start_0
    iget-object v10, p0, Lcom/github/ignition/support/cache/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 258
    .local v8, "value":Ljava/lang/Object;, "TValT;"
    if-eqz v8, :cond_1

    .line 260
    iget-object v9, p0, Lcom/github/ignition/support/cache/AbstractCache;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MEM cache hit for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v8

    .line 295
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 265
    :cond_1
    :try_start_1
    invoke-direct {p0, v4}, Lcom/github/ignition/support/cache/AbstractCache;->getFileForKey(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v3

    .line 266
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 268
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 269
    .local v6, "lastModified":J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 270
    .local v5, "now":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    const-wide/32 v12, 0xea60

    div-long v0, v10, v12

    .line 272
    .local v0, "ageInMinutes":J
    iget-wide v10, p0, Lcom/github/ignition/support/cache/AbstractCache;->expirationInMinutes:J

    cmp-long v10, v0, v10

    if-ltz v10, :cond_2

    .line 273
    iget-object v10, p0, Lcom/github/ignition/support/cache/AbstractCache;->name:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DISK cache expiration for file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 256
    .end local v0    # "ageInMinutes":J
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "now":Ljava/util/Date;
    .end local v6    # "lastModified":J
    .end local v8    # "value":Ljava/lang/Object;, "TValT;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 279
    .restart local v0    # "ageInMinutes":J
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "now":Ljava/util/Date;
    .restart local v6    # "lastModified":J
    .restart local v8    # "value":Ljava/lang/Object;, "TValT;"
    :cond_2
    :try_start_2
    iget-object v10, p0, Lcom/github/ignition/support/cache/AbstractCache;->name:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DISK cache hit for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/github/ignition/support/cache/AbstractCache;->readValueFromDisk(Ljava/io/File;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 287
    if-eqz v8, :cond_0

    .line 290
    :try_start_4
    iget-object v9, p0, Lcom/github/ignition/support/cache/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v9, v4, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v8

    .line 291
    goto :goto_0

    .line 282
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public getCachedFiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/github/ignition/support/cache/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 414
    .local v0, "cachedFiles":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 415
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 417
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getDiskCacheDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    iget-object v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getFileNameForKey(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public isDiskCacheEnabled()Z
    .locals 1

    .prologue
    .line 403
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    iget-boolean v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->isDiskCacheEnabled:Z

    return v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 399
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TKeyT;>;"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    iget-object v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyT;TValT;)TValT;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    .local p1, "key":Ljava/lang/Object;, "TKeyT;"
    .local p2, "value":Ljava/lang/Object;, "TValT;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->isDiskCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/github/ignition/support/cache/AbstractCache;->cacheToDisk(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TKeyT;+TValT;>;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TKeyT;+TValT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract readValueFromDisk(Ljava/io/File;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TValT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TValT;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/github/ignition/support/cache/AbstractCache;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 365
    .local v1, "value":Ljava/lang/Object;, "TValT;"
    iget-boolean v2, p0, Lcom/github/ignition/support/cache/AbstractCache;->isDiskCacheEnabled:Z

    if-eqz v2, :cond_0

    .line 366
    invoke-direct {p0, p1}, Lcom/github/ignition/support/cache/AbstractCache;->getFileForKey(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    .line 367
    .local v0, "cachedValue":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    .end local v0    # "cachedValue":Ljava/io/File;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 363
    .end local v1    # "value":Ljava/lang/Object;, "TValT;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public removeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TValT;"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    iget-object v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDiskCacheEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "rootDir"    # Ljava/lang/String;

    .prologue
    .line 427
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 428
    invoke-direct {p0, p1}, Lcom/github/ignition/support/cache/AbstractCache;->setRootDir(Ljava/lang/String;)V

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->isDiskCacheEnabled:Z

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->isDiskCacheEnabled:Z

    goto :goto_0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 395
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TValT;>;"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "this":Lcom/github/ignition/support/cache/AbstractCache;, "Lcom/github/ignition/support/cache/AbstractCache<TKeyT;TValT;>;"
    iget-object v0, p0, Lcom/github/ignition/support/cache/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected abstract writeValueToDisk(Ljava/io/File;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TValT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
