.class public Lcom/urbanairship/actions/LandingPageActivity;
.super Landroid/app/Activity;
.source "LandingPageActivity.java"


# static fields
.field public static final LANDING_PAGE_BACKGROUND_COLOR:Ljava/lang/String; = "com.urbanairship.LANDING_PAGE_BACKGROUND_COLOR"

.field private static final LANDING_PAGE_RETRY_DELAY_MS:J = 0x4e20L

.field public static final LANDING_PAGE_VIEW_KEY:Ljava/lang/String; = "com.urbanairship.action.LANDING_PAGE_VIEW"


# instance fields
.field private error:Ljava/lang/Integer;

.field private handler:Landroid/os/Handler;

.field private url:Ljava/lang/String;

.field private webView:Lcom/urbanairship/widget/LandingPageWebView;

.field private webViewBackgroundColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->error:Ljava/lang/Integer;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webViewBackgroundColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/actions/LandingPageActivity;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/actions/LandingPageActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->error:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/urbanairship/actions/LandingPageActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/actions/LandingPageActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/urbanairship/actions/LandingPageActivity;->error:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/urbanairship/actions/LandingPageActivity;)Lcom/urbanairship/widget/LandingPageWebView;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/actions/LandingPageActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/LandingPageWebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/urbanairship/actions/LandingPageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/actions/LandingPageActivity;

    .prologue
    .line 86
    iget v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webViewBackgroundColor:I

    return v0
.end method

