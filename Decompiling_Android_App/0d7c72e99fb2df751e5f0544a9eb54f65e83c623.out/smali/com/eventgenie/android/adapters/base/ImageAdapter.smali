.class public Lcom/eventgenie/android/adapters/base/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# instance fields
.field private mBitmapPlaceholder:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private final mImageContainerLayoutId:I

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

.field private final scaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/widget/ImageView$ScaleType;ILandroid/content/Context;)V
    .locals 1
    .param p2, "scaleType"    # Landroid/widget/ImageView$ScaleType;
    .param p3, "imageContainerLayoutId"    # I
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/ImageView$ScaleType;",
            "I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "photoUrl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/base/ImageAdapter;->mBitmapPlaceholder:Landroid/graphics/Bitmap;

    .line 55
    iput-object p1, p0, Lcom/eventgenie/android/adapters/base/ImageAdapter;->mPhotos:Ljava/util/List;

    .line 56
    iput-object p4, p0, Lcom/eventgenie/android/adapters/base/ImageAdapter;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/eventgenie/android/adapters/base/ImageAdapter;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 58
    iput p3, p0, Lcom/eventgenie/android/adapters/base/ImageAdapter;->mImageContainerLayoutId:I

    .line 59
    return-void
.end method

.method private getPlaceholder()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_menu_gallery:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/base/ImageAdapter;->mBitmapPlaceholder:Landroid/graphics/Bitmap;

    .line 88
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ImageAdapter;->mBitmapPlaceholder:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ImageAdapter;->mPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ImageAdapter;->mPhotos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 103
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    iget-object v3, p0, Lcom/eventgenie/android/adapters/base/ImageAdapter;->mPhotos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    .local v1, "url":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 68
    iget-object v3, p0, Lcom/eventgenie/android/adapters/base/ImageAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p0, Lcom/eventgenie/android/adapters/base/ImageAdapter;->mImageContainerLayoutId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->image:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    .local v0, "i":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/eventgenie/android/adapters/base/ImageAdapter;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    :goto_0
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/base/ImageAdapter;->getPlaceholder()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    sget v3, Lcom/eventgenie/android/R$string;->tag_image_position:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 80
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 81
    return-object v2

    .line 72
    .end local v0    # "i":Landroid/widget/ImageView;
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .line 73
    .restart local v2    # "v":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->image:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .restart local v0    # "i":Landroid/widget/ImageView;
    goto :goto_0
.end method
