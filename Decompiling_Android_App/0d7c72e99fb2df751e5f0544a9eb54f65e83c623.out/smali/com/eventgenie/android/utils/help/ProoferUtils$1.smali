.class final Lcom/eventgenie/android/utils/help/ProoferUtils$1;
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
    .line 89
    iput p5, p0, Lcom/eventgenie/android/utils/help/ProoferUtils$1;->val$scale:F

    iput-object p6, p0, Lcom/eventgenie/android/utils/help/ProoferUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;-><init>(Landroid/content/Context;JZ)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 92
    if-eqz p1, :cond_1

    .line 93
    const-string v1, "^ ARTWORK GetBitmapTask onPostExecute image not null"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 94
    iget v1, p0, Lcom/eventgenie/android/utils/help/ProoferUtils$1;->val$scale:F

    invoke-static {p1, v1}, Lcom/eventgenie/android/utils/help/ProoferUtils;->setBitmapDensity(Landroid/graphics/Bitmap;F)V

    .line 95
    iget-object v1, p0, Lcom/eventgenie/android/utils/help/ProoferUtils$1;->val$activity:Landroid/app/Activity;

    sget v2, Lcom/eventgenie/android/R$id;->dashboard_upperBackground:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    .local v0, "bg":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 97
    const-string v1, "^ ARTWORK GetBitmapTask onPostExecute ImageView not null. Image set"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    .end local v0    # "bg":Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 101
    .restart local v0    # "bg":Landroid/widget/ImageView;
    :cond_0
    const-string v1, "^ ARTWORK GetBitmapTask onPostExecute ImageView null. Image not set"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v0    # "bg":Landroid/widget/ImageView;
    :cond_1
    const-string v1, "^ ARTWORK GetBitmapTask onPostExecute returns null"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/help/ProoferUtils$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
