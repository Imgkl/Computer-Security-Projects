.class Lcom/julysystems/appx/AppXCache;
.super Ljava/lang/Object;
.source "AppXCache.java"


# static fields
.field private static final CACHE_INDEX_FILE:Ljava/lang/String; = "JulyCacheIndex"

.field private static final TAG:Ljava/lang/String; = "APPX_CACHE"

.field static cachedItems:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/julysystems/appx/AppXCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Z

.field private static volatile isDirty:Z

.field private static volatile lastSavedAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXCache;->cachedItems:Ljava/util/LinkedHashMap;

    .line 28
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/julysystems/appx/AppXCache;->lastSavedAt:J

    .line 29
    sput-boolean v2, Lcom/julysystems/appx/AppXCache;->initialized:Z

    .line 30
    sput-boolean v2, Lcom/julysystems/appx/AppXCache;->isDirty:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addToCache(Ljava/lang/String;[BI)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "cacheDuration"    # I

    .prologue
    .line 70
    sget-boolean v3, Lcom/julysystems/appx/AppXConstants;->isCachingEnabled:Z

    if-nez v3, :cond_0

    .line 83
    :goto_0
    return-void

    .line 73
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    array-length v3, p1

    if-lez v3, :cond_1

    if-lez p2, :cond_1

    .line 74
    invoke-static {p0}, Lcom/julysystems/appx/AppXCache;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "cleanUrl":Ljava/lang/String;
    new-instance v0, Lcom/julysystems/appx/AppXCacheItem;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, p2, v3}, Lcom/julysystems/appx/AppXCacheItem;-><init>(Ljava/lang/String;[BIZ)V

    .line 76
    .local v0, "cacheItem":Lcom/julysystems/appx/AppXCacheItem;
    sget-object v3, Lcom/julysystems/appx/AppXCache;->cachedItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v3, 0x1

    sput-boolean v3, Lcom/julysystems/appx/AppXCache;->isDirty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "cacheItem":Lcom/julysystems/appx/AppXCacheItem;
    .end local v1    # "cleanUrl":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/julysystems/appx/AppXCache;->saveToPersistentStorage()V

    goto :goto_0

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "APPX_CACHE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception occured while trying to add to cache. \n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static addToPermanentCache(Ljava/lang/String;[BI)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "cacheDuration"    # I

    .prologue
    .line 58
    sget-boolean v2, Lcom/julysystems/appx/AppXConstants;->isCachingEnabled:Z

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v2, p1

    if-lez v2, :cond_0

    if-lez p2, :cond_0

    .line 62
    invoke-static {p0}, Lcom/julysystems/appx/AppXCache;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "cleanUrl":Ljava/lang/String;
    new-instance v2, Lcom/julysystems/appx/AppXCacheItem;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, p2, v3}, Lcom/julysystems/appx/AppXCacheItem;-><init>(Ljava/lang/String;[BIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v0    # "cleanUrl":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "APPX_CACHE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception occured while trying to add to permanent cache. \n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static clearAllCache()V
    .locals 4

    .prologue
    .line 153
    :try_start_0
    sget-object v1, Lcom/julysystems/appx/AppX;->historyUrls:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 154
    const/4 v1, 0x0

    sput-object v1, Lcom/julysystems/appx/AppXUtils;->prevUrl:Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/julysystems/appx/AppXCache;->clearDiskCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 157
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "APPX_CACHE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while clearing cache. \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static clearDiskCache()V
    .locals 4

    .prologue
    .line 138
    :try_start_0
    sget-object v2, Lcom/julysystems/appx/AppXCache;->cachedItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 139
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/julysystems/appx/AppXCacheItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 146
    :goto_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/julysystems/appx/AppXCache;->isDirty:Z

    .line 147
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/julysystems/appx/AppXCache;->lastSavedAt:J

    .line 148
    invoke-static {}, Lcom/julysystems/appx/AppXCache;->saveToPersistentStorage()V

    .line 149
    return-void

    .line 140
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/julysystems/appx/AppXCacheItem;

    .line 141
    .local v0, "cache":Lcom/julysystems/appx/AppXCacheItem;
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXCacheItem;->delete()V

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 144
    .end local v0    # "cache":Lcom/julysystems/appx/AppXCacheItem;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected static getCleanUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 163
    :try_start_0
    const-string v3, ";jsessionid="

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 164
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    .local v0, "cleanURL":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    add-int/lit8 v3, v2, 0x20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 173
    .end local v0    # "cleanURL":Ljava/lang/StringBuffer;
    .end local v2    # "pos":I
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 170
    .restart local p0    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "APPX_CACHE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception occured while trying to clean the url \n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static getFromCache(Ljava/lang/String;)Lcom/julysystems/appx/AppXCacheItem;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    invoke-static {p0}, Lcom/julysystems/appx/AppXCache;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "cleanUrl":Ljava/lang/String;
    sget-object v3, Lcom/julysystems/appx/AppXCache;->cachedItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/julysystems/appx/AppXCacheItem;

    .line 89
    .local v0, "cacheItem":Lcom/julysystems/appx/AppXCacheItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXCacheItem;->hasExpired()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXCacheItem;->delete()V

    .line 91
    sget-object v3, Lcom/julysystems/appx/AppXCache;->cachedItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const/4 v3, 0x1

    sput-boolean v3, Lcom/julysystems/appx/AppXCache;->isDirty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/4 v0, 0x0

    .line 100
    .end local v0    # "cacheItem":Lcom/julysystems/appx/AppXCacheItem;
    .end local v1    # "cleanUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "APPX_CACHE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception occured while trying to get from cache. \n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/julysystems/appx/AppXCache;->saveToPersistentStorage()V

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static init()V
    .locals 9

    .prologue
    .line 32
    sget-boolean v7, Lcom/julysystems/appx/AppXCache;->initialized:Z

    if-nez v7, :cond_2

    .line 34
    :try_start_0
    sget-object v7, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    const-string v8, "JulyCacheIndex"

    invoke-virtual {v7, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 35
    .local v5, "fis":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    const/16 v8, 0x1000

    invoke-direct {v7, v5, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    .local v2, "dIn":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 37
    .local v1, "count":I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v7

    if-lez v7, :cond_0

    .line 38
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 39
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_1

    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v7

    if-gtz v7, :cond_3

    .line 46
    :cond_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    .end local v1    # "count":I
    .end local v2    # "dIn":Ljava/io/DataInputStream;
    .end local v6    # "i":I
    :goto_1
    const/4 v7, 0x0

    sput-boolean v7, Lcom/julysystems/appx/AppXCache;->isDirty:Z

    .line 53
    const/4 v7, 0x1

    sput-boolean v7, Lcom/julysystems/appx/AppXCache;->initialized:Z

    .line 55
    :cond_2
    return-void

    .line 40
    .restart local v1    # "count":I
    .restart local v2    # "dIn":Ljava/io/DataInputStream;
    .restart local v6    # "i":I
    :cond_3
    :try_start_1
    new-instance v0, Lcom/julysystems/appx/AppXCacheItem;

    invoke-direct {v0, v2}, Lcom/julysystems/appx/AppXCacheItem;-><init>(Ljava/io/DataInputStream;)V

    .line 41
    .local v0, "cacheItem":Lcom/julysystems/appx/AppXCacheItem;
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXCacheItem;->hasExpired()Z

    move-result v7

    if-nez v7, :cond_4

    .line 42
    sget-object v7, Lcom/julysystems/appx/AppXCache;->cachedItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXCacheItem;->getCleanUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 44
    :cond_4
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXCacheItem;->delete()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 47
    .end local v0    # "cacheItem":Lcom/julysystems/appx/AppXCacheItem;
    .end local v1    # "count":I
    .end local v2    # "dIn":Ljava/io/DataInputStream;
    .end local v6    # "i":I
    :catch_0
    move-exception v4

    .line 48
    .local v4, "e1":Ljava/io/FileNotFoundException;
    const-string v7, "APPX_CACHE"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 49
    .end local v4    # "e1":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 50
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "APPX_CACHE"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static saveToPersistentStorage()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1388

    const/4 v10, 0x0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/julysystems/appx/AppXCache;->lastSavedAt:J

    sub-long/2addr v6, v8

    cmp-long v5, v6, v12

    if-ltz v5, :cond_0

    sget-boolean v5, Lcom/julysystems/appx/AppXCache;->isDirty:Z

    if-nez v5, :cond_1

    .line 134
    .local v3, "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 106
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    sput-boolean v10, Lcom/julysystems/appx/AppXCache;->isDirty:Z

    .line 108
    :try_start_0
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    const-string v6, "JulyCacheIndex"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 109
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x1000

    invoke-direct {v5, v3, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 110
    .local v1, "dOut":Ljava/io/DataOutputStream;
    sget-object v5, Lcom/julysystems/appx/AppXCache;->cachedItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :try_start_1
    sget-object v5, Lcom/julysystems/appx/AppXCache;->cachedItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 113
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/julysystems/appx/AppXCacheItem;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-nez v5, :cond_2

    .line 125
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/julysystems/appx/AppXCache;->lastSavedAt:J

    sub-long/2addr v6, v8

    cmp-long v5, v6, v12

    if-ltz v5, :cond_0

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/julysystems/appx/AppXCache;->lastSavedAt:J

    .line 128
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 129
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 130
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 131
    .end local v1    # "dOut":Ljava/io/DataOutputStream;
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/julysystems/appx/AppXCacheItem;>;"
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "APPX_CACHE"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception occured while trying to save cache to disk \n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dOut":Ljava/io/DataOutputStream;
    .restart local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/julysystems/appx/AppXCacheItem;>;"
    :cond_2
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/julysystems/appx/AppXCacheItem;

    .line 115
    .local v0, "cacheItem":Lcom/julysystems/appx/AppXCacheItem;
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXCacheItem;->hasExpired()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/julysystems/appx/AppXCache;->cachedItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    const/16 v6, 0xc8

    if-le v5, v6, :cond_4

    .line 116
    :cond_3
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXCacheItem;->delete()V

    .line 117
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 122
    .end local v0    # "cacheItem":Lcom/julysystems/appx/AppXCacheItem;
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/julysystems/appx/AppXCacheItem;>;"
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/util/ConcurrentModificationException;
    goto/16 :goto_0

    .line 119
    .end local v2    # "e":Ljava/util/ConcurrentModificationException;
    .restart local v0    # "cacheItem":Lcom/julysystems/appx/AppXCacheItem;
    .restart local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/julysystems/appx/AppXCacheItem;>;"
    :cond_4
    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXCacheItem;->writeItem(Ljava/io/DataOutputStream;)V
    :try_end_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
