.class public Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;
.super Landroid/widget/BaseAdapter;
.source "FullScreenCarouselAdapter.java"


# instance fields
.field private mBitmapPlaceholder:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private final mPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/widget/ImageView$ScaleType;Landroid/content/Context;)V
    .locals 1
    .param p2, "scaleType"    # Landroid/widget/ImageView$ScaleType;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "photoUrl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;->mBitmapPlaceholder:Landroid/graphics/Bitmap;

    .line 60
    iput-object p1, p0, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;->mPhotos:Ljava/util/List;

    .line 61
    iput-object p3, p0, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 63
    return-void
.end method

.method private getPlaceholder()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 83
    iget-object v5, p0, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;->mBitmapPlaceholder:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    .line 84
    iget-object v5, p0, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 86
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 87
    .local v3, "x":I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 89
    .local v4, "y":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, "bm1":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$drawable;->ic_menu_gallery:I

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 91
    .local v1, "bm2":Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;->overlayBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;->mBitmapPlaceholder:Landroid/graphics/Bitmap;

    .line 93
    .end local v0    # "bm1":Landroid/graphics/Bitmap;
    .end local v1    # "bm2":Landroid/graphics/Bitmap;
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_0
    iget-object v5, p0, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;->mBitmapPlaceholder:Landroid/graphics/Bitmap;

    return-object v5
.end method

.method private static overlayBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bmp1"    # Landroid/graphics/Bitmap;
    .param p1, "bmp2"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    .line 120
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 121
    .local v2, "x":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 123
    .local v3, "y":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    .local v0, "bmOverlay":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p0, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 128
    div-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, p1, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;->mPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;->mPhotos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, -0x1

    .line 99
    iget-object v2, p0, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;->mPhotos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "url":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 102
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "i":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    :goto_0
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/base/FullScreenCarouselAdapter;->getPlaceholder()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    sget v2, Lcom/eventgenie/android/R$string;->tag_image_position:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 115
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 116
    return-object v0

    .end local v0    # "i":Landroid/widget/ImageView;
    :cond_0
    move-object v0, p2

    .line 106
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0    # "i":Landroid/widget/ImageView;
    goto :goto_0
.end method
