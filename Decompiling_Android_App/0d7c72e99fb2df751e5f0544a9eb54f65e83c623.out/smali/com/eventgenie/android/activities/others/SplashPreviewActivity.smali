.class public Lcom/eventgenie/android/activities/others/SplashPreviewActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "SplashPreviewActivity.java"


# static fields
.field public static final CONFIG_EXTRA:Ljava/lang/String; = "config_extra"


# instance fields
.field private mAppConfig:Lcom/genie_connect/android/db/config/AppConfig;

.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/others/SplashPreviewActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/SplashPreviewActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/others/SplashPreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/SplashPreviewActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->clearDrawables()V

    return-void
.end method

.method private clearDrawables()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private loadDefaultSplash()V
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 71
    .local v1, "scale":F
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 77
    .local v0, "lng":Z
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->loadSplash(FZ)V

    .line 78
    return-void

    .line 74
    .end local v0    # "lng":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "lng":Z
    goto :goto_0
.end method

.method private loadSplash(FZ)V
    .locals 9
    .param p1, "scale"    # F
    .param p2, "lng"    # Z

    .prologue
    const/4 v6, 0x1

    .line 81
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->mAppConfig:Lcom/genie_connect/android/db/config/AppConfig;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->mAppConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getLoadingScreenUrl(FZ)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "imgUrl":Ljava/lang/String;
    new-instance v1, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->mAppConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p0

    move v7, p1

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity$1;-><init>(Lcom/eventgenie/android/activities/others/SplashPreviewActivity;Landroid/content/Context;JZFZ)V

    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    .end local v0    # "imgUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    .line 119
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 123
    sget v3, Lcom/eventgenie/android/R$layout;->activity_splash:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->setContentView(I)V

    .line 125
    sget v3, Lcom/eventgenie/android/R$id;->artwork:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->mImageView:Landroid/widget/ImageView;

    .line 126
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->mImageView:Landroid/widget/ImageView;

    sget v4, Lcom/eventgenie/android/R$drawable;->custom_splash:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    .local v0, "b":Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->clearDrawables()V

    .line 132
    if-eqz v0, :cond_1

    .line 133
    const-string v3, "config_extra"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "json":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 136
    :try_start_0
    new-instance v3, Lcom/genie_connect/android/db/config/AppConfig;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->mAppConfig:Lcom/genie_connect/android/db/config/AppConfig;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v2    # "json":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->loadDefaultSplash()V

    .line 146
    return-void

    .line 137
    .restart local v2    # "json":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Lorg/json/JSONException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->mAppConfig:Lcom/genie_connect/android/db/config/AppConfig;

    goto :goto_0

    .line 142
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "json":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->mAppConfig:Lcom/genie_connect/android/db/config/AppConfig;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$menu;->resolutions:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3fc00000    # 1.5f

    const/4 v4, 0x0

    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    int-to-long v0, v2

    .line 158
    .local v0, "id":J
    sget v2, Lcom/eventgenie/android/R$id;->menu_default:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->loadDefaultSplash()V

    .line 170
    :cond_0
    :goto_0
    return v6

    .line 160
    :cond_1
    sget v2, Lcom/eventgenie/android/R$id;->menu_mdpi:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 161
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v4}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->loadSplash(FZ)V

    goto :goto_0

    .line 162
    :cond_2
    sget v2, Lcom/eventgenie/android/R$id;->menu_hdpi:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 163
    invoke-direct {p0, v5, v4}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->loadSplash(FZ)V

    goto :goto_0

    .line 164
    :cond_3
    sget v2, Lcom/eventgenie/android/R$id;->menu_lhdpi:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 165
    invoke-direct {p0, v5, v6}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->loadSplash(FZ)V

    goto :goto_0

    .line 166
    :cond_4
    sget v2, Lcom/eventgenie/android/R$id;->menu_xhdpi:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 167
    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, v2, v4}, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;->loadSplash(FZ)V

    goto :goto_0
.end method

.method public pretifyScale(FZ)Ljava/lang/String;
    .locals 4
    .param p1, "scale"    # F
    .param p2, "lng"    # Z

    .prologue
    .line 174
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 175
    const-string v0, "XHDPI"

    .line 186
    :goto_0
    return-object v0

    .line 178
    :cond_0
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 179
    if-eqz p2, :cond_1

    .line 180
    const-string v0, "LHDPI"

    goto :goto_0

    .line 182
    :cond_1
    const-string v0, "HDPI"

    goto :goto_0

    .line 186
    :cond_2
    const-string v0, "MDPI"

    goto :goto_0
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method
