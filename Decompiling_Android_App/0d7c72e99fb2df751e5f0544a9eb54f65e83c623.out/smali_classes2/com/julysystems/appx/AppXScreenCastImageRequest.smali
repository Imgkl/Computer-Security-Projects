.class Lcom/julysystems/appx/AppXScreenCastImageRequest;
.super Lcom/julysystems/appx/AppXURLRequest;
.source "AppXScreenCastImageRequest.java"


# instance fields
.field private final screenCastRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/julysystems/appx/AppXRenderScreenCastView;Lcom/julysystems/appx/AppXRenderRectC;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "screenCastView"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "rectC"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    .line 21
    const v0, 0x1e13380

    invoke-direct {p0, p1, v0}, Lcom/julysystems/appx/AppXURLRequest;-><init>(Ljava/lang/String;I)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXScreenCastImageRequest;->url:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/julysystems/appx/AppXScreenCastImageRequest;->url:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXScreenCastImageRequest;->screenCastRef:Ljava/lang/ref/WeakReference;

    .line 25
    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public postExecute()V
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/julysystems/appx/AppXScreenCastImageRequest;->screenCastRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/julysystems/appx/AppXRenderScreenCastView;

    .line 51
    .local v0, "screenCastView":Lcom/julysystems/appx/AppXRenderScreenCastView;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXRenderScreenCastView;->requestLayout()V

    .line 53
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXRenderScreenCastView;->postInvalidate()V

    .line 65
    :cond_0
    return-void
.end method

.method public processData([BZ)Z
    .locals 7
    .param p1, "data"    # [B
    .param p2, "cached"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 29
    iget-boolean v5, p0, Lcom/julysystems/appx/AppXScreenCastImageRequest;->cancelled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/julysystems/appx/AppXScreenCastImageRequest;->screenCastRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 44
    :cond_1
    :goto_0
    return v3

    .line 31
    :cond_2
    iget-object v5, p0, Lcom/julysystems/appx/AppXScreenCastImageRequest;->url:Ljava/lang/String;

    invoke-static {v5}, Lcom/julysystems/appx/AppXCache;->getFromCache(Ljava/lang/String;)Lcom/julysystems/appx/AppXCacheItem;

    move-result-object v1

    .line 32
    .local v1, "cacheItem":Lcom/julysystems/appx/AppXCacheItem;
    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Lcom/julysystems/appx/AppXCacheItem;->getBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-nez v0, :cond_3

    .line 34
    array-length v5, p1

    invoke-static {p1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    :cond_3
    if-eqz v0, :cond_1

    .line 36
    iget-object v4, p0, Lcom/julysystems/appx/AppXScreenCastImageRequest;->screenCastRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    .line 37
    iget-object v4, p0, Lcom/julysystems/appx/AppXScreenCastImageRequest;->screenCastRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/julysystems/appx/AppXRenderScreenCastView;

    .line 38
    .local v2, "screenCastView":Lcom/julysystems/appx/AppXRenderScreenCastView;
    if-eqz v2, :cond_1

    .line 40
    sget-object v4, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageTable:Ljava/util/Hashtable;

    if-eqz v4, :cond_1

    .line 41
    sget-object v4, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageTable:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/julysystems/appx/AppXScreenCastImageRequest;->url:Ljava/lang/String;

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "screenCastView":Lcom/julysystems/appx/AppXRenderScreenCastView;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
