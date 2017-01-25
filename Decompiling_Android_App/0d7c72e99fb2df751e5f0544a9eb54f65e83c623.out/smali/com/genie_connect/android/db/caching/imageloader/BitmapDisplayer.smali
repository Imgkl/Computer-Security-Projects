.class Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;
.super Ljava/lang/Object;
.source "BitmapDisplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CROSSFADE_DURATION:I = 0x12c


# instance fields
.field final mBitmap:Landroid/graphics/Bitmap;

.field final mCornerRadius:I

.field final mImageView:Landroid/widget/ImageView;

.field final mPlaceholderDrawableId:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/widget/ImageView;II)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "cornerRadius"    # I
    .param p4, "placeholderDrawableId"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;->mBitmap:Landroid/graphics/Bitmap;

    .line 49
    iput-object p2, p0, Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;->mImageView:Landroid/widget/ImageView;

    .line 50
    iput p3, p0, Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;->mCornerRadius:I

    .line 51
    iput p4, p0, Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;->mPlaceholderDrawableId:I

    .line 52
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x12c

    .line 56
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 57
    iget v0, p0, Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;->mCornerRadius:I

    if-lez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;->mCornerRadius:I

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/BitmapUtils;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/eventgenie/android/utils/help/BitmapUtils;->setImageDrawableWithFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v3}, Lcom/eventgenie/android/utils/help/BitmapUtils;->setImageDrawableWithFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;->mImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/genie_connect/android/db/caching/imageloader/BitmapDisplayer;->mPlaceholderDrawableId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
