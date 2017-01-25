.class Lcom/eventgenie/android/ui/actionbar/GenieAbc$1;
.super Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;
.source "GenieAbc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/ui/actionbar/GenieAbc;->setupActionBarCommon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/ui/actionbar/GenieAbc;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/ui/actionbar/GenieAbc;Landroid/content/Context;JZ)V
    .locals 1
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # J
    .param p5, "x2"    # Z

    .prologue
    .line 268
    iput-object p1, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc$1;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieAbc;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/eventgenie/android/utils/asynctasks/GetBitmapTask;-><init>(Landroid/content/Context;JZ)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0xa

    .line 271
    if-eqz p1, :cond_0

    .line 273
    iget-object v2, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc$1;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieAbc;

    invoke-virtual {v2}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getScreenDensity()F

    move-result v2

    invoke-static {p1, v2}, Lcom/eventgenie/android/utils/help/ProoferUtils;->setBitmapDensity(Landroid/graphics/Bitmap;F)V

    .line 274
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc$1;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieAbc;

    # getter for: Lcom/eventgenie/android/ui/actionbar/GenieAbc;->mActivity:Landroid/support/v7/app/ActionBarActivity;
    invoke-static {v2}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->access$000(Lcom/eventgenie/android/ui/actionbar/GenieAbc;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v6, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 275
    .local v6, "imageDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v6, v2, v1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 276
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v2, -0x5

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 277
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieAbc$1;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieAbc;

    # invokes: Lcom/eventgenie/android/ui/actionbar/GenieAbc;->getActionBar()Landroid/support/v7/app/ActionBar;
    invoke-static {v1}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->access$100(Lcom/eventgenie/android/ui/actionbar/GenieAbc;)Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 279
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v6    # "imageDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 268
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/ui/actionbar/GenieAbc$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
