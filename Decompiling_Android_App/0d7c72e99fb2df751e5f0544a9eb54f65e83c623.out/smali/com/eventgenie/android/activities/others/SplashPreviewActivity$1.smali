.class Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;
.super Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;
.source "SplashPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->loadSplash(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/SplashPreviewActivity;

.field final synthetic val$lng:Z

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/SplashPreviewActivity;Landroid/content/Context;JZFZ)V
    .locals 1
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # J
    .param p5, "x2"    # Z

    .prologue
    .line 84
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->this$0:Lcom/eventgenie/android/activities/others/SplashPreviewActivity;

    iput p6, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->val$scale:F

    iput-boolean p7, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->val$lng:Z

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;-><init>(Landroid/content/Context;JZ)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 87
    if-eqz p1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->this$0:Lcom/eventgenie/android/activities/others/SplashPreviewActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading Splash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->this$0:Lcom/eventgenie/android/activities/others/SplashPreviewActivity;

    iget v4, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->val$scale:F

    iget-boolean v5, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->val$lng:Z

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->pretifyScale(FZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 92
    iget v1, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->val$scale:F

    invoke-static {p1, v1}, Lcom/eventgenie/android/utils/help/ProoferUtils;->setBitmapDensity(Landroid/graphics/Bitmap;F)V

    .line 94
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 96
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->this$0:Lcom/eventgenie/android/activities/others/SplashPreviewActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->access$000(Lcom/eventgenie/android/activities/others/SplashPreviewActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->this$0:Lcom/eventgenie/android/activities/others/SplashPreviewActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->access$000(Lcom/eventgenie/android/activities/others/SplashPreviewActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 99
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->this$0:Lcom/eventgenie/android/activities/others/SplashPreviewActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 103
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->this$0:Lcom/eventgenie/android/activities/others/SplashPreviewActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Splash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->this$0:Lcom/eventgenie/android/activities/others/SplashPreviewActivity;

    iget v4, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->val$scale:F

    iget-boolean v5, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->val$lng:Z

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->pretifyScale(FZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 84
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;->this$0:Lcom/eventgenie/android/activities/others/SplashPreviewActivity;

    # invokes: Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->clearDrawables()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->access$100(Lcom/eventgenie/android/activities/others/SplashPreviewActivity;)V

    .line 112
    return-void
.end method
