.class Lcom/julysystems/appx/AppXCacheItem;
.super Ljava/lang/Object;
.source "AppXCacheItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "APPX_CACHE"

.field private static final serialVersionUID:J = 0x1a222a44a3L


# instance fields
.field private transient bitmapRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private cleanUrl:Ljava/lang/String;

.field private data:[B

.field private transient dataRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private expiresAt:J

.field private filePath:Ljava/lang/String;

.field private isPermanent:Z

.field private final length:I

.field private validTill:J


# direct methods
.method protected constructor <init>(Ljava/io/DataInputStream;)V
    .locals 4
    .param p1, "dIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/julysystems/appx/AppXCacheItem;->validTill:J

    .line 57
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/julysystems/appx/AppXCacheItem;->expiresAt:J

    .line 58
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/julysystems/appx/AppXCacheItem;->filePath:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/julysystems/appx/AppXCacheItem;->cleanUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/julysystems/appx/AppXCacheItem;->length:I

    .line 61
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 62
    .local v0, "dataLen":I
    if-eqz v0, :cond_0

    .line 63
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/julysystems/appx/AppXCacheItem;->data:[B

    .line 64
    iget-object v1, p0, Lcom/julysystems/appx/AppXCacheItem;->data:[B

    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 66
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[BIZ)V
    .locals 6
    .param p1, "cleanUrl"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "cacheDuration"    # I
    .param p4, "addToPermanentCache"    # Z

    .prologue
    const v0, 0x1e13380

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/julysystems/appx/AppXCacheItem;->cleanUrl:Ljava/lang/String;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit16 v1, p3, 0x3e8

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/julysystems/appx/AppXCacheItem;->validTill:J

    .line 42
    if-ne p3, v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/julysystems/appx/AppXCacheItem;->isPermanent:Z

    .line 43
    iget-boolean v1, p0, Lcom/julysystems/appx/AppXCacheItem;->isPermanent:Z

    if-eqz v1, :cond_3

    .line 44
    .local v0, "expiry":I
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/julysystems/appx/AppXCacheItem;->expiresAt:J

    .line 45
    array-length v1, p2

    iput v1, p0, Lcom/julysystems/appx/AppXCacheItem;->length:I

    .line 46
    iput-object p2, p0, Lcom/julysystems/appx/AppXCacheItem;->data:[B

    .line 47
    iget v1, p0, Lcom/julysystems/appx/AppXCacheItem;->length:I

    const/16 v2, 0x400

    if-gt v1, v2, :cond_0

    if-eqz p4, :cond_4

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/julysystems/appx/AppXCacheItem;->writeToDisk()V

    .line 51
    :goto_2
    if-eqz p4, :cond_1

    .line 52
    sget-object v1, Lcom/julysystems/appx/AppXCache;->cachedItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    return-void

    .line 42
    .end local v0    # "expiry":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 43
    :cond_3
    const v0, 0x15180

    goto :goto_1

    .line 50
    .restart local v0    # "expiry":I
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/julysystems/appx/AppXCacheItem;->filePath:Ljava/lang/String;

    goto :goto_2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 136
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 140
    return-void
.end method

.method private writeToDisk()V
    .locals 8

    .prologue
    .line 172
    :try_start_0
    iget-object v5, p0, Lcom/julysystems/appx/AppXCacheItem;->cleanUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v4

    .line 173
    .local v4, "uuid":Ljava/util/UUID;
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 174
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "JulyCacheItem~"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/julysystems/appx/AppXCacheItem;->filePath:Ljava/lang/String;

    .line 176
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 178
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 179
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 182
    .local v3, "fos":Ljava/io/FileOutputStream;
    iget-object v5, p0, Lcom/julysystems/appx/AppXCacheItem;->data:[B

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 183
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 184
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 185
    new-instance v5, Ljava/lang/ref/SoftReference;

    iget-object v6, p0, Lcom/julysystems/appx/AppXCacheItem;->data:[B

    invoke-direct {v5, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/julysystems/appx/AppXCacheItem;->dataRef:Ljava/lang/ref/SoftReference;

    .line 186
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/julysystems/appx/AppXCacheItem;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "uuid":Ljava/util/UUID;
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "APPX_CACHE"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception occured while trying to add to permanent cache. \n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected delete()V
    .locals 5

    .prologue
    .line 107
    iget-object v2, p0, Lcom/julysystems/appx/AppXCacheItem;->filePath:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/julysystems/appx/AppXCacheItem;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "APPX_CACHE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Deleting file. \n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getBitmap([B)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v2, p0, Lcom/julysystems/appx/AppXCacheItem;->bitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/julysystems/appx/AppXCacheItem;->bitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    move-object v0, v2

    .line 124
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_3

    .line 125
    if-eqz p1, :cond_1

    move-object v1, p1

    .line 126
    .local v1, "bitmapData":[B
    :goto_1
    if-nez v1, :cond_2

    move-object v2, v3

    .line 131
    .end local v1    # "bitmapData":[B
    :goto_2
    return-object v2

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    move-object v0, v3

    .line 123
    goto :goto_0

    .line 125
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXCacheItem;->getData()[B

    move-result-object v1

    goto :goto_1

    .line 128
    .restart local v1    # "bitmapData":[B
    :cond_2
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/julysystems/appx/AppXCacheItem;->bitmapRef:Ljava/lang/ref/SoftReference;

    .end local v1    # "bitmapData":[B
    :cond_3
    move-object v2, v0

    .line 131
    goto :goto_2
.end method

.method protected getCleanUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/julysystems/appx/AppXCacheItem;->cleanUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getData()[B
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 143
    iget-object v5, p0, Lcom/julysystems/appx/AppXCacheItem;->data:[B

    if-eqz v5, :cond_1

    .line 144
    iget-object v4, p0, Lcom/julysystems/appx/AppXCacheItem;->data:[B

    .line 167
    :cond_0
    :goto_0
    return-object v4

    .line 145
    :cond_1
    iget-object v5, p0, Lcom/julysystems/appx/AppXCacheItem;->dataRef:Ljava/lang/ref/SoftReference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/julysystems/appx/AppXCacheItem;->dataRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v4, v5

    .line 146
    .local v4, "tempData":[B
    :goto_1
    if-nez v4, :cond_0

    .line 148
    iget-object v5, p0, Lcom/julysystems/appx/AppXCacheItem;->filePath:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 150
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/julysystems/appx/AppXCacheItem;->filePath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 153
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 154
    .local v3, "fIn":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 155
    .local v0, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v5, v8

    new-array v4, v5, [B

    .line 156
    invoke-virtual {v0, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 157
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 158
    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/julysystems/appx/AppXCacheItem;->dataRef:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v0    # "dIn":Ljava/io/DataInputStream;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fIn":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "APPX_CACHE"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception occured while trying to read from disk cache. \n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    move-object v4, v6

    .line 167
    goto :goto_0

    .end local v4    # "tempData":[B
    :cond_3
    move-object v4, v6

    .line 145
    goto :goto_1

    .line 161
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "tempData":[B
    :cond_4
    const/4 v5, 0x0

    :try_start_1
    iput-object v5, p0, Lcom/julysystems/appx/AppXCacheItem;->filePath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected hasExpired()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 96
    iget-wide v2, p0, Lcom/julysystems/appx/AppXCacheItem;->expiresAt:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 97
    iget-object v2, p0, Lcom/julysystems/appx/AppXCacheItem;->data:[B

    if-eqz v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/julysystems/appx/AppXCacheItem;->dataRef:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/julysystems/appx/AppXCacheItem;->dataRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 101
    :cond_2
    iget-object v2, p0, Lcom/julysystems/appx/AppXCacheItem;->filePath:Ljava/lang/String;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 103
    goto :goto_0
.end method

.method protected isPermanent()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXCacheItem;->isPermanent:Z

    return v0
.end method

.method protected isValid()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 81
    iget-wide v2, p0, Lcom/julysystems/appx/AppXCacheItem;->validTill:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 82
    iget-object v2, p0, Lcom/julysystems/appx/AppXCacheItem;->data:[B

    if-eqz v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/julysystems/appx/AppXCacheItem;->dataRef:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/julysystems/appx/AppXCacheItem;->dataRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/julysystems/appx/AppXCacheItem;->filePath:Ljava/lang/String;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 88
    goto :goto_0
.end method

.method protected writeItem(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "dOut"    # Ljava/io/DataOutputStream;

    .prologue
    .line 205
    :try_start_0
    iget-wide v2, p0, Lcom/julysystems/appx/AppXCacheItem;->validTill:J

    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 206
    iget-wide v2, p0, Lcom/julysystems/appx/AppXCacheItem;->expiresAt:J

    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 207
    iget-object v1, p0, Lcom/julysystems/appx/AppXCacheItem;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/julysystems/appx/AppXCacheItem;->filePath:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/julysystems/appx/AppXCacheItem;->cleanUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 209
    iget v1, p0, Lcom/julysystems/appx/AppXCacheItem;->length:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 210
    iget-object v1, p0, Lcom/julysystems/appx/AppXCacheItem;->data:[B

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/julysystems/appx/AppXCacheItem;->data:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 212
    iget-object v1, p0, Lcom/julysystems/appx/AppXCacheItem;->data:[B

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 219
    :goto_1
    return-void

    .line 207
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 214
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
