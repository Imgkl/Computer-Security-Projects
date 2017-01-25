.class public Lcom/github/ignition/support/cache/ModelCache;
.super Lcom/github/ignition/support/cache/AbstractCache;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/ignition/support/cache/AbstractCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/github/ignition/support/cache/CachedModel;",
        ">;"
    }
.end annotation


# instance fields
.field private transactionCount:J


# direct methods
.method public constructor <init>(IJI)V
    .locals 8
    .param p1, "initialCapacity"    # I
    .param p2, "expirationInMinutes"    # J
    .param p4, "maxConcurrentThreads"    # I

    .prologue
    .line 28
    const-string v2, "ModelCache"

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/github/ignition/support/cache/AbstractCache;-><init>(Ljava/lang/String;IJI)V

    .line 32
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/github/ignition/support/cache/ModelCache;->transactionCount:J

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic getFileNameForKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/ignition/support/cache/ModelCache;->getFileNameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileNameForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p1}, Lcom/github/ignition/support/cache/CacheHelper;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/github/ignition/support/cache/CachedModel;)Lcom/github/ignition/support/cache/CachedModel;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/github/ignition/support/cache/CachedModel;

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/github/ignition/support/cache/ModelCache;->transactionCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/github/ignition/support/cache/ModelCache;->transactionCount:J

    invoke-virtual {p2, v0, v1}, Lcom/github/ignition/support/cache/CachedModel;->setTransactionId(J)V

    .line 41
    invoke-super {p0, p1, p2}, Lcom/github/ignition/support/cache/AbstractCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/ignition/support/cache/CachedModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/github/ignition/support/cache/CachedModel;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/github/ignition/support/cache/ModelCache;->put(Ljava/lang/String;Lcom/github/ignition/support/cache/CachedModel;)Lcom/github/ignition/support/cache/CachedModel;

    move-result-object v0

    return-object v0
.end method

.method protected readValueFromDisk(Ljava/io/File;)Lcom/github/ignition/support/cache/CachedModel;
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 67
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 70
    .local v5, "istream":Ljava/io/FileInputStream;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v3, v7, [B

    .line 71
    .local v3, "dataWritten":[B
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    .local v0, "bistream":Ljava/io/BufferedInputStream;
    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->read([B)I

    .line 73
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 76
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 77
    .local v6, "parcelIn":Landroid/os/Parcel;
    array-length v7, v3

    invoke-virtual {v6, v3, v10, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 78
    invoke-virtual {v6, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "className":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 84
    const/4 v7, 0x0

    .line 89
    :goto_0
    return-object v7

    .line 88
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 89
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/github/ignition/support/cache/CachedModel;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 91
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
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
    .line 20
    invoke-virtual {p0, p1}, Lcom/github/ignition/support/cache/ModelCache;->readValueFromDisk(Ljava/io/File;)Lcom/github/ignition/support/cache/CachedModel;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized removeAllWithPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    invoke-static {p0, p1}, Lcom/github/ignition/support/cache/CacheHelper;->removeAllWithStringPrefix(Lcom/github/ignition/support/cache/AbstractCache;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected writeValueToDisk(Ljava/io/File;Lcom/github/ignition/support/cache/CachedModel;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "data"    # Lcom/github/ignition/support/cache/CachedModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 103
    .local v2, "parcelOut":Landroid/os/Parcel;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 107
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 108
    .local v1, "ostream":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    .local v0, "bistream":Ljava/io/BufferedOutputStream;
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 110
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 111
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
    .line 20
    check-cast p2, Lcom/github/ignition/support/cache/CachedModel;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/github/ignition/support/cache/ModelCache;->writeValueToDisk(Ljava/io/File;Lcom/github/ignition/support/cache/CachedModel;)V

    return-void
.end method
