.class public Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;
.super Landroid/widget/BaseAdapter;
.source "FlickrAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$1;,
        Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;
    }
.end annotation


# instance fields
.field private final mAdapterType:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

.field private mBitmapPlaceholder:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private final mPhotos:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;Landroid/content/Context;Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;)V
    .locals 1
    .param p1, "photos"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mBitmapPlaceholder:Landroid/graphics/Bitmap;

    .line 64
    iput-object p1, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mPhotos:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .line 65
    iput-object p2, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mContext:Landroid/content/Context;

    .line 66
    iput-object p3, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mAdapterType:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    .line 67
    return-void
.end method

.method private getAppropriatePhotosize(Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;
    .locals 8
    .param p1, "type"    # Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    .prologue
    const/16 v7, 0x400

    const/16 v6, 0x1f4

    .line 71
    const/16 v1, 0x1f4

    .line 72
    .local v1, "MEDIUM_SIZE":I
    const/16 v0, 0x400

    .line 74
    .local v0, "LARGE_SIZE":I
    const/4 v3, 0x0

    .line 76
    .local v3, "pSize":Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->getLargestDimension()I

    move-result v2

    .line 77
    .local v2, "largest":I
    sget-object v4, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$1;->$SwitchMap$com$eventgenie$android$adapters$newsandsocial$FlickrAdapter$AdapterType:[I

    invoke-virtual {p1}, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 98
    sget-object v3, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->MEDIUM:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    .line 101
    :goto_0
    if-nez v3, :cond_0

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ getAppropriatePhotosize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - pSize is null!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 103
    sget-object v3, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->MEDIUM:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    .line 105
    :cond_0
    return-object v3

    .line 80
    :pswitch_0
    const/4 v4, 0x1

    if-lt v2, v4, :cond_1

    if-ge v2, v6, :cond_1

    .line 81
    sget-object v3, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->SMALL:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    goto :goto_0

    .line 83
    :cond_1
    if-lt v2, v6, :cond_2

    if-ge v2, v7, :cond_2

    .line 84
    sget-object v3, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->MEDIUM:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    goto :goto_0

    .line 86
    :cond_2
    if-lt v2, v7, :cond_3

    .line 87
    sget-object v3, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->LARGE:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    goto :goto_0

    .line 89
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ getAppropriatePhotosize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")- We shouldn\'t be here! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 90
    sget-object v3, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->MEDIUM:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    .line 93
    goto :goto_0

    .line 95
    :pswitch_1
    sget-object v3, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->SMALL_SQUARE:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    .line 96
    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getLargestDimension()I
    .locals 5

    .prologue
    .line 125
    iget-object v4, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 127
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 128
    .local v2, "x":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 129
    .local v3, "y":I
    const/4 v1, -0x1

    .line 131
    .local v1, "largest":I
    if-le v2, v3, :cond_0

    .line 132
    move v1, v2

    .line 137
    :goto_0
    return v1

    .line 134
    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private getPlaceholder()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 142
    iget-object v5, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mBitmapPlaceholder:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    .line 143
    iget-object v5, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 145
    .local v2, "display":Landroid/view/Display;
    const/4 v3, 0x1

    .line 146
    .local v3, "x":I
    const/4 v4, 0x1

    .line 148
    .local v4, "y":I
    sget-object v5, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$1;->$SwitchMap$com$eventgenie$android$adapters$newsandsocial$FlickrAdapter$AdapterType:[I

    iget-object v6, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mAdapterType:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    invoke-virtual {v6}, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 158
    :goto_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    .local v0, "bm1":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$drawable;->ic_menu_gallery:I

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 160
    .local v1, "bm2":Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->overlayBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mBitmapPlaceholder:Landroid/graphics/Bitmap;

    .line 162
    .end local v0    # "bm1":Landroid/graphics/Bitmap;
    .end local v1    # "bm2":Landroid/graphics/Bitmap;
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_0
    iget-object v5, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mBitmapPlaceholder:Landroid/graphics/Bitmap;

    return-object v5

    .line 150
    .restart local v2    # "display":Landroid/view/Display;
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :pswitch_0
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 151
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 152
    goto :goto_0

    .line 154
    :pswitch_1
    const/16 v3, 0x4b

    .line 155
    const/16 v4, 0x4b

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static overlayBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bmp1"    # Landroid/graphics/Bitmap;
    .param p1, "bmp2"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    .line 203
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 204
    .local v2, "x":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 206
    .local v3, "y":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    .local v0, "bmOverlay":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 209
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p0, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 212
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

    .line 216
    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mPhotos:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->getCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mPhotos:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->get(I)Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 121
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, -0x1

    .line 169
    if-nez p2, :cond_0

    .line 170
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, "i":Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 174
    sget-object v3, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$1;->$SwitchMap$com$eventgenie$android$adapters$newsandsocial$FlickrAdapter$AdapterType:[I

    iget-object v4, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mAdapterType:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    invoke-virtual {v4}, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 188
    :goto_0
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->getPlaceholder()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    iget-object v3, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mPhotos:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    invoke-virtual {v3, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->get(I)Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mAdapterType:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    invoke-direct {p0, v4}, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->getAppropriatePhotosize(Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->getUrl(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "url":Ljava/lang/String;
    sget v3, Lcom/eventgenie/android/R$string;->tag_image_caption:I

    iget-object v4, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mPhotos:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    invoke-virtual {v4, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->get(I)Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 193
    sget v3, Lcom/eventgenie/android/R$string;->tag_image_date:I

    iget-object v4, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mPhotos:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    invoke-virtual {v4, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->get(I)Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 194
    sget v3, Lcom/eventgenie/android/R$string;->tag_image_position:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 195
    sget v3, Lcom/eventgenie/android/R$string;->tag_image_flicker_url_mobile:I

    iget-object v4, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mPhotos:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    invoke-virtual {v4, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->get(I)Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->getPhotpageUrl(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 196
    sget v3, Lcom/eventgenie/android/R$string;->tag_image_flicker_url_desktop:I

    iget-object v4, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mPhotos:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    invoke-virtual {v4, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->get(I)Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->getPhotpageUrl(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 198
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 199
    return-object v0

    .line 176
    .end local v2    # "url":Ljava/lang/String;
    :pswitch_0
    new-instance v3, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 179
    :pswitch_1
    const/16 v3, 0x4b

    iget-object v4, p0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v1

    .line 180
    .local v1, "scale":I
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .end local v0    # "i":Landroid/widget/ImageView;
    .end local v1    # "scale":I
    :cond_0
    move-object v0, p2

    .line 184
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0    # "i":Landroid/widget/ImageView;
    goto/16 :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
