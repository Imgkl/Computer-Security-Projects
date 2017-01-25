.class public Lcom/eventgenie/android/utils/help/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTextLineOnBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Typeface;FII)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "typeface"    # Landroid/graphics/Typeface;
    .param p3, "fontSize"    # F
    .param p4, "backGroundColour"    # I
    .param p5, "fontColour"    # I

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 67
    :cond_0
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 68
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 71
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 73
    if-eqz p2, :cond_1

    .line 74
    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 77
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v5, p1, v2, v3, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 79
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v7, v2

    .line 82
    .local v7, "rectangleHeight":I
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    invoke-virtual {v5, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    int-to-float v4, v7

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 88
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    invoke-virtual {v5, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, v7, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 92
    return-object p0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 270
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 271
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 272
    .local v4, "width":I
    const/4 v3, 0x1

    .line 274
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 276
    :cond_0
    const/4 v3, 0x2

    .line 278
    div-int/lit8 v0, v2, 0x2

    .line 279
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 284
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p2, :cond_1

    div-int v5, v1, v3

    if-le v5, p1, :cond_1

    .line 286
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 290
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method public static clearTemporaryImages(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/eventgenie/android/utils/help/BitmapUtils;->getTemporaryImagePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "tempFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 307
    :cond_0
    return-void
.end method

.method public static decodeImage(Ljava/io/File;ZI)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "f"    # Ljava/io/File;
    .param p1, "withOptions"    # Z
    .param p2, "maxPixels"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 96
    const/4 v0, 0x0

    .line 99
    .local v0, "b":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 100
    .local v1, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 101
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v6, 0x0

    invoke-static {v5, v6, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 108
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v5, v7, :cond_0

    const/4 p2, 0x1

    .line 110
    :cond_0
    const/4 v3, 0x1

    .line 111
    .local v3, "scale":I
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v5, p2, :cond_1

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v5, p2, :cond_2

    .line 112
    :cond_1
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v8, p2

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v10, v5

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v5, v8

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v3, v6

    .line 116
    :cond_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    .local v2, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 118
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    .end local v2    # "o2":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    .end local v1    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "scale":I
    :goto_1
    return-object v0

    .restart local v1    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "o2":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "scale":I
    :cond_3
    move-object v2, v4

    .line 118
    goto :goto_0

    .line 119
    .end local v1    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "scale":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static decodeSampledBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 253
    .local v0, "fileDescriptor":Landroid/content/res/AssetFileDescriptor;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 254
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 255
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 259
    invoke-static {v1, p2, p3}, Lcom/eventgenie/android/utils/help/BitmapUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 262
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 263
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static generateTemporaryImageFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 298
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/eventgenie/android/utils/help/BitmapUtils;->getTemporaryImagePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getBitmapDimensionsAsString(Landroid/widget/ImageView;)Ljava/lang/String;
    .locals 4
    .param p0, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 128
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 130
    .local v0, "x":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 136
    .local v1, "y":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 132
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_0
    const/4 v0, 0x0

    .line 133
    .restart local v0    # "x":I
    const/4 v1, 0x0

    .restart local v1    # "y":I
    goto :goto_0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "pixels"    # I

    .prologue
    const/4 v10, 0x0

    .line 142
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 163
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 146
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 147
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 150
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 151
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 152
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 153
    .local v5, "rectF":Landroid/graphics/RectF;
    int-to-float v6, p1

    .line 155
    .local v6, "roundPx":F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 157
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    invoke-virtual {v0, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 160
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 161
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p0, v2

    .line 163
    goto :goto_0
.end method

.method private static getTemporaryImagePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logImageLayers(Landroid/graphics/drawable/Drawable;I)V
    .locals 5
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "level"    # I

    .prologue
    .line 167
    instance-of v3, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v2, p0

    .line 168
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 169
    .local v2, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 171
    .local v1, "layerMax":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 172
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/help/BitmapUtils;->logImageLayers(Landroid/graphics/drawable/Drawable;I)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "i":I
    .end local v1    # "layerMax":I
    .end local v2    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ NEW LayerDrawable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 178
    :cond_1
    return-void
.end method

.method public static overlayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bmp1"    # Landroid/graphics/Bitmap;
    .param p1, "bmp2"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 181
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    .local v0, "bmOverlay":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 183
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p0, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 184
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 185
    return-object v0
.end method

.method public static scaleDownBitmapToMaxDimension(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "requiredMaxDimension"    # I

    .prologue
    .line 311
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v1, v4, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 313
    .local v0, "maxDimension":I
    :goto_0
    int-to-double v4, p1

    int-to-double v6, v0

    div-double v2, v4, v6

    .line 315
    .local v2, "scale":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 316
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {p0, v1, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 323
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-object p0

    .line 311
    .end local v0    # "maxDimension":I
    .end local v2    # "scale":D
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public static setImageDrawableWithFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "crossfadeduraction"    # I

    .prologue
    .line 189
    if-nez p0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    if-eqz p1, :cond_0

    .line 191
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0, p2}, Lcom/eventgenie/android/utils/help/BitmapUtils;->setImageDrawableWithFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method public static setImageDrawableWithFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .locals 8
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "animationDuration"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 198
    if-nez p0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 202
    .local v3, "oldDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    .line 203
    const/4 v5, 0x2

    new-array v0, v5, [Landroid/graphics/drawable/Drawable;

    .line 205
    .local v0, "drawableLayers":[Landroid/graphics/drawable/Drawable;
    instance-of v5, v3, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_2

    move-object v2, v3

    .line 206
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 207
    .local v2, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 209
    .local v1, "layerCount":I
    if-gt v1, v6, :cond_1

    .line 210
    aput-object v2, v0, v7

    .line 215
    :goto_1
    aput-object p1, v0, v6

    .line 221
    .end local v1    # "layerCount":I
    .end local v2    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :goto_2
    new-instance v4, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 222
    .local v4, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 223
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    invoke-virtual {v4, p2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 212
    .end local v4    # "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    .restart local v1    # "layerCount":I
    .restart local v2    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v0, v7

    goto :goto_1

    .line 217
    .end local v1    # "layerCount":I
    .end local v2    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v0, v7

    .line 218
    aput-object p1, v0, v6

    goto :goto_2

    .line 228
    .end local v0    # "drawableLayers":[Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static writeOnBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Typeface;FI)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "typeface"    # Landroid/graphics/Typeface;
    .param p3, "fontSize"    # F
    .param p4, "fontColour"    # I

    .prologue
    .line 234
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 235
    .local v1, "mutableBm":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 236
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 238
    .local v0, "canvas":Landroid/graphics/Canvas;
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 239
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 241
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 243
    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, p1, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 245
    return-object v1
.end method
