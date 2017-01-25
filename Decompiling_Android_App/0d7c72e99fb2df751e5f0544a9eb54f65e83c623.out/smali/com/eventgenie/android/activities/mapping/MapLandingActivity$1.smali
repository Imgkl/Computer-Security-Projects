.class Lcom/eventgenie/android/activities/mapping/MapLandingActivity$1;
.super Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;
.source "MapLandingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/mapping/MapLandingActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/mapping/MapLandingActivity;Landroid/content/Context;JZ)V
    .locals 1
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # J
    .param p5, "x2"    # Z

    .prologue
    .line 91
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/MapLandingActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;-><init>(Landroid/content/Context;JZ)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/MapLandingActivity;

    invoke-virtual {v0, v1, v1}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->showIndicator(ZZ)V

    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/MapLandingActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->access$000(Lcom/eventgenie/android/activities/mapping/MapLandingActivity;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setPanEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/MapLandingActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->access$000(Lcom/eventgenie/android/activities/mapping/MapLandingActivity;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 98
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/MapLandingActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->access$000(Lcom/eventgenie/android/activities/mapping/MapLandingActivity;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMinimumDpi(I)V

    .line 99
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/MapLandingActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->access$000(Lcom/eventgenie/android/activities/mapping/MapLandingActivity;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setPanLimit(I)V

    .line 100
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/MapLandingActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/MapLandingActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->mImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity;->access$000(Lcom/eventgenie/android/activities/mapping/MapLandingActivity;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    move-result-object v0

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->cachedBitmap(Landroid/graphics/Bitmap;)Lcom/davemorrissey/labs/subscaleview/ImageSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;)V

    .line 103
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/mapping/MapLandingActivity$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
