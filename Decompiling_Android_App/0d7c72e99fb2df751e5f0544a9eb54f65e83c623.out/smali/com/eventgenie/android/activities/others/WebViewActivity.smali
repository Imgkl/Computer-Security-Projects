.class public Lcom/eventgenie/android/activities/others/WebViewActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "WebViewActivity.java"


# static fields
.field public static final PARAM_URL:Ljava/lang/String; = "url_param"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/others/WebViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/WebViewActivity;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/WebViewActivity;->closeBlockingView()V

    return-void
.end method

.method private closeBlockingView()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dismissProgressBar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method private showBlockingView()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 24
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 26
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 27
    const-string v4, "hide_advert"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/WebViewActivity;->showAdvert()V

    .line 31
    :cond_0
    const-string/jumbo v4, "url_param"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "url":Ljava/lang/String;
    sget v4, Lcom/eventgenie/android/R$layout;->activity_infopage:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/others/WebViewActivity;->setContentView(I)V

    .line 34
    sget v4, Lcom/eventgenie/android/R$id;->web_content:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/others/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 35
    .local v3, "webView":Landroid/webkit/WebView;
    new-instance v4, Lcom/eventgenie/android/activities/others/WebViewActivity$1;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/activities/others/WebViewActivity$1;-><init>(Lcom/eventgenie/android/activities/others/WebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 44
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/WebViewActivity;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/WebViewActivity;->isAuthenticated()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 45
    :cond_1
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 47
    :cond_2
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/WebViewActivity;->showBlockingView()V

    .line 50
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "webView":Landroid/webkit/WebView;
    :cond_3
    return-void
.end method

.method public onHomeClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onHomeClick(Landroid/view/View;)V

    .line 55
    return-void
.end method
