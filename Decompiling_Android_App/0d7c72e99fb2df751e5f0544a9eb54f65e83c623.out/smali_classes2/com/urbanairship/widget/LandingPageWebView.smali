.class public Lcom/urbanairship/widget/LandingPageWebView;
.super Lcom/urbanairship/widget/UAWebView;
.source "LandingPageWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defResStyle"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    return-void
.end method

.method private setClientAuthRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    .line 152
    .local v0, "options":Lcom/urbanairship/AirshipConfigOptions;
    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/urbanairship/widget/LandingPageWebView;->setClientAuthRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v4

    iget-object v4, v4, Lcom/urbanairship/AirshipConfigOptions;->landingPageContentURL:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    :cond_0
    invoke-super {p0, p1}, Lcom/urbanairship/widget/UAWebView;->loadUrl(Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 111
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_2

    .line 112
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v3

    .line 113
    .local v3, "options":Lcom/urbanairship/AirshipConfigOptions;
    new-instance v1, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v3}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .local v1, "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lorg/apache/http/impl/auth/BasicScheme;->authenticate(Lorg/apache/http/auth/Credentials;Ljava/lang/String;Z)Lorg/apache/http/Header;

    move-result-object v0

    .line 116
    .local v0, "credentialHeader":Lorg/apache/http/Header;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-super {p0, p1, v2}, Lcom/urbanairship/widget/UAWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    .end local v0    # "credentialHeader":Lorg/apache/http/Header;
    .end local v1    # "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    .end local v2    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "options":Lcom/urbanairship/AirshipConfigOptions;
    :goto_1
    invoke-direct {p0, p1}, Lcom/urbanairship/widget/LandingPageWebView;->setClientAuthRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-super {p0, p1}, Lcom/urbanairship/widget/UAWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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
    .line 138
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lcom/urbanairship/widget/UAWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 140
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->landingPageContentURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0, p1}, Lcom/urbanairship/widget/LandingPageWebView;->setClientAuthRequest(Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method
