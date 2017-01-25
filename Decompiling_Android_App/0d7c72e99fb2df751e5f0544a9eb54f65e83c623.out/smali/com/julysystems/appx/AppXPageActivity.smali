.class public final Lcom/julysystems/appx/AppXPageActivity;
.super Lcom/julysystems/appx/AppXBaseActivity;
.source "AppXPageActivity.java"

# interfaces
.implements Lcom/julysystems/appx/AppXRequestStateListner;


# static fields
.field protected static enterAnimation:I

.field protected static exitAnimation:I

.field protected static onBackEnterAnimation:I

.field protected static onBackExitAnimation:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field public backNavigationListners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/julysystems/appx/AppXBackNavigationListner;",
            ">;"
        }
    .end annotation
.end field

.field public pageData:Lcom/julysystems/appx/AppXPageData;

.field protected pageView:Lcom/julysystems/appx/AppXPageView;

.field private parentLayout:Landroid/widget/LinearLayout;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput v0, Lcom/julysystems/appx/AppXPageActivity;->enterAnimation:I

    .line 37
    sput v0, Lcom/julysystems/appx/AppXPageActivity;->exitAnimation:I

    .line 38
    sput v0, Lcom/julysystems/appx/AppXPageActivity;->onBackEnterAnimation:I

    .line 39
    sput v0, Lcom/julysystems/appx/AppXPageActivity;->onBackExitAnimation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/julysystems/appx/AppXBaseActivity;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/julysystems/appx/AppXPageActivity;->TAG:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/julysystems/appx/AppXPageActivity;->pageData:Lcom/julysystems/appx/AppXPageData;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/julysystems/appx/AppXPageActivity;->backNavigationListners:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method protected addBackNavigationListner(Lcom/julysystems/appx/AppXBackNavigationListner;)V
    .locals 1
    .param p1, "bnl"    # Lcom/julysystems/appx/AppXBackNavigationListner;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageActivity;->backNavigationListners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method protected getPageView()Lcom/julysystems/appx/AppXPageView;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageActivity;->pageView:Lcom/julysystems/appx/AppXPageView;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageActivity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public onComplete(Lorg/w3c/dom/Element;)V
    .locals 10
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v4, 0x0

    .line 110
    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lcom/julysystems/appx/AppXXMLUtils;->getChildElements(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 111
    .local v7, "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-static {}, Lcom/julysystems/appx/AppXUtils;->dismissLoader()V

    .line 123
    const/4 v0, 0x0

    sput-boolean v0, Lcom/julysystems/appx/AppX;->isLoading:Z

    .line 124
    return-void

    .line 111
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 112
    .local v2, "viewNode":Lorg/w3c/dom/Element;
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    iget-object v3, p0, Lcom/julysystems/appx/AppXPageActivity;->pageData:Lcom/julysystems/appx/AppXPageData;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/julysystems/appx/AppX;->getComponent(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Lcom/julysystems/appx/AppXPageActivity;Lcom/julysystems/appx/AppXViewUpdateListner;)Landroid/view/View;

    move-result-object v8

    .line 113
    .local v8, "view":Landroid/view/View;
    if-eqz v8, :cond_0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageActivity;->pageView:Lcom/julysystems/appx/AppXPageView;

    iget-object v0, v0, Lcom/julysystems/appx/AppXPageView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Added View is ::::: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v6

    .line 117
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/julysystems/appx/AppXBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 143
    sget-object v0, Lcom/julysystems/appx/AppXRenderRenderUtil;->localImageMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/julysystems/appx/AppXRenderRenderUtil;->localImageMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 145
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 52
    invoke-super {p0, p1}, Lcom/julysystems/appx/AppXBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v5, Lcom/julysystems/appx/AppXPageActivity;->enterAnimation:I

    sget v6, Lcom/julysystems/appx/AppXPageActivity;->exitAnimation:I

    invoke-virtual {p0, v5, v6}, Lcom/julysystems/appx/AppXPageActivity;->overridePendingTransition(II)V

    .line 54
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXPageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 56
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 60
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.july.weburl"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->url:Ljava/lang/String;

    .line 61
    sget-object v5, Lcom/julysystems/appx/AppX;->mCustomSettingsProvider:Lcom/julysystems/appx/AppXCustomSettingsProvider;

    if-eqz v5, :cond_1

    .line 62
    sget-object v5, Lcom/julysystems/appx/AppX;->mCustomSettingsProvider:Lcom/julysystems/appx/AppXCustomSettingsProvider;

    invoke-interface {v5, p0}, Lcom/julysystems/appx/AppXCustomSettingsProvider;->getCustomNavigationHeader(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 63
    sget-object v5, Lcom/julysystems/appx/AppX;->mCustomSettingsProvider:Lcom/julysystems/appx/AppXCustomSettingsProvider;

    invoke-interface {v5, p0}, Lcom/julysystems/appx/AppXCustomSettingsProvider;->getCustomNavigationHeader(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 64
    sget-object v5, Lcom/julysystems/appx/AppX;->mCustomSettingsProvider:Lcom/julysystems/appx/AppXCustomSettingsProvider;

    invoke-interface {v5, p0}, Lcom/julysystems/appx/AppXCustomSettingsProvider;->getCustomNavigationHeader(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    sget-object v6, Lcom/julysystems/appx/AppX;->mCustomSettingsProvider:Lcom/julysystems/appx/AppXCustomSettingsProvider;

    invoke-interface {v6, p0}, Lcom/julysystems/appx/AppXCustomSettingsProvider;->getCustomNavigationHeader(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    :cond_1
    iget-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->url:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->url:Ljava/lang/String;

    const-string v6, ""

    if-eq v5, v6, :cond_3

    .line 67
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->parentLayout:Landroid/widget/LinearLayout;

    .line 68
    iget-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->parentLayout:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 71
    :try_start_0
    sget-object v5, Lcom/julysystems/appx/AppX;->mCustomSettingsProvider:Lcom/julysystems/appx/AppXCustomSettingsProvider;

    if-eqz v5, :cond_2

    .line 72
    sget-object v5, Lcom/julysystems/appx/AppX;->mCustomSettingsProvider:Lcom/julysystems/appx/AppXCustomSettingsProvider;

    invoke-interface {v5, p0}, Lcom/julysystems/appx/AppXCustomSettingsProvider;->getCustomNavigationHeader(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 73
    iget-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->parentLayout:Landroid/widget/LinearLayout;

    sget-object v6, Lcom/julysystems/appx/AppX;->mCustomSettingsProvider:Lcom/julysystems/appx/AppXCustomSettingsProvider;

    invoke-interface {v6, p0}, Lcom/julysystems/appx/AppXCustomSettingsProvider;->getCustomNavigationHeader(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_2
    :goto_0
    new-instance v4, Lcom/julysystems/appx/AppXCustomWebview;

    sget-object v5, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/julysystems/appx/AppXCustomWebview;-><init>(Landroid/content/Context;)V

    .line 80
    .local v4, "webview":Lcom/julysystems/appx/AppXCustomWebview;
    invoke-virtual {v4, v8}, Lcom/julysystems/appx/AppXCustomWebview;->setBackgroundColor(I)V

    .line 81
    iget-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/julysystems/appx/AppXCustomWebview;->loadUrl(Ljava/lang/String;)V

    .line 82
    iget-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    iget-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 84
    iget-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/julysystems/appx/AppXPageActivity;->setContentView(Landroid/view/View;)V

    .line 106
    .end local v4    # "webview":Lcom/julysystems/appx/AppXCustomWebview;
    :goto_1
    return-void

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v5, Lcom/julysystems/appx/AppXPageView;

    invoke-direct {v5, p0}, Lcom/julysystems/appx/AppXPageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->pageView:Lcom/julysystems/appx/AppXPageView;

    .line 87
    iget-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->pageView:Lcom/julysystems/appx/AppXPageView;

    invoke-virtual {v5, v8}, Lcom/julysystems/appx/AppXPageView;->setBackgroundColor(I)V

    .line 89
    :try_start_1
    sget-object v5, Lcom/julysystems/appx/AppX;->mCustomSettingsProvider:Lcom/julysystems/appx/AppXCustomSettingsProvider;

    if-eqz v5, :cond_4

    .line 90
    sget-object v5, Lcom/julysystems/appx/AppX;->mCustomSettingsProvider:Lcom/julysystems/appx/AppXCustomSettingsProvider;

    invoke-interface {v5, p0}, Lcom/julysystems/appx/AppXCustomSettingsProvider;->getCustomNavigationHeader(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 91
    iget-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->pageView:Lcom/julysystems/appx/AppXPageView;

    iget-object v5, v5, Lcom/julysystems/appx/AppXPageView;->linearLayout:Landroid/widget/LinearLayout;

    sget-object v6, Lcom/julysystems/appx/AppX;->mCustomSettingsProvider:Lcom/julysystems/appx/AppXCustomSettingsProvider;

    invoke-interface {v6, p0}, Lcom/julysystems/appx/AppXCustomSettingsProvider;->getCustomNavigationHeader(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->pageView:Lcom/julysystems/appx/AppXPageView;

    invoke-virtual {p0, v5}, Lcom/julysystems/appx/AppXPageActivity;->setContentView(Landroid/view/View;)V

    .line 98
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    if-eqz v5, :cond_5

    .line 99
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/julysystems/appx/AppXUtils;->showLoader(Landroid/app/Activity;)V

    .line 100
    :cond_5
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.july.pageUrl"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->url:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.july.forceRequest"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 102
    .local v3, "isForceRequest":Z
    new-instance v1, Lcom/julysystems/appx/AppXPageRequest;

    iget-object v5, p0, Lcom/julysystems/appx/AppXPageActivity;->url:Ljava/lang/String;

    invoke-direct {v1, v5, v3}, Lcom/julysystems/appx/AppXPageRequest;-><init>(Ljava/lang/String;Z)V

    .line 103
    .local v1, "appXPageRequest":Lcom/julysystems/appx/AppXPageRequest;
    invoke-virtual {v1, p0}, Lcom/julysystems/appx/AppXPageRequest;->setRequestStateListner(Lcom/julysystems/appx/AppXRequestStateListner;)V

    .line 104
    invoke-static {v1}, Lcom/julysystems/appx/AppXURLRequestTask;->addRequest(Lcom/julysystems/appx/AppXURLRequest;)V

    goto :goto_1

    .line 93
    .end local v1    # "appXPageRequest":Lcom/julysystems/appx/AppXPageRequest;
    .end local v3    # "isForceRequest":Z
    :catch_1
    move-exception v2

    .line 94
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageActivity;->pageData:Lcom/julysystems/appx/AppXPageData;

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcom/julysystems/appx/AppXUtils;->dismissLoader()V

    .line 166
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageActivity;->pageData:Lcom/julysystems/appx/AppXPageData;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXPageData;->clearPageViewRef()V

    .line 167
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageActivity;->pageView:Lcom/julysystems/appx/AppXPageView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/julysystems/appx/AppXPageActivity;->pageView:Lcom/julysystems/appx/AppXPageView;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXPageView;->finish()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXPageActivity;->pageView:Lcom/julysystems/appx/AppXPageView;

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/julysystems/appx/AppXBaseActivity;->onDestroy()V

    .line 173
    return-void
.end method

.method public onFailure()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    sput-boolean v0, Lcom/julysystems/appx/AppX;->isLoading:Z

    .line 129
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 177
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXPageActivity;->finish()V

    .line 179
    sget v0, Lcom/julysystems/appx/AppXPageActivity;->onBackEnterAnimation:I

    sget v1, Lcom/julysystems/appx/AppXPageActivity;->onBackExitAnimation:I

    invoke-virtual {p0, v0, v1}, Lcom/julysystems/appx/AppXPageActivity;->overridePendingTransition(II)V

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/julysystems/appx/AppXBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 218
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 216
    :pswitch_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXPageActivity;->onBackPressed()V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Lcom/julysystems/appx/AppXBaseActivity;->onPause()V

    .line 155
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/julysystems/appx/AppXBaseActivity;->onResume()V

    .line 150
    return-void
.end method

.method protected onShake()V
    .locals 0

    .prologue
    .line 222
    invoke-static {}, Lcom/julysystems/appx/AppXUtils;->dismissLoader()V

    .line 223
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Lcom/julysystems/appx/AppXBaseActivity;->onStop()V

    .line 160
    return-void
.end method