.method static synthetic access$300(Lcom/urbanairship/actions/LandingPageActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/actions/LandingPageActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/actions/LandingPageActivity;->crossFade(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private createDefaultLandingPageView()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 317
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 318
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v3, Lcom/urbanairship/widget/LandingPageWebView;

    invoke-direct {v3, p0}, Lcom/urbanairship/widget/LandingPageWebView;-><init>(Landroid/content/Context;)V

    .line 319
    .local v3, "webView":Lcom/urbanairship/widget/LandingPageWebView;
    const v5, 0x102000c

    invoke-virtual {v3, v5}, Lcom/urbanairship/widget/LandingPageWebView;->setId(I)V

    .line 321
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 323
    .local v4, "webViewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 325
    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 329
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 330
    const v5, 0x102000d

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setId(I)V

    .line 332
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 334
    .local v2, "progressBarLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 336
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    return-object v0
.end method

.method private crossFade(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "in"    # Landroid/view/View;
    .param p2, "out"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0xc8

    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_2

    .line 275
    if-eqz p1, :cond_0

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :cond_0
    if-eqz p2, :cond_1

    .line 280
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 300
    :cond_1
    :goto_0
    return-void

    .line 285
    :cond_2
    if-eqz p1, :cond_3

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 289
    :cond_3
    if-eqz p2, :cond_1

    .line 290
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/urbanairship/actions/LandingPageActivity$2;

    invoke-direct {v1, p0, p2}, Lcom/urbanairship/actions/LandingPageActivity$2;-><init>(Lcom/urbanairship/actions/LandingPageActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private restartActivity(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 395
    const-string v1, "Relaunching activity"

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    .line 399
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 404
    .local v0, "restartIntent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 405
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 408
    :cond_0
    invoke-virtual {p0, v0}, Lcom/urbanairship/actions/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 409
    return-void
.end method


# virtual methods
.method protected loadLandingPage()V
    .locals 2

    .prologue
    .line 345
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/actions/LandingPageActivity;->loadLandingPage(J)V

    .line 346
    return-void
.end method

.method protected loadLandingPage(J)V
    .locals 7
    .param p1, "delay"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 356
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/LandingPageWebView;

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/LandingPageWebView;

    invoke-virtual {v0}, Lcom/urbanairship/widget/LandingPageWebView;->stopLoading()V

    .line 362
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/urbanairship/actions/LandingPageActivity$3;

    invoke-direct {v1, p0}, Lcom/urbanairship/actions/LandingPageActivity$3;-><init>(Lcom/urbanairship/actions/LandingPageActivity;)V

    iget-object v2, p0, Lcom/urbanairship/actions/LandingPageActivity;->url:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    .line 372
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading landing page: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 375
    iget v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webViewBackgroundColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 376
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/LandingPageWebView;

    iget v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->webViewBackgroundColor:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/widget/LandingPageWebView;->setBackgroundColor(I)V

    .line 380
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 381
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/LandingPageWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/widget/LandingPageWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 384
    :cond_3
    iput-object v2, p0, Lcom/urbanairship/actions/LandingPageActivity;->error:Ljava/lang/Integer;

    .line 385
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/LandingPageWebView;

    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/widget/LandingPageWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCloseButtonClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    .line 309
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, -0x1

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/app/Application;)V

    .line 112
    const-string v6, "Creating landing page activity."

    invoke-static {v6}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 116
    .local v3, "intent":Landroid/content/Intent;
    if-nez v3, :cond_0

    .line 117
    const-string v6, "LandingPageActivity - Started activity with null intent"

    invoke-static {v6}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    .line 199
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/util/ManifestUtils;->getActivityInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 123
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v6, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v4, "metadata":Landroid/os/Bundle;
    :goto_1
    const-string v6, "com.urbanairship.LANDING_PAGE_BACKGROUND_COLOR"

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/urbanairship/actions/LandingPageActivity;->webViewBackgroundColor:I

    .line 126
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/urbanairship/actions/LandingPageActivity;->url:Ljava/lang/String;

    .line 127
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/urbanairship/actions/LandingPageActivity;->handler:Landroid/os/Handler;

    .line 129
    iget-object v6, p0, Lcom/urbanairship/actions/LandingPageActivity;->url:Ljava/lang/String;

    invoke-static {v6}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    const-string v6, "LandingPageActivity - No landing page url to load."

    invoke-static {v6}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    goto :goto_0

    .line 123
    .end local v4    # "metadata":Landroid/os/Bundle;
    :cond_1
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    .line 135
    .restart local v4    # "metadata":Landroid/os/Bundle;
    :cond_2
    const-string v6, "com.urbanairship.action.LANDING_PAGE_VIEW"

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 136
    .local v1, "customView":I
    if-eq v1, v7, :cond_4

    .line 137
    invoke-virtual {p0, v1}, Lcom/urbanairship/actions/LandingPageActivity;->setContentView(I)V

    .line 142
    :goto_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 144
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {v0, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 150
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_3
    const v6, 0x102000c

    invoke-virtual {p0, v6}, Lcom/urbanairship/actions/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/urbanairship/widget/LandingPageWebView;

    iput-object v6, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/LandingPageWebView;

    .line 151
    const v6, 0x102000d

    invoke-virtual {p0, v6}, Lcom/urbanairship/actions/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 153
    .local v5, "progressBar":Landroid/widget/ProgressBar;
    iget-object v6, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/LandingPageWebView;

    if-eqz v6, :cond_6

    .line 154
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xc

    if-lt v6, v7, :cond_5

    .line 155
    iget-object v6, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/LandingPageWebView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/urbanairship/widget/LandingPageWebView;->setAlpha(F)V

    .line 160
    :goto_3
    iget-object v6, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/LandingPageWebView;

    new-instance v7, Lcom/urbanairship/actions/LandingPageActivity$1;

    invoke-direct {v7, p0, v5}, Lcom/urbanairship/actions/LandingPageActivity$1;-><init>(Lcom/urbanairship/actions/LandingPageActivity;Landroid/widget/ProgressBar;)V

    invoke-virtual {v6, v7}, Lcom/urbanairship/widget/LandingPageWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto/16 :goto_0

    .line 139
    .end local v5    # "progressBar":Landroid/widget/ProgressBar;
    :cond_4
    invoke-direct {p0}, Lcom/urbanairship/actions/LandingPageActivity;->createDefaultLandingPageView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/urbanairship/actions/LandingPageActivity;->setContentView(Landroid/view/View;)V

    goto :goto_2

    .line 157
    .restart local v5    # "progressBar":Landroid/widget/ProgressBar;
    :cond_5
    iget-object v6, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/LandingPageWebView;

    invoke-virtual {v6, v8}, Lcom/urbanairship/widget/LandingPageWebView;->setVisibility(I)V

    goto :goto_3

    .line 195
    :cond_6
    const-string v6, "LandingPageActivity - A LandingPageWebView with id android.R.id.primary is not defined in the custom layout.  Unable to show the landing page."

    invoke-static {v6}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 203
    const-string v0, "LandingPageActivity - New intent received for landing page"

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/actions/LandingPageActivity;->restartActivity(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 205
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    .line 218
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 261
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/LandingPageWebView;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/LandingPageWebView;

    invoke-virtual {v0}, Lcom/urbanairship/widget/LandingPageWebView;->onPause()V

    .line 264
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/LandingPageWebView;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/LandingPageWebView;

    invoke-virtual {v0}, Lcom/urbanairship/widget/LandingPageWebView;->onResume()V

    .line 255
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 228
    invoke-static {p0}, Lcom/urbanairship/analytics/Analytics;->activityStarted(Landroid/app/Activity;)V

    .line 231
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->loadLandingPage()V

    .line 232
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 239
    invoke-static {p0}, Lcom/urbanairship/analytics/Analytics;->activityStopped(Landroid/app/Activity;)V

    .line 242
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/LandingPageWebView;

    invoke-virtual {v0}, Lcom/urbanairship/widget/LandingPageWebView;->stopLoading()V

    .line 245
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 246
    return-void
.end method
