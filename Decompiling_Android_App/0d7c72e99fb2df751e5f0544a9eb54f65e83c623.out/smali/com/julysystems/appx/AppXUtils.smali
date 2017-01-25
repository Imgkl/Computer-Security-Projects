.class Lcom/julysystems/appx/AppXUtils;
.super Ljava/lang/Object;
.source "AppXUtils.java"


# static fields
.field protected static final LAST_SECRET_CHANGE:Ljava/lang/String; = "last_scret_change"

.field protected static final LAST_TOKEN_CHANGE:Ljava/lang/String; = "last_token_change"

.field private static PREFERENCE:Ljava/lang/String; = null

.field protected static final SECRET_ID:Ljava/lang/String; = "secret_id"

.field protected static TAG:Ljava/lang/String; = null

.field protected static final TOKEN_ID:Ljava/lang/String; = "token_id"

.field protected static applicationContext:Landroid/content/Context;

.field protected static currentActivity:Landroid/app/Activity;

.field protected static currentUrl:Ljava/lang/String;

.field protected static debug:Z

.field protected static debugString:Ljava/lang/String;

.field protected static drawableImageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static hideLoader:Z

.field protected static pageLoadError:Z

.field protected static pd:Landroid/app/ProgressDialog;

.field protected static prevUrl:Ljava/lang/String;

.field protected static processDataStartTime:J

