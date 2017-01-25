.class public Lcom/github/ignition/support/cache/ImageCache;
.super Lcom/github/ignition/support/cache/AbstractCache;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/ignition/support/cache/AbstractCache",
        "<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>(IJI)V
    .locals 8
    .param p1, "initialCapacity"    # I
    .param p2, "expirationInMinutes"    # J
    .param p4, "maxConcurrentThreads"    # I

    .prologue
    .line 38
    const-string v2, "ImageCache"

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/github/ignition/support/cache/AbstractCache;-><init>(Ljava/lang/String;IJI)V

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "elementKey"    # Ljava/lang/Object;

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/github/ignition/support/cache/AbstractCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .local v0, "imageData":[B
    if-nez v0, :cond_0

    .line 70
    const/4 v1, 0x0

    .line 72
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 68
    .end local v0    # "imageData":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic getFileNameForKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/ignition/support/cache/ImageCache;->getFileNameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileNameForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p1}, Lcom/github/ignition/support/cache/CacheHelper;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic readValueFromDisk(Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/github/ignition/support/cache/ImageCache;->readValueFromDisk(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method protected readValueFromDisk(Ljava/io/File;)[B
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    .local v4, "istream":Ljava/io/BufferedInputStream;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 54
    .local v0, "fileSize":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v0, v6

    if-lez v5, :cond_0

    .line 55
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Cannot read files larger than 2147483647 bytes"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 58
    :cond_0
    long-to-int v3, v0

    .line 60
    .local v3, "imageDataLength":I
    new-array v2, v3, [B

    .line 61
    .local v2, "imageData":[B
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 62
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 64
    return-object v2
.end method

.method public declared-synchronized removeAllWithPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "urlPrefix"    # Ljava/lang/String;

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    invoke-static {p0, p1}, Lcom/github/ignition/support/cache/CacheHelper;->removeAllWithStringPrefix(Lcom/github/ignition/support/cache/AbstractCache;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic writeValueToDisk(Ljava/io/File;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/File;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    check-cast p2, [B

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/github/ignition/support/cache/ImageCache;->writeValueToDisk(Ljava/io/File;[B)V

    return-void
.end method

.method protected writeValueToDisk(Ljava/io/File;[B)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "imageData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 79
    .local v0, "ostream":Ljava/io/BufferedOutputStream;
    invoke-virtual {v0, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 81
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 82
    return-void
.end method
