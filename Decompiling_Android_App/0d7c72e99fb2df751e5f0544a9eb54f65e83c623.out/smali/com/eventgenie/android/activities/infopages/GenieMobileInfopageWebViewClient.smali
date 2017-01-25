.class public Lcom/eventgenie/android/activities/infopages/GenieMobileInfopageWebViewClient;
.super Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;
.source "GenieMobileInfopageWebViewClient.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;-><init>(Landroid/app/Activity;)V

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/WebView;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ INFOWEBVIEWCLIENT: onPageStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 48
    const-string v0, "http://this.means.load.html/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50
    .local v2, "html":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ INFOWEBVIEWCLIENT onPageStarted load HTML from tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 52
    const-string v1, "file:///android_asset/"

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const-string v5, "http://this.means.load.html/"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .end local v2    # "html":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/GenieMobileInfopageWebViewClient;->getControls()Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    move-result-object v0

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    .line 56
    return-void
.end method

.method public bridge synthetic onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/WebView;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "x0"    # Landroid/webkit/WebView;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
