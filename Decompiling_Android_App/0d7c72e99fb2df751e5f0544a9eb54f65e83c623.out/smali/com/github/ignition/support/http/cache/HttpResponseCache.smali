.class public Lcom/github/ignition/support/http/cache/HttpResponseCache;
.super Lcom/github/ignition/support/cache/AbstractCache;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/ignition/support/cache/AbstractCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(IJI)V
    .locals 8
    .param p1, "initialCapacity"    # I
    .param p2, "expirationInMinutes"    # J
    .param p4, "maxConcurrentThreads"    # I

    .prologue
    .line 25
    const-string v2, "HttpCache"

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/github/ignition/support/cache/AbstractCache;-><init>(Ljava/lang/String;IJI)V

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic getFileNameForKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/ignition/support/http/cache/HttpResponseCache;->getFileNameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileNameForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p1}, Lcom/github/ignition/support/cache/CacheHelper;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readValueFromDisk(Ljava/io/File;)Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    .local v2, "istream":Ljava/io/BufferedInputStream;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 41
    .local v0, "fileSize":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 42
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Cannot read files larger than 2147483647 bytes"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 46
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    .line 49
    .local v5, "statusCode":I
    long-to-int v6, v0

    add-int/lit8 v4, v6, -0x1

    .line 51
    .local v4, "responseDataLength":I
    new-array v3, v4, [B

    .line 52
    .local v3, "responseBody":[B
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 53
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 55
    new-instance v6, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;

    invoke-direct {v6, v5, v3}, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;-><init>(I[B)V

    return-object v6
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
    .line 22
    invoke-virtual {p0, p1}, Lcom/github/ignition/support/http/cache/HttpResponseCache;->readValueFromDisk(Ljava/io/File;)Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized removeAllWithPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "urlPrefix"    # Ljava/lang/String;

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    invoke-static {p0, p1}, Lcom/github/ignition/support/cache/CacheHelper;->removeAllWithStringPrefix(Lcom/github/ignition/support/cache/AbstractCache;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected writeValueToDisk(Ljava/io/File;Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "data"    # Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    .local v0, "ostream":Ljava/io/BufferedOutputStream;
    invoke-virtual {p2}, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 63
    invoke-virtual {p2}, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;->getResponseBody()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 65
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 66
    return-void
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
    .line 22
    check-cast p2, Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/github/ignition/support/http/cache/HttpResponseCache;->writeValueToDisk(Ljava/io/File;Lcom/github/ignition/support/http/cache/CachedHttpResponse$ResponseData;)V

    return-void
.end method
