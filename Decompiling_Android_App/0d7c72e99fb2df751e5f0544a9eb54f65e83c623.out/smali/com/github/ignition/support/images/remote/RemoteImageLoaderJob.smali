.class public Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;
.super Ljava/lang/Object;
.source "RemoteImageLoaderJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_RETRY_HANDLER_SLEEP_TIME:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "Ignition/ImageLoader"


# instance fields
.field private defaultBufferSize:I

.field private handler:Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;

.field private imageCache:Lcom/github/ignition/support/cache/ImageCache;

.field private imageUrl:Ljava/lang/String;

.field private numRetries:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;Lcom/github/ignition/support/cache/ImageCache;II)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;
    .param p3, "imageCache"    # Lcom/github/ignition/support/cache/ImageCache;
    .param p4, "numRetries"    # I
    .param p5, "defaultBufferSize"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->imageUrl:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->handler:Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;

    .line 33
    iput-object p3, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->imageCache:Lcom/github/ignition/support/cache/ImageCache;

    .line 34
    iput p4, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->numRetries:I

    .line 35
    iput p5, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->defaultBufferSize:I

    .line 36
    return-void
.end method


# virtual methods
.method protected downloadImage()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 61
    const/4 v2, 0x1

    .line 63
    .local v2, "timesTried":I
    :goto_0
    iget v3, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->numRetries:I

    if-gt v2, v3, :cond_0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->retrieveImageData()[B

    move-result-object v1

    .line 67
    .local v1, "imageData":[B
    if-nez v1, :cond_1

    .line 85
    .end local v1    # "imageData":[B
    :cond_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 71
    .restart local v1    # "imageData":[B
    :cond_1
    iget-object v3, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->imageCache:Lcom/github/ignition/support/cache/ImageCache;

    if-eqz v3, :cond_2

    .line 72
    iget-object v3, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->imageCache:Lcom/github/ignition/support/cache/ImageCache;

    iget-object v4, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/github/ignition/support/cache/ImageCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_2
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 77
    .end local v1    # "imageData":[B
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "Ignition/ImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->imageUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed (attempt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    goto :goto_0
.end method

.method protected notifyImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 133
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 134
    .local v2, "message":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "ign:extra_image_url"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    move-object v1, p2

    .line 138
    .local v1, "image":Landroid/graphics/Bitmap;
    const-string v3, "ign:extra_bitmap"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 141
    iget-object v3, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->handler:Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;

    invoke-virtual {v3, v2}, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    return-void
.end method

.method protected retrieveImageData()[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    .line 89
    new-instance v8, Ljava/net/URL;

    iget-object v9, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->imageUrl:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 90
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 93
    .local v3, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    .line 94
    .local v4, "fileSize":I
    const-string v10, "Ignition/ImageLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fetching image "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->imageUrl:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-gtz v4, :cond_1

    const-string v9, "size unknown"

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    .local v6, "istream":Ljava/io/BufferedInputStream;
    if-gtz v4, :cond_3

    .line 100
    :try_start_0
    const-string v9, "Ignition/ImageLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Server did not set a Content-Length header, will default to buffer size of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->defaultBufferSize:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v9, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->defaultBufferSize:I

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 104
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    iget v9, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->defaultBufferSize:I

    new-array v1, v9, [B

    .line 105
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 106
    .local v2, "bytesRead":I
    :cond_0
    :goto_1
    if-eq v2, v12, :cond_2

    .line 107
    const/4 v9, 0x0

    iget v10, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->defaultBufferSize:I

    invoke-virtual {v6, v1, v9, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    .line 108
    if-lez v2, :cond_0

    .line 109
    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 125
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    :catchall_0
    move-exception v9

    .line 126
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 127
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    :goto_2
    throw v9

    .line 94
    .end local v6    # "istream":Ljava/io/BufferedInputStream;
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 111
    .restart local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v6    # "istream":Ljava/io/BufferedInputStream;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 126
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 127
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 128
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    :goto_3
    return-object v5

    .line 113
    .end local v2    # "bytesRead":I
    :cond_3
    :try_start_4
    new-array v5, v4, [B

    .line 115
    .local v5, "imageData":[B
    const/4 v2, 0x0

    .line 116
    .restart local v2    # "bytesRead":I
    const/4 v7, 0x0

    .line 117
    .local v7, "offset":I
    :goto_4
    if-eq v2, v12, :cond_4

    if-ge v7, v4, :cond_4

    .line 118
    sub-int v9, v4, v7

    invoke-virtual {v6, v5, v7, v9}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    .line 119
    add-int/2addr v7, v2

    goto :goto_4

    .line 126
    :cond_4
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 127
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 128
    :catch_0
    move-exception v9

    goto :goto_3

    .end local v2    # "bytesRead":I
    .end local v5    # "imageData":[B
    .end local v7    # "offset":I
    :catch_1
    move-exception v10

    goto :goto_2

    .restart local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    :catch_2
    move-exception v9

    goto :goto_3
.end method

.method public run()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->imageCache:Lcom/github/ignition/support/cache/ImageCache;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->imageCache:Lcom/github/ignition/support/cache/ImageCache;

    iget-object v2, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/ignition/support/cache/ImageCache;->getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    :cond_0
    if-nez v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->downloadImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->imageUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/github/ignition/support/images/remote/RemoteImageLoaderJob;->notifyImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 56
    return-void
.end method