.field protected static startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 57
    const-string v0, "Utils"

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->TAG:Ljava/lang/String;

    .line 65
    sput-object v3, Lcom/julysystems/appx/AppXUtils;->pd:Landroid/app/ProgressDialog;

    .line 73
    sput-boolean v2, Lcom/julysystems/appx/AppXUtils;->debug:Z

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->debugString:Ljava/lang/String;

    .line 75
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/julysystems/appx/AppXUtils;->processDataStartTime:J

    .line 76
    sput-object v3, Lcom/julysystems/appx/AppXUtils;->currentUrl:Ljava/lang/String;

    .line 81
    const-string v0, ""

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->PREFERENCE:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->drawableImageMap:Ljava/util/HashMap;

    .line 83
    sput-boolean v2, Lcom/julysystems/appx/AppXUtils;->pageLoadError:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static clearSecretId(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->PREFERENCE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 142
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "secret_id"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    const-string v2, "last_token_change"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    return-void
.end method

.method protected static clearTokenId(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->PREFERENCE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 121
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "token_id"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v2, "last_token_change"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method

.method protected static copyStream(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 247
    const/16 v3, 0x1000

    :try_start_0
    new-array v0, v3, [B

    .line 248
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 249
    .local v2, "len":I
    :goto_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 256
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :goto_1
    return-void

    .line 250
    .restart local v0    # "buffer":[B
    .restart local v2    # "len":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 251
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 253
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static dismissLoader()V
    .locals 1

    .prologue
    .line 736
    sget-object v0, Lcom/julysystems/appx/AppXUtils;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 737
    sget-object v0, Lcom/julysystems/appx/AppXUtils;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 738
    const/4 v0, 0x0

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->pd:Landroid/app/ProgressDialog;

    .line 740
    :cond_0
    return-void
.end method

.method protected static getBitmapDrawable(I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8
    .param p0, "resId"    # I

    .prologue
    .line 193
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v5, 0x1

    :try_start_0
    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-string v6, "android.util.DisplayMetrics"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    .line 198
    .local v4, "parameterClasses":[Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setTargetDensity"

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 199
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    aput-object v7, v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "parameterClasses":[Ljava/lang/Class;
    :goto_0
    return-object v1

    .line 200
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "SDK Version"

    const-string v6, " Not a compatible version for setting density of bitmap drawable. The version should be 4 or higher."

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static getBitmapDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .param p0, "localImage"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "inActiveImgName":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 179
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 180
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 181
    :cond_0
    sget-object v3, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 182
    .local v0, "imageId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/julysystems/appx/AppXUtils;->getBitmapDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    return-object v3
.end method

.method protected static getColor(Ljava/lang/String;)I
    .locals 7
    .param p0, "colorStr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x6

    .line 285
    const/4 v2, 0x0

    .line 286
    .local v2, "red":I
    const/4 v1, 0x0

    .line 287
    .local v1, "green":I
    const/4 v0, 0x0

    .line 288
    .local v0, "blue":I
    if-eqz p0, :cond_0

    .line 289
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "#"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 290
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 292
    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 293
    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 294
    const/4 v3, 0x4

    const/4 v4, 0x6

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 300
    :cond_0
    :goto_0
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3

    .line 296
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected static getColor(Ljava/lang/String;I)I
    .locals 7
    .param p0, "colorStr"    # Ljava/lang/String;
    .param p1, "defaultColor"    # I

    .prologue
    const/4 v6, 0x6

    .line 268
    if-eqz p0, :cond_0

    .line 269
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "#"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 272
    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 273
    .local v2, "red":I
    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 274
    .local v1, "green":I
    const/4 v3, 0x4

    const/4 v4, 0x6

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 275
    .local v0, "blue":I
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 280
    .end local v0    # "blue":I
    .end local v1    # "green":I
    .end local v2    # "red":I
    .end local p1    # "defaultColor":I
    :cond_0
    :goto_0
    return p1

    .line 276
    .restart local p1    # "defaultColor":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getCorrectedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "urlStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_6

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "http"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 359
    sget-object v1, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, "iPhoneMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 368
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 369
    const-string v1, "?iPhoneMode=app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_1
    :goto_0
    const-string v1, "appMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 375
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 376
    const-string v1, "?appMode=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_2
    :goto_1
    const-string v1, "platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 382
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_9

    .line 383
    const-string v1, "?platform=android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_3
    :goto_2
    const-string v1, "appXVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 389
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_a

    .line 390
    const-string v1, "?appXVersion=1.2.5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_4
    :goto_3
    sget-object v1, Lcom/julysystems/appx/AppXConstants;->additionalUrlSuffix:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 396
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_b

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/julysystems/appx/AppXConstants;->additionalUrlSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_5
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "urlStr":Ljava/lang/String;
    :goto_5
    return-object p0

    .line 361
    .restart local p0    # "urlStr":Ljava/lang/String;
    :cond_6
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    sget-object v2, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    invoke-static {p0}, Lcom/julysystems/appx/AppXUtils;->getDomainUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    .line 371
    :cond_7
    const-string v1, "&iPhoneMode=app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 378
    :cond_8
    const-string v1, "&appMode=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 385
    :cond_9
    const-string v1, "&platform=android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 392
    :cond_a
    const-string v1, "&appXVersion=1.2.5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 399
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/julysystems/appx/AppXConstants;->additionalUrlSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public static getDomainUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "pageUrl"    # Ljava/lang/String;

    .prologue
    .line 748
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 749
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 751
    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 752
    .local v3, "port":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 759
    .end local v0    # "domain":Ljava/lang/String;
    .end local v3    # "port":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 755
    .restart local v0    # "domain":Ljava/lang/String;
    .restart local v4    # "url":Ljava/net/URL;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 756
    .end local v0    # "domain":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 757
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "Exception for domain url is "

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lcom/julysystems/appx/AppXUtils$1;

    invoke-direct {v0}, Lcom/julysystems/appx/AppXUtils$1;-><init>()V

    return-object v0
.end method

.method protected static getHighlightDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v4, 0x80

    const/4 v3, 0x0

    .line 164
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    const/16 v2, 0xff

    invoke-static {v4, v2, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 165
    .local v0, "highlight":Landroid/graphics/drawable/PaintDrawable;
    const/4 v2, 0x2

    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    aput-object p0, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 166
    .local v1, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method public static getPD()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 743
    sget-object v0, Lcom/julysystems/appx/AppXUtils;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method protected static getRect()Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    .prologue
    .line 99
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/julysystems/appx/AppXUtils;->getRect(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected static getRect(I)Landroid/graphics/drawable/ShapeDrawable;
    .locals 3
    .param p0, "color"    # I

    .prologue
    .line 103
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 104
    .local v0, "r":Landroid/graphics/drawable/shapes/RectShape;
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 105
    .local v1, "s":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    return-object v1
.end method

.method protected static getRoundedRect()Landroid/graphics/drawable/ShapeDrawable;
    .locals 3

    .prologue
    .line 207
    const/16 v0, 0x25

    const/16 v1, 0x4a

    const/16 v2, 0x89

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Lcom/julysystems/appx/AppXUtils;->getRoundedRect(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected static getRoundedRect(I)Landroid/graphics/drawable/ShapeDrawable;
    .locals 7
    .param p0, "color"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 110
    new-array v2, v6, [F

    fill-array-data v2, :array_0

    .line 111
    .local v2, "outerR":[F
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5, v5, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 112
    .local v1, "inset":Landroid/graphics/RectF;
    new-array v0, v6, [F

    fill-array-data v0, :array_1

    .line 113
    .local v0, "innerR":[F
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v2, v1, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 114
    .local v3, "rr":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 115
    .local v4, "s":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    return-object v4

    .line 110
    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data

    .line 112
    :array_1
    .array-data 4
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data
.end method

.method protected static getSecretId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->PREFERENCE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "secret_id"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "registrationId":Ljava/lang/String;
    return-object v1
.end method

.method protected static getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 3

    .prologue
    .line 211
    const/16 v0, 0x25

    const/16 v1, 0x4a

    const/16 v2, 0x89

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Lcom/julysystems/appx/AppXUtils;->getStateListDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected static getStateListDrawable(I)Landroid/graphics/drawable/StateListDrawable;
    .locals 9
    .param p0, "color"    # I

    .prologue
    const/16 v8, 0xff

    const/16 v5, 0x86

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 215
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 216
    .local v3, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-static {v8, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Lcom/julysystems/appx/AppXUtils;->getRoundedRect(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    .line 217
    .local v0, "roundedRectFocused":Landroid/graphics/drawable/ShapeDrawable;
    const/16 v4, 0x46

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 218
    invoke-static {p0}, Lcom/julysystems/appx/AppXUtils;->getRoundedRect(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    .line 219
    .local v2, "roundedRectUnFocused":Landroid/graphics/drawable/ShapeDrawable;
    invoke-static {v8, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Lcom/julysystems/appx/AppXUtils;->getRoundedRect(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    .line 220
    .local v1, "roundedRectSelected":Landroid/graphics/drawable/ShapeDrawable;
    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 221
    new-array v4, v7, [I

    const v5, 0x101009c

    aput v5, v4, v6

    invoke-virtual {v3, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 222
    new-array v4, v6, [I

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 223
    return-object v3
.end method

.method protected static getStateListDrawable(Landroid/graphics/drawable/GradientDrawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 6
    .param p0, "gd"    # Landroid/graphics/drawable/GradientDrawable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 228
    .local v1, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/16 v2, 0xff

    const/16 v3, 0x86

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v2}, Lcom/julysystems/appx/AppXUtils;->getRoundedRect(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    .line 229
    .local v0, "roundedRectFocused":Landroid/graphics/drawable/ShapeDrawable;
    const/16 v2, 0x46

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 231
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 232
    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 233
    new-array v2, v4, [I

    invoke-virtual {v1, v2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 234
    return-object v1
.end method

.method protected static getTokenId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->PREFERENCE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "token_id"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "registrationId":Ljava/lang/String;
    return-object v1
.end method

.method protected static initConstants(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 806
    sget-boolean v0, Lcom/julysystems/appx/AppX;->enableCaching:Z

    sput-boolean v0, Lcom/julysystems/appx/AppXConstants;->isCachingEnabled:Z

    .line 807
    sput-object p0, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    .line 808
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 809
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    sput-object p0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    .line 810
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->prevUrl:Ljava/lang/String;

    .line 811
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    if-nez v0, :cond_1

    .line 812
    new-instance v0, Lcom/julysystems/appx/AppX;

    invoke-direct {v0}, Lcom/julysystems/appx/AppX;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    .line 814
    :cond_1
    const-class v0, Lcom/julysystems/appx/AppXPageActivity;

    sput-object v0, Lcom/julysystems/appx/AppXConstants;->customActivity:Ljava/lang/Class;

    .line 815
    return-void
.end method

.method private static launchSMS(Ljava/lang/String;)V
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 576
    :try_start_0
    const-string v7, "\\?"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 577
    .local v4, "smsContent":[Ljava/lang/String;
    const-string v5, ""

    .line 578
    .local v5, "smsNo":Ljava/lang/String;
    const-string v3, ""

    .line 579
    .local v3, "smsBody":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v4

    if-lt v1, v7, :cond_1

    .line 585
    const-string v7, "sms"

    const/4 v8, 0x0

    invoke-static {v7, v5, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 586
    .local v6, "smsUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 587
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "sms_body"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    sget-object v7, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    if-eqz v7, :cond_0

    .line 589
    sget-object v7, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v7, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 593
    .end local v1    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "smsBody":Ljava/lang/String;
    .end local v4    # "smsContent":[Ljava/lang/String;
    .end local v5    # "smsNo":Ljava/lang/String;
    .end local v6    # "smsUri":Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 580
    .restart local v1    # "i":I
    .restart local v3    # "smsBody":Ljava/lang/String;
    .restart local v4    # "smsContent":[Ljava/lang/String;
    .restart local v5    # "smsNo":Ljava/lang/String;
    :cond_1
    aget-object v7, v4, v1

    const-string v8, "sms:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 581
    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "sms:"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 579
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    :cond_3
    aget-object v7, v4, v1

    const-string v8, "body="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 583
    const/4 v7, 0x1

    aget-object v7, v4, v7

    const-string v8, "body="

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_2

    .line 590
    .end local v1    # "i":I
    .end local v3    # "smsBody":Ljava/lang/String;
    .end local v4    # "smsContent":[Ljava/lang/String;
    .end local v5    # "smsNo":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected static loadContent(Landroid/content/Context;Ljava/lang/String;Lcom/julysystems/appx/AppXDataRequestListener;ZZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appxTag"    # Ljava/lang/String;
    .param p2, "mRequestListener"    # Lcom/julysystems/appx/AppXDataRequestListener;
    .param p3, "isForce"    # Z
    .param p4, "isRefreshRequest"    # Z

    .prologue
    .line 763
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 764
    invoke-static {p1}, Lcom/julysystems/appx/AppXUtils;->getCorrectedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "dataUrl":Ljava/lang/String;
    new-instance v0, Lcom/julysystems/appx/AppXDataRequest;

    const/16 v2, 0xb4

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/julysystems/appx/AppXDataRequest;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V

    .line 766
    .local v0, "dataRequest":Lcom/julysystems/appx/AppXDataRequest;
    invoke-virtual {v0, p2}, Lcom/julysystems/appx/AppXDataRequest;->setOnDataRefreshListener(Lcom/julysystems/appx/AppXDataRequestListener;)V

    .line 767
    invoke-virtual {v0, p3}, Lcom/julysystems/appx/AppXDataRequest;->setForceRequest(Z)V

    .line 768
    invoke-virtual {v0, p4}, Lcom/julysystems/appx/AppXDataRequest;->setRefreshRequest(Z)V

    .line 769
    invoke-static {v0}, Lcom/julysystems/appx/AppXURLRequestTask;->addRequest(Lcom/julysystems/appx/AppXURLRequest;)V

    .line 771
    .end local v0    # "dataRequest":Lcom/julysystems/appx/AppXDataRequest;
    .end local v1    # "dataUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static loadMenu(Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/view/Menu;Z)V
    .locals 6
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "isTitle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/Menu;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "tabMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "tabKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 331
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 332
    if-eqz p0, :cond_1

    .line 333
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 346
    :cond_1
    return-void

    .line 333
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 334
    .local v1, "key":Ljava/lang/String;
    sget-object v4, Lcom/julysystems/appx/AppXConstants;->menuIconMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 335
    .local v0, "icon":Ljava/lang/Integer;
    if-nez v0, :cond_3

    .line 336
    sget-object v4, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v5, "star"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "icon":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 337
    .restart local v0    # "icon":Ljava/lang/Integer;
    :cond_3
    invoke-interface {p2, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 338
    .local v2, "menuItem":Landroid/view/MenuItem;
    if-eqz p3, :cond_4

    .line 339
    const-string v4, ""

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 340
    :cond_4
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 341
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static loadUrl(Ljava/lang/String;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 415
    :try_start_0
    sget-object v3, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/julysystems/appx/AppXPageActivity;

    if-eqz v3, :cond_0

    .line 416
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    check-cast v2, Lcom/julysystems/appx/AppXPageActivity;

    .line 417
    .local v2, "pageActivity":Lcom/julysystems/appx/AppXPageActivity;
    iget-object v3, v2, Lcom/julysystems/appx/AppXPageActivity;->backNavigationListners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 425
    .end local v2    # "pageActivity":Lcom/julysystems/appx/AppXPageActivity;
    :cond_0
    :goto_1
    invoke-static {p0, v5, v5}, Lcom/julysystems/appx/AppXUtils;->loadUrl(Ljava/lang/String;ZZ)V

    .line 426
    return-void

    .line 417
    .restart local v2    # "pageActivity":Lcom/julysystems/appx/AppXPageActivity;
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/julysystems/appx/AppXBackNavigationListner;

    .line 418
    .local v0, "backNavigationListner":Lcom/julysystems/appx/AppXBackNavigationListner;
    invoke-interface {v0}, Lcom/julysystems/appx/AppXBackNavigationListner;->onBackPressed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 422
    .end local v0    # "backNavigationListner":Lcom/julysystems/appx/AppXBackNavigationListner;
    .end local v2    # "pageActivity":Lcom/julysystems/appx/AppXPageActivity;
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "UTILS"

    const-string v4, "Error while adding Back Navigation Listners"

    invoke-static {v3, v4, v1}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static loadUrl(Ljava/lang/String;Z)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "isForceRequest"    # Z

    .prologue
    .line 430
    :try_start_0
    sget-object v3, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/julysystems/appx/AppXPageActivity;

    if-eqz v3, :cond_0

    .line 431
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    check-cast v2, Lcom/julysystems/appx/AppXPageActivity;

    .line 432
    .local v2, "pageActivity":Lcom/julysystems/appx/AppXPageActivity;
    iget-object v3, v2, Lcom/julysystems/appx/AppXPageActivity;->backNavigationListners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 440
    .end local v2    # "pageActivity":Lcom/julysystems/appx/AppXPageActivity;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    invoke-static {p0, v3, p1}, Lcom/julysystems/appx/AppXUtils;->loadUrl(Ljava/lang/String;ZZ)V

    .line 441
    return-void

    .line 432
    .restart local v2    # "pageActivity":Lcom/julysystems/appx/AppXPageActivity;
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/julysystems/appx/AppXBackNavigationListner;

    .line 433
    .local v0, "backNavigationListner":Lcom/julysystems/appx/AppXBackNavigationListner;
    invoke-interface {v0}, Lcom/julysystems/appx/AppXBackNavigationListner;->onBackPressed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 437
    .end local v0    # "backNavigationListner":Lcom/julysystems/appx/AppXBackNavigationListner;
    .end local v2    # "pageActivity":Lcom/julysystems/appx/AppXPageActivity;
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "UTILS"

    const-string v4, "Error while adding Back Navigation Listners"

    invoke-static {v3, v4, v1}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static loadUrl(Ljava/lang/String;ZZ)V
    .locals 17
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "isAutoRefresh"    # Z
    .param p2, "isForceRequest"    # Z

    .prologue
    .line 462
    const/4 v13, 0x0

    sput-boolean v13, Lcom/julysystems/appx/AppXUtils;->pageLoadError:Z

    .line 463
    if-eqz p0, :cond_0

    const-string v13, ""

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    if-nez v13, :cond_2

    .line 467
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    instance-of v13, v13, Landroid/app/Activity;

    if-eqz v13, :cond_2

    .line 468
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    check-cast v13, Landroid/app/Activity;

    sput-object v13, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    .line 471
    :cond_2
    const-string v13, "http"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    sget-object v13, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    if-eqz v13, :cond_4

    sget-object v13, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/julysystems/appx/AppXUtils;->getDomainUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 472
    invoke-static/range {p0 .. p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 473
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    const-string v14, "Invalid URL specified"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 476
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 477
    .local v2, "intent":Landroid/content/Intent;
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    sget-object v14, Lcom/julysystems/appx/AppXConstants;->customActivity:Ljava/lang/Class;

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 478
    const/high16 v13, 0x8000000

    invoke-virtual {v2, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 479
    const/high16 v13, 0x10000000

    invoke-virtual {v2, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 480
    const-string v13, "com.july.weburl"

    move-object/from16 v0, p0

    invoke-virtual {v2, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v13, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 483
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v13, "alert://"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 484
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-static {v13}, Lcom/julysystems/appx/AppXUtils;->showLoader(Landroid/app/Activity;)V

    .line 485
    const-string v13, "alert://"

    const-string v14, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 486
    const-string v13, "?"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 487
    .local v11, "pos":I
    const-string v9, ""

    .line 488
    .local v9, "params":Ljava/lang/String;
    if-lez v11, :cond_5

    .line 489
    add-int/lit8 v13, v11, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 490
    :cond_5
    const-string v13, "&"

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 491
    .local v8, "paramArray":[Ljava/lang/String;
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    .line 492
    .local v10, "paramsDictionary":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v14, v8

    const/4 v13, 0x0

    :goto_1
    if-lt v13, v14, :cond_a

    .line 499
    invoke-static {}, Lcom/julysystems/appx/AppXUtils;->dismissLoader()V

    .line 500
    invoke-static {v10}, Lcom/julysystems/appx/AppXUtils;->showAlertBox(Ljava/util/Hashtable;)V

    .line 501
    .end local v8    # "paramArray":[Ljava/lang/String;
    .end local v9    # "params":Ljava/lang/String;
    .end local v10    # "paramsDictionary":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "pos":I
    :cond_6
    const-string v13, "sms:"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 502
    invoke-static/range {p0 .. p0}, Lcom/julysystems/appx/AppXUtils;->launchSMS(Ljava/lang/String;)V

    .line 552
    :cond_7
    :goto_2
    if-nez p1, :cond_8

    :try_start_0
    const-string v13, "#"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_8
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    if-eqz v13, :cond_0

    sget-object v13, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    instance-of v13, v13, Lcom/julysystems/appx/AppXPageActivity;

    if-eqz v13, :cond_0

    const-string/jumbo v13, "target=%2E"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "target=."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 553
    sget-object v6, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    check-cast v6, Lcom/julysystems/appx/AppXPageActivity;

    .line 554
    .local v6, "pageActivity":Lcom/julysystems/appx/AppXPageActivity;
    invoke-virtual {v6}, Lcom/julysystems/appx/AppXPageActivity;->getPageView()Lcom/julysystems/appx/AppXPageView;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v6}, Lcom/julysystems/appx/AppXPageActivity;->getPageView()Lcom/julysystems/appx/AppXPageView;

    move-result-object v13

    iget-object v13, v13, Lcom/julysystems/appx/AppXPageView;->jScrollView:Lcom/julysystems/appx/AppXScrollView;

    if-eqz v13, :cond_9

    .line 555
    invoke-virtual {v6}, Lcom/julysystems/appx/AppXPageActivity;->getPageView()Lcom/julysystems/appx/AppXPageView;

    move-result-object v13

    iget-object v13, v13, Lcom/julysystems/appx/AppXPageView;->jScrollView:Lcom/julysystems/appx/AppXScrollView;

    invoke-virtual {v13}, Lcom/julysystems/appx/AppXScrollView;->getScrollY()I

    move-result v13

    sput v13, Lcom/julysystems/appx/AppXScrollView;->prevScrollY:I

    .line 557
    :cond_9
    const-string v13, "#"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 558
    const-string v13, "#"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 559
    .local v1, "hashPos":I
    const-string v13, "&"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    if-lez v13, :cond_15

    .line 560
    add-int/lit8 v13, v1, 0x1

    const-string v14, "&"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/julysystems/appx/AppXScrollView;->anchorTag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 568
    .end local v1    # "hashPos":I
    .end local v6    # "pageActivity":Lcom/julysystems/appx/AppXPageActivity;
    :catch_0
    move-exception v13

    goto/16 :goto_0

    .line 492
    .restart local v8    # "paramArray":[Ljava/lang/String;
    .restart local v9    # "params":Ljava/lang/String;
    .restart local v10    # "paramsDictionary":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "pos":I
    :cond_a
    aget-object v7, v8, v13

    .line 493
    .local v7, "param":Ljava/lang/String;
    const-string v15, "="

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, "keyValue":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v3, v4, v15

    .line 496
    .local v3, "key":Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v15, v4, v15

    invoke-static {v15}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 497
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {v10, v3, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 503
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keyValue":[Ljava/lang/String;
    .end local v7    # "param":Ljava/lang/String;
    .end local v8    # "paramArray":[Ljava/lang/String;
    .end local v9    # "params":Ljava/lang/String;
    .end local v10    # "paramsDictionary":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "pos":I
    .end local v12    # "value":Ljava/lang/String;
    :cond_b
    const-string/jumbo v13, "tel:"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 504
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    if-eqz v13, :cond_7

    .line 505
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.DIAL"

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v13, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 506
    :cond_c
    const-string v13, "mailto:"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 507
    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v5, "myIntent":Landroid/content/Intent;
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 509
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v13, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 510
    .end local v5    # "myIntent":Landroid/content/Intent;
    :cond_d
    const-string v13, "julymx://"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 511
    const-string v13, "julymx://"

    const-string v14, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 512
    const-string v13, "download?"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 513
    const-string v13, "download?"

    const-string v14, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 514
    new-instance v2, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v2, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 515
    .restart local v2    # "intent":Landroid/content/Intent;
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v13, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 516
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_e
    const-string/jumbo v13, "video?"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 517
    const-string/jumbo v13, "video?"

    const-string v14, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 518
    invoke-static/range {p0 .. p0}, Lcom/julysystems/appx/AppXUtils;->loadVidoeView(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 520
    :cond_f
    const-string/jumbo v13, "target=."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_12

    const-string/jumbo v13, "target=%2E"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_12

    const-string/jumbo v13, "target=update"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_12

    .line 521
    invoke-static/range {p0 .. p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 522
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    const-string v14, "Invalid URL specified"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 527
    :cond_10
    invoke-static/range {p0 .. p0}, Lcom/julysystems/appx/AppXUtils;->getCorrectedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 528
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Loading Url: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const/4 v13, 0x1

    sput-boolean v13, Lcom/julysystems/appx/AppX;->isLoading:Z

    .line 530
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 531
    .restart local v2    # "intent":Landroid/content/Intent;
    sget-object v13, Lcom/julysystems/appx/AppXConstants;->customActivity:Ljava/lang/Class;

    if-nez v13, :cond_11

    .line 532
    const-class v13, Lcom/julysystems/appx/AppXPageActivity;

    sput-object v13, Lcom/julysystems/appx/AppXConstants;->customActivity:Ljava/lang/Class;

    .line 533
    :cond_11
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    sget-object v14, Lcom/julysystems/appx/AppXConstants;->customActivity:Ljava/lang/Class;

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 534
    const-string v13, "com.july.pageUrl"

    move-object/from16 v0, p0

    invoke-virtual {v2, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string v13, "com.july.forceRequest"

    move/from16 v0, p2

    invoke-virtual {v2, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 536
    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {v2, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 537
    const/high16 v13, 0x800000

    invoke-virtual {v2, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 538
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v13, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 540
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_12
    const-string v13, "http"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_13

    .line 541
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 542
    :cond_13
    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .restart local v5    # "myIntent":Landroid/content/Intent;
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 544
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    if-eqz v13, :cond_14

    .line 545
    sget-object v13, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v13, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 546
    :cond_14
    const-string/jumbo v13, "target=update"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_7

    .line 547
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_2

    .line 562
    .end local v5    # "myIntent":Landroid/content/Intent;
    .restart local v1    # "hashPos":I
    .restart local v6    # "pageActivity":Lcom/julysystems/appx/AppXPageActivity;
    :cond_15
    add-int/lit8 v13, v1, 0x1

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/julysystems/appx/AppXScrollView;->anchorTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 565
    .end local v1    # "hashPos":I
    :cond_16
    const-string v13, ""

    sput-object v13, Lcom/julysystems/appx/AppXScrollView;->anchorTag:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static loadVidoeView(Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 596
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    :cond_0
    sget-object v1, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    const-string v2, "Video path not available"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 603
    :goto_0
    return-void

    .line 599
    :cond_1
    const-string/jumbo v1, "video:"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 600
    new-instance v0, Lcom/julysystems/appx/AppXVideoAsyncTask;

    invoke-direct {v0, p0}, Lcom/julysystems/appx/AppXVideoAsyncTask;-><init>(Ljava/lang/String;)V

    .line 601
    .local v0, "appxVideoAsyncTask":Lcom/julysystems/appx/AppXVideoAsyncTask;
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXVideoAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected static loadView(Landroid/content/Context;Ljava/lang/String;Lcom/julysystems/appx/AppXDataRequestListener;Lcom/julysystems/appx/AppXRegistrationListner;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appxTag"    # Ljava/lang/String;
    .param p2, "mRequestListener"    # Lcom/julysystems/appx/AppXDataRequestListener;
    .param p3, "mRegistrationListener"    # Lcom/julysystems/appx/AppXRegistrationListner;

    .prologue
    const/4 v4, 0x0

    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, "appXViewUrl":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 776
    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 777
    move-object v0, p1

    .line 787
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 788
    invoke-static {v0}, Lcom/julysystems/appx/AppXUtils;->getDomainUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, "baseUrlStr":Ljava/lang/String;
    sput-object v1, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    .line 790
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->isRegIdSendToProtal(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 791
    invoke-static {v0}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->sendAppXRegIDToPortal(Ljava/lang/String;)V

    .line 793
    :cond_1
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 794
    .local v2, "regId":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 795
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->setPushClass(Landroid/content/Context;)V

    .line 796
    invoke-static {v0}, Lcom/julysystems/appx/AppX;->initAppXGCM(Ljava/lang/String;)V

    .line 797
    invoke-static {}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->sendAppXRegIDToServer()V

    .line 799
    :cond_2
    invoke-static {p0, v0, p2, v4, v4}, Lcom/julysystems/appx/AppXUtils;->loadContent(Landroid/content/Context;Ljava/lang/String;Lcom/julysystems/appx/AppXDataRequestListener;ZZ)V

    .line 803
    .end local v1    # "baseUrlStr":Ljava/lang/String;
    .end local v2    # "regId":Ljava/lang/String;
    :cond_3
    return-void

    .line 779
    :cond_4
    invoke-static {}, Lcom/julysystems/appx/AppX;->updateAppXTagMap()V

    .line 780
    sget-object v3, Lcom/julysystems/appx/AppX;->urlTagMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 781
    sget-object v3, Lcom/julysystems/appx/AppX;->urlTagMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "appXViewUrl":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "appXViewUrl":Ljava/lang/String;
    goto :goto_0

    .line 783
    :cond_5
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->isRegistered(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 784
    invoke-static {p3}, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->addUpdateListener(Lcom/julysystems/appx/AppXRegistrationListner;)V

    goto :goto_0
.end method

.method protected static processScheme(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 833
    :try_start_0
    invoke-static {p0}, Lcom/julysystems/appx/AppXUtils;->schemeJSONArray(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    .line 834
    .local v2, "jsonSchemesArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 835
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 836
    .local v3, "numberOfItems":I
    if-lez v3, :cond_0

    .line 837
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 850
    .end local v1    # "i":I
    .end local v2    # "jsonSchemesArray":Lorg/json/JSONArray;
    .end local v3    # "numberOfItems":I
    :cond_0
    :goto_1
    const/4 v4, 0x0

    :goto_2
    return v4

    .line 838
    .restart local v1    # "i":I
    .restart local v2    # "jsonSchemesArray":Lorg/json/JSONArray;
    .restart local v3    # "numberOfItems":I
    :cond_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 842
    const/4 v4, 0x1

    goto :goto_2

    .line 837
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    .end local v1    # "i":I
    .end local v2    # "jsonSchemesArray":Lorg/json/JSONArray;
    .end local v3    # "numberOfItems":I
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/julysystems/appx/AppXUtils;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static reloadCurrentPage()V
    .locals 3

    .prologue
    .line 447
    sget-object v0, Lcom/julysystems/appx/AppXUtils;->currentUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 448
    sget-object v0, Lcom/julysystems/appx/AppXUtils;->currentUrl:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/julysystems/appx/AppXUtils;->loadUrl(Ljava/lang/String;ZZ)V

    .line 449
    :cond_0
    return-void
.end method

.method protected static removeExtraSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 93
    if-eqz p0, :cond_0

    .line 94
    const-string v0, "\t"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " +"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static schemeJSONArray(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 818
    invoke-static {p0}, Lcom/julysystems/appx/AppX;->getSchemeObjectString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 819
    .local v3, "strSchemesJson":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 821
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 822
    .local v2, "jsonSchemesObj":Lorg/json/JSONObject;
    const-string v4, "android"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 828
    .end local v2    # "jsonSchemesObj":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/julysystems/appx/AppXUtils;->TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "JSON Parser"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static setImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isPermanentCache"    # Z

    .prologue
    .line 315
    sget-boolean v2, Lcom/julysystems/appx/AppXConstants;->isCachingEnabled:Z

    if-eqz v2, :cond_0

    .line 316
    invoke-static {p1}, Lcom/julysystems/appx/AppXCache;->getFromCache(Ljava/lang/String;)Lcom/julysystems/appx/AppXCacheItem;

    move-result-object v1

    .line 317
    .local v1, "cache":Lcom/julysystems/appx/AppXCacheItem;
    if-eqz v1, :cond_0

    .line 318
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/julysystems/appx/AppXCacheItem;->getBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 319
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 326
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "cache":Lcom/julysystems/appx/AppXCacheItem;
    :goto_0
    return-void

    .line 325
    :cond_0
    new-instance v3, Lcom/julysystems/appx/AppXImageRequest;

    if-eqz p2, :cond_1

    const v2, 0x1e13380

    :goto_1
    invoke-direct {v3, p1, v2, p0}, Lcom/julysystems/appx/AppXImageRequest;-><init>(Ljava/lang/String;ILandroid/widget/ImageView;)V

    invoke-static {v3}, Lcom/julysystems/appx/AppXURLRequestTask;->addRequest(Lcom/julysystems/appx/AppXURLRequest;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x5460

    goto :goto_1
.end method

.method protected static setSecretID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "secretId"    # Ljava/lang/String;

    .prologue
    .line 156
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->PREFERENCE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 157
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "secret_id"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    return-void
.end method

.method protected static setTokenID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->PREFERENCE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 135
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "token_id"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    return-void
.end method

.method private static showAlertBox(Ljava/util/Hashtable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 607
    .local p0, "paramsDictionary":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 608
    .local v3, "enuEl":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "title":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "message":Ljava/lang/String;
    const/4 v1, 0x0

    .line 609
    .local v1, "btntitle":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-nez v7, :cond_1

    .line 619
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v7, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 620
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/julysystems/appx/AppXUtils$2;

    invoke-direct {v8}, Lcom/julysystems/appx/AppXUtils$2;-><init>()V

    invoke-virtual {v7, v1, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 625
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 626
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 627
    return-void

    .line 610
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 611
    .local v4, "key":Ljava/lang/Object;
    const-string/jumbo v7, "title"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 612
    invoke-virtual {p0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "title":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 613
    .restart local v6    # "title":Ljava/lang/String;
    goto :goto_0

    :cond_2
    const-string v7, "message"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 614
    invoke-virtual {p0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "message":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 615
    .restart local v5    # "message":Ljava/lang/String;
    goto :goto_0

    :cond_3
    const-string v7, "btntitle"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 616
    invoke-virtual {p0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "btntitle":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "btntitle":Ljava/lang/String;
    goto :goto_0
.end method

.method public static showFormDialog(Lcom/julysystems/appx/AppXDialog;)V
    .locals 4
    .param p0, "jDialog"    # Lcom/julysystems/appx/AppXDialog;

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXDialog;->getItems()[Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 691
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 692
    iget-object v3, p0, Lcom/julysystems/appx/AppXDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 693
    new-instance v3, Lcom/julysystems/appx/AppXUtils$4;

    invoke-direct {v3, p0, v2}, Lcom/julysystems/appx/AppXUtils$4;-><init>(Lcom/julysystems/appx/AppXDialog;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 699
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 700
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 701
    return-void
.end method

.method public static showLoader(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 723
    :try_start_0
    sget-object v1, Lcom/julysystems/appx/AppXUtils;->pd:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 724
    const-string v1, ""

    const-string v2, "Loading ..."

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    sput-object v1, Lcom/julysystems/appx/AppXUtils;->pd:Landroid/app/ProgressDialog;

    .line 733
    :goto_0
    return-void

    .line 726
    :cond_0
    sget-object v1, Lcom/julysystems/appx/AppXUtils;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 727
    const-string v1, ""

    const-string v2, "Loading ..."

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    sput-object v1, Lcom/julysystems/appx/AppXUtils;->pd:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception showLoader "

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showUrlDialog(Lcom/julysystems/appx/AppXDialog;)V
    .locals 4
    .param p0, "jDialog"    # Lcom/julysystems/appx/AppXDialog;

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXDialog;->getItems()[Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 670
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 671
    iget-object v3, p0, Lcom/julysystems/appx/AppXDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 672
    new-instance v3, Lcom/julysystems/appx/AppXUtils$3;

    invoke-direct {v3, p0, v2}, Lcom/julysystems/appx/AppXUtils$3;-><init>(Lcom/julysystems/appx/AppXDialog;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 684
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 685
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 686
    return-void
.end method

.method public static wrap(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "displayWidth"    # F
    .param p2, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0xa

    .line 630
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v2, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 633
    .local v4, "start":I
    :cond_0
    const/4 v5, 0x0

    .line 634
    .local v5, "strWidth":I
    const/4 v1, 0x0

    .line 637
    .local v1, "lastSpace":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v4, v6, :cond_1

    .line 664
    :goto_0
    return-object v2

    .line 640
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 641
    .local v0, "ch":C
    if-eq v0, v8, :cond_2

    if-ne v0, v9, :cond_3

    .line 642
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 644
    :cond_3
    move v3, v4

    .local v3, "pos":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v3, v6, :cond_7

    .line 657
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_5

    if-lez v1, :cond_5

    int-to-float v6, v5

    cmpl-float v6, v6, p1

    if-ltz v6, :cond_5

    .line 658
    move v3, v1

    .line 659
    :cond_5
    if-ge v4, v3, :cond_6

    .line 660
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    move v4, v3

    .line 663
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 632
    if-lt v4, v6, :cond_0

    goto :goto_0

    .line 645
    :cond_7
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 646
    if-eq v0, v8, :cond_4

    .line 649
    if-ne v0, v9, :cond_8

    .line 650
    move v1, v3

    .line 652
    :cond_8
    invoke-virtual {p2, p0, v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 653
    int-to-float v6, v5

    cmpl-float v6, v6, p1

    if-gez v6, :cond_4

    .line 644
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
