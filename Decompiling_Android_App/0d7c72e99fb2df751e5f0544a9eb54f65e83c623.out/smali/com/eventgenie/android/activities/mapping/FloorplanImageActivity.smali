.class public Lcom/eventgenie/android/activities/mapping/FloorplanImageActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "FloorplanImageActivity.java"


# static fields
.field public static final IMAGE_URL_EXTRA:Ljava/lang/String; = "image_url"


# instance fields
.field private mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

.field private mImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/mapping/FloorplanImageActivity;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/FloorplanImageActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/FloorplanImageActivity;->mImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 54
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v1, Lcom/eventgenie/android/R$layout;->activity_imageview:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/FloorplanImageActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FloorplanImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "image_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "imageUrl":Ljava/lang/String;
    sget v1, Lcom/eventgenie/android/R$id;->imageView:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/FloorplanImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/FloorplanImageActivity;->mImageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    .line 62
    invoke-virtual {p0, v6, v8}, Lcom/eventgenie/android/activities/mapping/FloorplanImageActivity;->showIndicator(ZZ)V

    .line 64
    new-instance v1, Lcom/eventgenie/android/activities/mapping/FloorplanImageActivity$1;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FloorplanImageActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/eventgenie/android/activities/mapping/FloorplanImageActivity$1;-><init>(Lcom/eventgenie/android/activities/mapping/FloorplanImageActivity;Landroid/content/Context;JZ)V

    new-array v2, v6, [Ljava/lang/String;

    aput-object v7, v2, v8

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    return-void
.end method
