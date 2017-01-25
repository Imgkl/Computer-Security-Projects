.class Lcom/github/ignition/core/widgets/RemoteImageView$DefaultImageLoaderHandler;
.super Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;
.source "RemoteImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ignition/core/widgets/RemoteImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultImageLoaderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/ignition/core/widgets/RemoteImageView;


# direct methods
.method public constructor <init>(Lcom/github/ignition/core/widgets/RemoteImageView;)V
    .locals 3

    .prologue
    .line 249
    iput-object p1, p0, Lcom/github/ignition/core/widgets/RemoteImageView$DefaultImageLoaderHandler;->this$0:Lcom/github/ignition/core/widgets/RemoteImageView;

    .line 250
    # getter for: Lcom/github/ignition/core/widgets/RemoteImageView;->imageView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/github/ignition/core/widgets/RemoteImageView;->access$000(Lcom/github/ignition/core/widgets/RemoteImageView;)Landroid/widget/ImageView;

    move-result-object v0

    # getter for: Lcom/github/ignition/core/widgets/RemoteImageView;->imageUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/github/ignition/core/widgets/RemoteImageView;->access$100(Lcom/github/ignition/core/widgets/RemoteImageView;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/github/ignition/core/widgets/RemoteImageView;->errorDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/github/ignition/core/widgets/RemoteImageView;->access$200(Lcom/github/ignition/core/widgets/RemoteImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 251
    return-void
.end method


# virtual methods
.method protected handleImageLoaded(Landroid/graphics/Bitmap;Landroid/os/Message;)Z
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 255
    invoke-super {p0, p1, p2}, Lcom/github/ignition/support/images/remote/RemoteImageLoaderHandler;->handleImageLoaded(Landroid/graphics/Bitmap;Landroid/os/Message;)Z

    move-result v0

    .line 256
    .local v0, "wasUpdated":Z
    if-eqz v0, :cond_0

    .line 257
    iget-object v1, p0, Lcom/github/ignition/core/widgets/RemoteImageView$DefaultImageLoaderHandler;->this$0:Lcom/github/ignition/core/widgets/RemoteImageView;

    # setter for: Lcom/github/ignition/core/widgets/RemoteImageView;->isLoaded:Z
    invoke-static {v1, v2}, Lcom/github/ignition/core/widgets/RemoteImageView;->access$302(Lcom/github/ignition/core/widgets/RemoteImageView;Z)Z

    .line 258
    iget-object v1, p0, Lcom/github/ignition/core/widgets/RemoteImageView$DefaultImageLoaderHandler;->this$0:Lcom/github/ignition/core/widgets/RemoteImageView;

    invoke-virtual {v1, v2}, Lcom/github/ignition/core/widgets/RemoteImageView;->setDisplayedChild(I)V

    .line 260
    :cond_0
    return v0
.end method
