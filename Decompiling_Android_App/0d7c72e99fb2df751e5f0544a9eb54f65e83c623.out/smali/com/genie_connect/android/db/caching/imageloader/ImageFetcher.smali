.class Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;
.super Ljava/lang/Object;
.source "ImageFetcher.java"

# interfaces
.implements Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderFields;


# static fields
.field public static final METHOD_ANY:I = 0xf

.field public static final METHOD_ASSETS:I = 0x2

.field public static final METHOD_DISK_CACHE:I = 0x4

.field public static final METHOD_MEM_CACHE:I = 0x8

.field public static final METHOD_NETWORK:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDebugInfoOnBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "source"    # I

    .prologue
    const/4 v11, -0x1

    const/high16 v5, -0x1000000

    const/4 v2, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    .line 168
    if-nez p0, :cond_1

    .line 187
    .end local p0    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 170
    .restart local p0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {p1}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;->getBitmapSourceKey(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isDebugImageLoader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    packed-switch p1, :pswitch_data_0

    move-object v6, p0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v5

    .line 183
    invoke-static/range {v6 .. v11}, Lcom/eventgenie/android/utils/help/BitmapUtils;->addTextLineOnBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Typeface;FII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 175
    :pswitch_0
    const v4, -0xff0100

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/help/BitmapUtils;->addTextLineOnBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Typeface;FII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 177
    :pswitch_1
    const/16 v4, -0x100

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/help/BitmapUtils;->addTextLineOnBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Typeface;FII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 179
    :pswitch_2
    const v4, -0xff01

    move-object v0, p0

    move v5, v11

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/help/BitmapUtils;->addTextLineOnBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Typeface;FII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 181
    :pswitch_3
    const/high16 v4, -0x10000

    move-object v0, p0

    move v5, v11

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/help/BitmapUtils;->addTextLineOnBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Typeface;FII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getAssetManager()Lcom/eventgenie/android/utils/managers/GenieAssetManager;
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAssetManager()Lcom/eventgenie/android/utils/managers/GenieAssetManager;

    move-result-object v0

    return-object v0
.end method

.method private static getBitmapSourceKey(I)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # I

    .prologue
    .line 195
    packed-switch p0, :pswitch_data_0

    .line 205
    const-string v0, "???"

    :goto_0
    return-object v0

    .line 197
    :pswitch_0
    const-string v0, "DSK"

    goto :goto_0

    .line 199
    :pswitch_1
    const-string v0, "MEM"

    goto :goto_0

    .line 201
    :pswitch_2
    const-string v0, "NET"

    goto :goto_0

    .line 203
    :pswitch_3
    const-string v0, "AST"

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getDebugDownloadString(Ljava/lang/String;Landroid/graphics/Bitmap;IJ)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "source"    # I
    .param p3, "elapsedNanos"    # J

    .prologue
    .line 210
    invoke-static {p2}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;->getBitmapSourceKey(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "sourceString":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "dimen":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p3, p4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "time":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ IMAGELOADER: Loaded from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dimens: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 216
    .end local v0    # "dimen":Ljava/lang/String;
    .end local v2    # "time":Ljava/lang/String;
    :cond_0
    const-string v0, "(-1, -1)"

    .restart local v0    # "dimen":Ljava/lang/String;
    goto :goto_0
.end method

.method private static isMethodEnabled(II)Z
    .locals 2
    .param p0, "methodMask"    # I
    .param p1, "method"    # I

    .prologue
    .line 224
    and-int v1, p0, p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    .line 226
    .local v0, "res":Z
    :goto_0
    return v0

    .line 224
    .end local v0    # "res":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public fetchBitmap(Ljava/lang/String;IZLjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "methodMask"    # I
    .param p3, "withOptions"    # Z
    .param p4, "cacheDir"    # Ljava/lang/String;
    .param p5, "maxPixels"    # I

    .prologue
    .line 71
    invoke-static/range {p1 .. p1}, Lcom/genie_connect/android/db/caching/imageloader/Util;->isValidImageUrl(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v2, 0x0

    .line 159
    :cond_0
    :goto_0
    return-object v2

    .line 73
    :cond_1
    const/4 v2, 0x0

    .line 74
    .local v2, "b":Landroid/graphics/Bitmap;
    const/4 v10, -0x1

    .line 75
    .local v10, "source":I
    const/4 v4, 0x0

    .line 76
    .local v4, "done":Z
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 78
    .local v12, "startTime":J
    if-nez v4, :cond_2

    const/16 v14, 0x8

    move/from16 v0, p2

    invoke-static {v0, v14}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;->isMethodEnabled(II)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 79
    invoke-static/range {p1 .. p1}, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 81
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-nez v14, :cond_2

    .line 82
    const/16 v10, 0x3e8

    .line 83
    const/4 v4, 0x1

    .line 84
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isDebugImageLoader()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v12

    move-object/from16 v0, p1

    invoke-static {v0, v2, v10, v14, v15}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;->getDebugDownloadString(Ljava/lang/String;Landroid/graphics/Bitmap;IJ)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 88
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/genie_connect/android/db/caching/imageloader/Util;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "filename":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v6, "f":Ljava/io/File;
    if-nez v4, :cond_3

    const/4 v14, 0x2

    move/from16 v0, p2

    invoke-static {v0, v14}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;->isMethodEnabled(II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 93
    :try_start_0
    invoke-static {}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;->getAssetManager()Lcom/eventgenie/android/utils/managers/GenieAssetManager;

    move-result-object v14

    sget-object v15, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->IMAGE_CACHE:Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    invoke-virtual {v14, v15, v7}, Lcom/eventgenie/android/utils/managers/GenieAssetManager;->getStreamForFile(Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 94
    .local v11, "stream":Ljava/io/InputStream;
    if-eqz v11, :cond_3

    .line 95
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 96
    invoke-static {v11}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 97
    const/16 v10, 0x3eb

    .line 98
    const/4 v4, 0x1

    .line 99
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isDebugImageLoader()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v12

    move-object/from16 v0, p1

    invoke-static {v0, v2, v10, v14, v15}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;->getDebugDownloadString(Ljava/lang/String;Landroid/graphics/Bitmap;IJ)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 104
    .end local v11    # "stream":Ljava/io/InputStream;
    :cond_3
    :goto_1
    if-nez v4, :cond_4

    const/4 v14, 0x4

    move/from16 v0, p2

    invoke-static {v0, v14}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;->isMethodEnabled(II)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 106
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v6, v0, v1}, Lcom/eventgenie/android/utils/help/BitmapUtils;->decodeImage(Ljava/io/File;ZI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 108
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-nez v14, :cond_4

    .line 109
    const/16 v10, 0x3ea

    .line 110
    const/4 v4, 0x1

    .line 112
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isDebugImageLoader()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v12

    move-object/from16 v0, p1

    invoke-static {v0, v2, v10, v14, v15}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;->getDebugDownloadString(Ljava/lang/String;Landroid/graphics/Bitmap;IJ)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 116
    :cond_4
    if-nez v4, :cond_5

    const/4 v14, 0x1

    move/from16 v0, p2

    invoke-static {v0, v14}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;->isMethodEnabled(II)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 118
    :try_start_1
    new-instance v14, Lcom/squareup/okhttp/OkUrlFactory;

    invoke-static {}, Lcom/genie_connect/android/net/OkHttpClientSingleton;->getOkHttpClient()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/squareup/okhttp/OkUrlFactory;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    invoke-static/range {p1 .. p1}, Lcom/genie_connect/android/net/providers/NetworkUtils;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/squareup/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 121
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const-string v14, "User-Agent"

    const-string v15, "Android"

    invoke-virtual {v3, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 123
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 125
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 126
    .local v8, "is":Ljava/io/InputStream;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 127
    .local v9, "os":Ljava/io/OutputStream;
    invoke-static {v8, v9}, Lcom/genie_connect/android/db/caching/imageloader/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 128
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 129
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v6, v0, v1}, Lcom/eventgenie/android/utils/help/BitmapUtils;->decodeImage(Ljava/io/File;ZI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 131
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-nez v14, :cond_5

    .line 132
    const/16 v10, 0x3e9

    .line 133
    const/4 v4, 0x1

    .line 135
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isDebugImageLoader()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v12

    move-object/from16 v0, p1

    invoke-static {v0, v2, v10, v14, v15}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;->getDebugDownloadString(Ljava/lang/String;Landroid/graphics/Bitmap;IJ)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "os":Ljava/io/OutputStream;
    :cond_5
    :goto_2
    if-nez v4, :cond_7

    .line 147
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isDebugImageLoader()Z

    move-result v14

    if-eqz v14, :cond_6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "^ IMAGELOADER: Loaded from NOWHERE: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 149
    :cond_6
    const/4 v2, 0x0

    .line 150
    const/4 v10, -0x1

    .line 153
    :cond_7
    const/4 v14, -0x1

    if-eq v10, v14, :cond_0

    .line 154
    const/16 v14, 0x3e8

    if-le v10, v14, :cond_8

    .line 155
    new-instance v14, Ljava/lang/ref/SoftReference;

    invoke-direct {v14, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/genie_connect/android/db/caching/imageloader/ImageMemoryCache;->add(Ljava/lang/String;Ljava/lang/ref/SoftReference;)V

    .line 157
    :cond_8
    invoke-static {v2, v10}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;->addDebugInfoOnBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_0

    .line 137
    :catch_0
    move-exception v5

    .line 138
    .local v5, "ex":Ljava/io/IOException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "^ IMAGELOADER - IOException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 139
    const/4 v4, 0x0

    .line 143
    goto :goto_2

    .line 140
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 141
    .local v5, "ex":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "^ IMAGELOADER - Exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 142
    const/4 v4, 0x0

    goto :goto_2

    .line 101
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v14

    goto/16 :goto_1
.end method

.method public getBitmapFromMemory(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 164
    const/16 v2, 0x8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/db/caching/imageloader/ImageFetcher;->fetchBitmap(Ljava/lang/String;IZLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
