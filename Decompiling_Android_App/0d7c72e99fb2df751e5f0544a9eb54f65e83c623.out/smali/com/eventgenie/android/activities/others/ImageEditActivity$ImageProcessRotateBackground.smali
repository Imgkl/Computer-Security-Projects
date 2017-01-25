.class Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;
.super Landroid/os/AsyncTask;
.source "ImageEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/ImageEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageProcessRotateBackground"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/ImageEditActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/ImageEditActivity;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;->this$0:Lcom/eventgenie/android/activities/others/ImageEditActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 273
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageActions;->FLIP:Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageActions;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageActions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 275
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;->this$0:Lcom/eventgenie/android/activities/others/ImageEditActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->access$000(Lcom/eventgenie/android/activities/others/ImageEditActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;->this$0:Lcom/eventgenie/android/activities/others/ImageEditActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->access$000(Lcom/eventgenie/android/activities/others/ImageEditActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 276
    const/4 v0, 0x1

    .line 280
    .local v0, "flipStyle":I
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;->this$0:Lcom/eventgenie/android/activities/others/ImageEditActivity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;->this$0:Lcom/eventgenie/android/activities/others/ImageEditActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->access$000(Lcom/eventgenie/android/activities/others/ImageEditActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->flipImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 282
    .end local v0    # "flipStyle":I
    :goto_1
    return-object v1

    .line 278
    :cond_0
    const/4 v0, 0x2

    .restart local v0    # "flipStyle":I
    goto :goto_0

    .line 282
    .end local v0    # "flipStyle":I
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;->this$0:Lcom/eventgenie/android/activities/others/ImageEditActivity;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/eventgenie/android/activities/others/ImageEditActivity;->rotateImage(I)Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->access$100(Lcom/eventgenie/android/activities/others/ImageEditActivity;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 264
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;->this$0:Lcom/eventgenie/android/activities/others/ImageEditActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->access$000(Lcom/eventgenie/android/activities/others/ImageEditActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 291
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;->this$0:Lcom/eventgenie/android/activities/others/ImageEditActivity;

    # setter for: Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->access$002(Lcom/eventgenie/android/activities/others/ImageEditActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 293
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;->this$0:Lcom/eventgenie/android/activities/others/ImageEditActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ImageEditActivity;->mCropImageView:Lcom/edmodo/cropper/CropImageView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->access$200(Lcom/eventgenie/android/activities/others/ImageEditActivity;)Lcom/edmodo/cropper/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;->this$0:Lcom/eventgenie/android/activities/others/ImageEditActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ImageEditActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ImageEditActivity;->access$000(Lcom/eventgenie/android/activities/others/ImageEditActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 264
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ImageEditActivity$ImageProcessRotateBackground;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method
