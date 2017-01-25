.class Lcom/eventgenie/android/ui/actionbar/GenieActionbar$11;
.super Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;
.source "GenieActionbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setupActionBarCommon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/ui/actionbar/GenieActionbar;Landroid/content/Context;JZ)V
    .locals 1
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # J
    .param p5, "x2"    # Z

    .prologue
    .line 519
    iput-object p1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$11;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;-><init>(Landroid/content/Context;JZ)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 522
    if-eqz p1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$11;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getScreenDensity()F

    move-result v1

    invoke-static {p1, v1}, Lcom/eventgenie/android/utils/help/ProoferUtils;->setBitmapDensity(Landroid/graphics/Bitmap;F)V

    .line 524
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$11;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->btn_title_home:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 525
    .local v0, "bg":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 527
    .end local v0    # "bg":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 519
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$11;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
