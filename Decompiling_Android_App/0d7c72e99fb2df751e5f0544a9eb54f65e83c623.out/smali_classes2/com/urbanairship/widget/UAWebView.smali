.class public Lcom/urbanairship/widget/UAWebView;
.super Landroid/webkit/WebView;
.source "UAWebView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# static fields
.field private static final CACHE_DIRECTORY:Ljava/lang/String; = "urbanairship"


# instance fields
.field private currentClientAuthRequestUrl:Ljava/lang/String;

.field private webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/urbanairship/widget/UAWebView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 92
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defResStyle"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 108
    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/urbanairship/widget/UAWebView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 111
    :cond_0
    return-void
.end method

.method private getCachePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 267
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "urbanairship"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 268
    .local v0, "cacheDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 272
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defResStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 126
    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 128
    .local v2, "settings":Landroid/webkit/WebSettings;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-lt v3, v4, :cond_0

    .line 129
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 130
    invoke-direct {p0}, Lcom/urbanairship/widget/UAWebView;->getCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 134
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 135
    if-eqz p2, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/urbanairship/R$styleable;->UAWebView:[I

    invoke-virtual {v3, p2, v4, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 138
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v3, Lcom/urbanairship/R$styleable;->UAWebView_mixed_content_mode:I

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 139
    .local v1, "mixedContentMode":I
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "mixedContentMode":I
    :cond_1
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 147
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 148
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 150
    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->initializeView()V

    .line 151
    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->populateCustomJavascriptInterfaces()V

    .line 152
    return-void

    .line 141
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method private onPreLoad()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    if-nez v1, :cond_0

    .line 238
    const-string v1, "No web view client set, setting a default UAWebViewClient for landing page view."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 240
    new-instance v1, Lcom/urbanairship/widget/UAWebViewClient;

    invoke-direct {v1}, Lcom/urbanairship/widget/UAWebViewClient;-><init>()V

    invoke-virtual {p0, v1}, Lcom/urbanairship/widget/UAWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/widget/UAWebView;->currentClientAuthRequestUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    instance-of v1, v1, Lcom/urbanairship/widget/UAWebViewClient;

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/widget/UAWebViewClient;

    .line 246
    .local v0, "webViewClient":Lcom/urbanairship/widget/UAWebViewClient;
    iget-object v1, p0, Lcom/urbanairship/widget/UAWebView;->currentClientAuthRequestUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/urbanairship/widget/UAWebViewClient;->removeAuthRequestCredentials(Ljava/lang/String;)V

    .line 247
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/urbanairship/widget/UAWebView;->currentClientAuthRequestUrl:Ljava/lang/String;

    .line 249
    .end local v0    # "webViewClient":Lcom/urbanairship/widget/UAWebViewClient;
    :cond_1
    return-void
.end method


# virtual methods
.method getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebView;->webViewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method protected initializeView()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/urbanairship/widget/UAWebView;->onPreLoad()V

    .line 188
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/urbanairship/widget/UAWebView;->onPreLoad()V

    .line 195
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/urbanairship/widget/UAWebView;->onPreLoad()V

    .line 205
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/urbanairship/widget/UAWebView;->onPreLoad()V

    .line 218
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 219
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->getScrollY()I

    move-result v1

    .line 178
    .local v1, "y":I
    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->getScrollX()I

    move-result v0

    .line 179
    .local v0, "x":I
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/urbanairship/widget/UAWebView;->onScrollChanged(IIII)V

    .line 182
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method protected populateCustomJavascriptInterfaces()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method setClientAuthRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 283
    if-nez p1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iput-object p1, p0, Lcom/urbanairship/widget/UAWebView;->currentClientAuthRequestUrl:Ljava/lang/String;

    .line 289
    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2

    instance-of v2, v2, Lcom/urbanairship/widget/UAWebViewClient;

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/widget/UAWebViewClient;

    .line 292
    .local v1, "webViewClient":Lcom/urbanairship/widget/UAWebViewClient;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {v1, v0, p2, p3}, Lcom/urbanairship/widget/UAWebViewClient;->addAuthRequestCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "webViewClient"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 223
    instance-of v0, p1, Lcom/urbanairship/widget/UAWebViewClient;

    if-nez v0, :cond_0

    .line 224
    const-string v0, "The web view client should extend UAWebViewClient to support urban airship url overrides and triggering actions from."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 228
    :cond_0
    iput-object p1, p0, Lcom/urbanairship/widget/UAWebView;->webViewClient:Landroid/webkit/WebViewClient;

    .line 229
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 230
    return-void
.end method
