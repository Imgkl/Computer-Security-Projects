.class Lcom/julysystems/appx/AppXImageRequest;
.super Lcom/julysystems/appx/AppXURLRequest;
.source "AppXImageRequest.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/widget/ImageView;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cacheDuration"    # I
    .param p3, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/julysystems/appx/AppXURLRequest;-><init>(Ljava/lang/String;I)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXImageRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 20
    iput-object p3, p0, Lcom/julysystems/appx/AppXImageRequest;->imageView:Landroid/widget/ImageView;

    .line 21
    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public postExecute()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/julysystems/appx/AppXImageRequest;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/julysystems/appx/AppXImageRequest;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/julysystems/appx/AppXImageRequest;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXImageRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 46
    :cond_0
    return-void
.end method

.method public processData([BZ)Z
    .locals 5
    .param p1, "data"    # [B
    .param p2, "cached"    # Z

    .prologue
    const/4 v2, 0x0

    .line 26
    iget-boolean v3, p0, Lcom/julysystems/appx/AppXImageRequest;->cancelled:Z

    if-eqz v3, :cond_0

    .line 36
    :goto_0
    return v2

    .line 29
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/julysystems/appx/AppXImageRequest;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/julysystems/appx/AppXCache;->getFromCache(Ljava/lang/String;)Lcom/julysystems/appx/AppXCacheItem;

    move-result-object v0

    .line 30
    .local v0, "cacheItem":Lcom/julysystems/appx/AppXCacheItem;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/julysystems/appx/AppXCacheItem;->getBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/julysystems/appx/AppXImageRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 31
    iget-object v3, p0, Lcom/julysystems/appx/AppXImageRequest;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 32
    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/julysystems/appx/AppXImageRequest;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 30
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 34
    .end local v0    # "cacheItem":Lcom/julysystems/appx/AppXCacheItem;
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ImageRequest"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
