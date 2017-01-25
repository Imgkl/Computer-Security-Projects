.class public Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;
.super Landroid/os/Handler;
.source "RemoteImageLoaderHandler.java"


# static fields
.field public static final BITMAP_EXTRA:Ljava/lang/String; = "ign:extra_bitmap"

.field public static final HANDLER_MESSAGE_ID:I = 0x0

.field public static final IMAGE_URL_EXTRA:Ljava/lang/String; = "ign:extra_image_url"


# instance fields
.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private imageUrl:Ljava/lang/String;

.field private imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    invoke-direct {p0, p2, p3, p4}, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->init(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    .line 38
    iput-object p2, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->imageUrl:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->init(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 41
    return-void
.end method

.method private init(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    .line 51
    iput-object p2, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->imageUrl:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected handleImageLoaded(Landroid/graphics/Bitmap;Landroid/os/Message;)Z
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    .local v0, "forUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    if-nez p1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 92
    const/4 v1, 0x1

    .line 95
    :goto_1
    return v1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 95
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected final handleImageLoadedMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 64
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "ign:extra_bitmap"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 65
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0, p1}, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->handleImageLoaded(Landroid/graphics/Bitmap;Landroid/os/Message;)Z

    .line 66
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->handleImageLoadedMessage(Landroid/os/Message;)V

    .line 60
    :cond_0
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->imageUrl:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    .line 112
    return-void
.end method
