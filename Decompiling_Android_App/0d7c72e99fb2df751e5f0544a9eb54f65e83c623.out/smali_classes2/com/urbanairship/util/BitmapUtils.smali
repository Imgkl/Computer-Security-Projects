.class public Lcom/urbanairship/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final NETWORK_TIMEOUT_MS:I = 0x7d0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(IIII)I
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 106
    const/4 v2, 0x1

    .line 108
    .local v2, "inSampleSize":I
    if-gt p1, p3, :cond_0

    if-le p0, p2, :cond_1

    .line 110
    :cond_0
    div-int/lit8 v0, p1, 0x2

    .line 111
    .local v0, "halfHeight":I
    div-int/lit8 v1, p0, 0x2

    .line 116
    .local v1, "halfWidth":I
    :goto_0
    div-int v3, v0, v2

    if-le v3, p3, :cond_1

    div-int v3, v1, v2

    if-le v3, p2, :cond_1

    .line 117
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 121
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v2
.end method

.method private static downloadFile(Ljava/net/URL;Ljava/io/File;)Z
    .locals 10
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Downloading file from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 134
    const/4 v3, 0x0

    .line 135
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 138
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 139
    .local v2, "conn":Ljava/net/URLConnection;
    const/16 v8, 0x7d0

    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 140
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 141
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 143
    if-eqz v3, :cond_5

    .line 144
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v0, v7, [B

    .line 149
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    .line 150
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v4, :cond_0

    .line 160
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 163
    :cond_0
    if-eqz v3, :cond_1

    .line 164
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v6

    .line 153
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "conn":Ljava/net/URLConnection;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 154
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    if-eqz v5, :cond_3

    .line 160
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 163
    :cond_3
    if-eqz v3, :cond_4

    .line 164
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_4
    move-object v4, v5

    .line 168
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :goto_2
    return v6

    .line 159
    :cond_5
    if-eqz v4, :cond_6

    .line 160
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 163
    :cond_6
    if-eqz v3, :cond_7

    .line 164
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_7
    move v6, v7

    .line 168
    goto :goto_2

    .line 159
    .end local v2    # "conn":Ljava/net/URLConnection;
    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method public static fetchScaledBitmap(Landroid/content/Context;Ljava/net/URL;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BitmapUtils - Fetching image from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 61
    const-string v5, "ua_"

    const-string v6, ".temp"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 62
    .local v3, "outputFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BitmapUtils - Created temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 64
    invoke-static {p1, v3}, Lcom/urbanairship/util/BitmapUtils;->downloadFile(Ljava/net/URL;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BitmapUtils - Failed to fetch image from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 69
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 70
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 72
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 74
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 75
    .local v4, "width":I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 77
    .local v1, "height":I
    invoke-static {v4, v1, p2, p3}, Lcom/urbanairship/util/BitmapUtils;->calculateInSampleSize(IIII)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 78
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 79
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BitmapUtils - Deleted temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 87
    :goto_1
    const-string v5, "BitmapUtils - Fetched image from: %s. Original image size: %dx%d. Requested image size: %dx%d. Bitmap size: %dx%d. SampleSize: %d"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BitmapUtils - Failed to delete temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_1
.end method
