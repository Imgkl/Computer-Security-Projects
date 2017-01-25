.class final Lcom/eventgenie/android/utils/help/ProoferUtils$4;
.super Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;
.source "ProoferUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/help/ProoferUtils;->getApplicationArtwork(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Landroid/content/Context;JZFLandroid/app/Activity;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # J
    .param p4, "x2"    # Z

    .prologue
    .line 149
    iput p5, p0, Lcom/eventgenie/android/utils/help/ProoferUtils$4;->val$scale:F

    iput-object p6, p0, Lcom/eventgenie/android/utils/help/ProoferUtils$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;-><init>(Landroid/content/Context;JZ)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget v0, p0, Lcom/eventgenie/android/utils/help/ProoferUtils$4;->val$scale:F

    invoke-static {p1, v0}, Lcom/eventgenie/android/utils/help/ProoferUtils;->setBitmapDensity(Landroid/graphics/Bitmap;F)V

    .line 155
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/ProoferUtils$4;->val$activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/utils/help/ProoferUtils$4;->val$activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/eventgenie/android/activities/base/GenieAbcActivity;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/ProoferUtils$4;->val$activity:Landroid/app/Activity;

    check-cast v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setLogo(Landroid/graphics/Bitmap;)V

    .line 160
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 149
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/help/ProoferUtils$4;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
