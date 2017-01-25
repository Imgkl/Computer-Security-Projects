.class public Lcom/genie_connect/android/db/caching/PersistentStringCache;
.super Ljava/lang/Object;
.source "PersistentStringCache.java"


# static fields
.field private static final CACHE_DIR_NAME:Ljava/lang/String; = "psc"

.field private static final DAYS_BEFORE_DELETING_CACHE_FILES:I = 0x7

.field private static final DEFAULT_GROUP:Ljava/lang/String; = "default"

.field private static final ENABLE_COMPRESSION:Z = true

.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "psc_"

.field private static mInstance:Lcom/genie_connect/android/db/caching/PersistentStringCache;

.field private static final mLockObject:Ljava/lang/Object;


# instance fields
.field private final mCacheBaseDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mLockObject:Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mInstance:Lcom/genie_connect/android/db/caching/PersistentStringCache;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "^ PSC: New PSC"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 61
    const-string v0, "psc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mCacheBaseDir:Ljava/io/File;

    .line 62
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mCacheBaseDir:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->deleteFilesOlderThanNdays(ILjava/io/File;)V

    .line 64
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mCacheBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mCacheBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 67
    :cond_0
    return-void
.end method

.method private static constructFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 197
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "psc_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createNecessaryFolders(Ljava/lang/String;)Z
    .locals 3
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p1}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getCleanGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "folderName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mCacheBaseDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .local v1, "groupFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    return v2
.end method

.method private delete(Ljava/io/File;)V
    .locals 6
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 92
    .local v1, "c":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->delete(Ljava/io/File;)V

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "c":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ PSC: Deleted file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 103
    :cond_1
    :goto_1
    return-void

    .line 99
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ PSC: Could not delete file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private deleteFilesOlderThanNdays(ILjava/io/File;)V
    .locals 14
    .param p1, "daysBack"    # I
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    int-to-long v10, p1

    const-wide/16 v12, 0x18

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    sub-long v6, v8, v10

    .line 108
    .local v6, "purgeTime":J
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 110
    .local v4, "list":[Ljava/io/File;
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 111
    .local v1, "c":Ljava/io/File;
    invoke-direct {p0, p1, v1}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->deleteFilesOlderThanNdays(ILjava/io/File;)V

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "c":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "list":[Ljava/io/File;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-gez v5, :cond_1

    .line 115
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ PSC: Deleted stale file: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 122
    :cond_1
    :goto_1
    return-void

    .line 118
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ PSC: Could not delete stale file: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getCleanGroupName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "group"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "default"

    goto :goto_0
.end method

.method private getFileHandleSafely(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->createNecessaryFolders(Ljava/lang/String;)Z

    .line 168
    invoke-static {p1}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getCleanGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "cleanGroupName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mCacheBaseDir:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .local v2, "groupFolder":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->constructFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    .local v1, "file":Ljava/io/File;
    return-object v1
.end method

.method private static getHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {p0}, Lcom/genie_connect/common/utils/crypt/HashHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/caching/PersistentStringCache;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    sget-object v0, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mInstance:Lcom/genie_connect/android/db/caching/PersistentStringCache;

    if-nez v0, :cond_1

    .line 214
    sget-object v1, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    sget-object v0, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mInstance:Lcom/genie_connect/android/db/caching/PersistentStringCache;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/genie_connect/android/db/caching/PersistentStringCache;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/db/caching/PersistentStringCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mInstance:Lcom/genie_connect/android/db/caching/PersistentStringCache;

    .line 218
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_1
    sget-object v0, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mInstance:Lcom/genie_connect/android/db/caching/PersistentStringCache;

    return-object v0

    .line 218
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 70
    sget-object v2, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mCacheBaseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    return-void

    .line 74
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mCacheBaseDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->delete(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ PSC: Error Clearing cache: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public deleteGroup(Ljava/lang/String;)V
    .locals 10
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 125
    sget-object v8, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mLockObject:Ljava/lang/Object;

    monitor-enter v8

    .line 126
    :try_start_0
    iget-object v7, p0, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mCacheBaseDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    monitor-exit v8

    .line 143
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {p1}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getCleanGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "cleanGroupName":Ljava/lang/String;
    iget-object v7, p0, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mCacheBaseDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 130
    .local v6, "list":[Ljava/io/File;
    move-object v0, v6

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 131
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 133
    :try_start_1
    invoke-direct {p0, v3}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->delete(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .end local v3    # "f":Ljava/io/File;
    :cond_1
    :goto_2
    :try_start_2
    monitor-exit v8

    goto :goto_0

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "cleanGroupName":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "list":[Ljava/io/File;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 135
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v1    # "cleanGroupName":Ljava/lang/String;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "list":[Ljava/io/File;
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ PSC: Error Deleting Group "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "cache: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 130
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 146
    sget-object v2, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getFileHandleSafely(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 149
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/FileIoUtil;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    .line 152
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 154
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 160
    :cond_0
    sget-object v1, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getFileHandleSafely(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "contents"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-object v2, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 189
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getFileHandleSafely(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 190
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, p3, v3, v4, v5}, Lcom/eventgenie/android/utils/FileIoUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 191
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 7
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "contents"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 177
    if-eqz p3, :cond_0

    .line 178
    sget-object v2, Lcom/genie_connect/android/db/caching/PersistentStringCache;->mLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 179
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getFileHandleSafely(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 180
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v1, v3, v4, v5, v6}, Lcom/eventgenie/android/utils/FileIoUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v1

    monitor-exit v2

    .line 183
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return v1

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
