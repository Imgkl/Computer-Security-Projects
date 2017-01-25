.class Lcom/julysystems/appx/AppXRenderImageRequest;
.super Lcom/julysystems/appx/AppXURLRequest;
.source "AppXRenderImageRequest.java"


# instance fields
.field private final oldRenderFieldRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/julysystems/appx/AppXRenderOldRenderField;",
            ">;"
        }
    .end annotation
.end field

.field private final rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "rectF"    # Landroid/graphics/RectF;
    .param p3, "oldRenderField"    # Lcom/julysystems/appx/AppXRenderOldRenderField;

    .prologue
    .line 24
    const v0, 0x1e13380

    invoke-direct {p0, p1, v0}, Lcom/julysystems/appx/AppXURLRequest;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p2, p0, Lcom/julysystems/appx/AppXRenderImageRequest;->rectF:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXRenderImageRequest;->oldRenderFieldRef:Ljava/lang/ref/WeakReference;

    .line 27
    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public postExecute()V
    .locals 3

    .prologue
    .line 68
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 69
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/julysystems/appx/AppXRenderImageRequest;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 70
    iget-object v2, p0, Lcom/julysystems/appx/AppXRenderImageRequest;->oldRenderFieldRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/julysystems/appx/AppXRenderOldRenderField;

    .line 71
    .local v0, "oldRenderField":Lcom/julysystems/appx/AppXRenderOldRenderField;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderOldRenderField;->invalidate(Landroid/graphics/Rect;)V

    .line 73
    :cond_0
    return-void
.end method

.method public processData([BZ)Z
    .locals 14
    .param p1, "data"    # [B
    .param p2, "cached"    # Z

    .prologue
    .line 30
    iget-boolean v9, p0, Lcom/julysystems/appx/AppXRenderImageRequest;->cancelled:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderImageRequest;->oldRenderFieldRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    .line 31
    :cond_0
    const/4 v9, 0x0

    .line 63
    :goto_0
    return v9

    .line 32
    :cond_1
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderImageRequest;->url:Ljava/lang/String;

    invoke-static {v9}, Lcom/julysystems/appx/AppXCache;->getFromCache(Ljava/lang/String;)Lcom/julysystems/appx/AppXCacheItem;

    move-result-object v1

    .line 33
    .local v1, "cacheItem":Lcom/julysystems/appx/AppXCacheItem;
    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Lcom/julysystems/appx/AppXCacheItem;->getBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 34
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-nez v0, :cond_2

    .line 35
    const/4 v9, 0x0

    array-length v10, p1

    invoke-static {p1, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    :cond_2
    if-eqz v0, :cond_8

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 38
    .local v8, "srcWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 39
    .local v5, "srcHeight":I
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderImageRequest;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    float-to-int v3, v9

    .line 40
    .local v3, "dstWidth":I
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderImageRequest;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    float-to-int v2, v9

    .line 41
    .local v2, "dstHeight":I
    if-lez v3, :cond_5

    .line 42
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 43
    .local v6, "scaleFactor":D
    if-le v8, v3, :cond_3

    .line 44
    int-to-double v10, v3

    int-to-double v12, v8

    div-double v6, v10, v12

    .line 46
    :cond_3
    int-to-double v10, v5

    mul-double/2addr v10, v6

    int-to-double v12, v2

    cmpl-double v9, v10, v12

    if-lez v9, :cond_4

    .line 47
    int-to-double v10, v2

    int-to-double v12, v5

    div-double v6, v10, v12

    .line 49
    :cond_4
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v6, v10

    if-eqz v9, :cond_5

    .line 50
    int-to-double v10, v8

    mul-double/2addr v10, v6

    double-to-int v9, v10

    int-to-double v10, v5

    mul-double/2addr v10, v6

    double-to-int v10, v10

    const/4 v11, 0x0

    invoke-static {v0, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    const-string v9, "Bitmap Scaling"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "URL "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/julysystems/appx/AppXRenderImageRequest;->url:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "is being scaled on client side. Needs to be handled server side"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v6    # "scaleFactor":D
    :cond_5
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderImageRequest;->oldRenderFieldRef:Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_8

    .line 56
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderImageRequest;->oldRenderFieldRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/julysystems/appx/AppXRenderOldRenderField;

    .line 57
    .local v4, "oldRenderField":Lcom/julysystems/appx/AppXRenderOldRenderField;
    if-nez v4, :cond_7

    .line 58
    const/4 v9, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "dstHeight":I
    .end local v3    # "dstWidth":I
    .end local v4    # "oldRenderField":Lcom/julysystems/appx/AppXRenderOldRenderField;
    .end local v5    # "srcHeight":I
    .end local v8    # "srcWidth":I
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 59
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "dstHeight":I
    .restart local v3    # "dstWidth":I
    .restart local v4    # "oldRenderField":Lcom/julysystems/appx/AppXRenderOldRenderField;
    .restart local v5    # "srcHeight":I
    .restart local v8    # "srcWidth":I
    :cond_7
    sget-object v9, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageTable:Ljava/util/Hashtable;

    if-eqz v9, :cond_8

    .line 60
    sget-object v9, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageTable:Ljava/util/Hashtable;

    iget-object v10, p0, Lcom/julysystems/appx/AppXRenderImageRequest;->url:Ljava/lang/String;

    new-instance v11, Ljava/lang/ref/SoftReference;

    invoke-direct {v11, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .end local v2    # "dstHeight":I
    .end local v3    # "dstWidth":I
    .end local v4    # "oldRenderField":Lcom/julysystems/appx/AppXRenderOldRenderField;
    .end local v5    # "srcHeight":I
    .end local v8    # "srcWidth":I
    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_0
.end method
