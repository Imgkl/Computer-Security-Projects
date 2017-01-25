.class public Lcom/eventgenie/android/fragments/infopages/InfopageFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseFragment;
.source "InfopageFragment.java"

# interfaces
.implements Lcom/eventgenie/android/fragments/base/EntityFragment;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/webkit/DownloadListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/fragments/base/GenieBaseFragment;",
        "Lcom/eventgenie/android/fragments/base/EntityFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/webkit/DownloadListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final ENTITY_ID:Ljava/lang/String; = "ENTITY_ID"


# instance fields
.field private mBottomActionbar:Landroid/view/View;

.field private mHtmlToDisplay:Ljava/lang/String;

.field private mInfoPageName:Ljava/lang/String;

.field private mInfoPageType:Ljava/lang/String;

.field private mInfopageID:J

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;-><init>()V

    return-void
.end method

.method private enabledAppropriateFunctionality()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 82
    const-string v0, "link"

    iget-object v1, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mInfoPageType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "web"

    iget-object v1, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mInfoPageType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 85
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ INFOFrag: UA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 92
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 94
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 95
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 97
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mBottomActionbar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_1
    return-void
.end method

.method private loadContent()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ INFOFRAG: Loading page: \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mInfopageID:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\', type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mInfoPageType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\', hasUrl: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mUrl:Ljava/lang/String;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->enabledAppropriateFunctionality()V

    .line 131
    const-string v3, "link"

    iget-object v5, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mInfoPageType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "web"

    iget-object v5, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mInfoPageType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    const/high16 v5, 0x2000000

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 135
    iget-object v3, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mUrl:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 136
    new-instance v1, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;-><init>(Landroid/content/Context;)V

    .line 137
    .local v1, "tokenReplacer":Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;
    iget-object v3, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils;->isThisValidGenieIntentUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    invoke-static {v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->fromUrl(Ljava/lang/String;)Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v0

    .line 141
    .local v0, "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->resolveIntent(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils;->processIntentResult(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;Z)V

    .line 157
    .end local v0    # "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .end local v1    # "tokenReplacer":Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v3, v4

    .line 129
    goto :goto_0

    .line 146
    .restart local v1    # "tokenReplacer":Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ INFOFRAG: Loading URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    invoke-static {v3, v2, v4}, Lcom/eventgenie/android/ui/help/InfopageHelper;->changeUserAgentIfNeeded(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 148
    iget-object v3, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 152
    .end local v1    # "tokenReplacer":Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;
    .end local v2    # "url":Ljava/lang/String;
    :cond_4
    const-string v3, "page"

    iget-object v4, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mInfoPageType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    iget-wide v4, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mInfopageID:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mHtmlToDisplay:Ljava/lang/String;

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mHtmlToDisplay:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/eventgenie/android/ui/help/InfopageHelper;->loadHtmlIntoWebview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static newInstance(J)Lcom/eventgenie/android/fragments/infopages/InfopageFragment;
    .locals 4
    .param p0, "infoPageId"    # J

    .prologue
    .line 264
    const-string v2, "^ INFOFRAG: new InfoPageFragment"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 265
    new-instance v1, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;-><init>()V

    .line 266
    .local v1, "frag":Lcom/eventgenie/android/fragments/infopages/InfopageFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 267
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "ENTITY_ID"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 268
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 269
    return-object v1
.end method


# virtual methods
.method public getEnitity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getEntityId()J
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ENTITY_ID"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHtmlToDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mHtmlToDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mInfoPageName:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoPageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mInfoPageType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onBrowserBack(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    const-string v0, "^ INFOFRAG: onBrowserBack"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 164
    :cond_0
    return-void
.end method

.method public onBrowserCloseClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    const-string v0, "^ INFOFRAG: onBrowserCloseClick"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/base/GenieActivity;

    invoke-interface {v0}, Lcom/eventgenie/android/activities/base/GenieActivity;->isInsideTab()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 171
    :cond_0
    return-void
.end method

.method public onBrowserForward(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    const-string v0, "^ INFOFRAG: onBrowserForward"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 178
    :cond_0
    return-void
.end method

.method public onBrowserReload(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    const-string v0, "^ INFOFRAG: onBrowserReload"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 183
    return-void
.end method

.method public onClearCache(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    const-string v1, "^ INFOFRAG: onClearCache"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Clearing Cache..."

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 189
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 190
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 191
    iget-object v1, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 192
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ INFOFRAG: onClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 197
    sget v0, Lcom/eventgenie/android/R$id;->resetCache:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 198
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->onClearCache(Landroid/view/View;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    sget v0, Lcom/eventgenie/android/R$id;->forward:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 200
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->onBrowserForward(Landroid/view/View;)V

    goto :goto_0

    .line 201
    :cond_2
    sget v0, Lcom/eventgenie/android/R$id;->back:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 202
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->onBrowserBack(Landroid/view/View;)V

    goto :goto_0

    .line 203
    :cond_3
    sget v0, Lcom/eventgenie/android/R$id;->reload:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->onBrowserReload(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 211
    const-string v0, "^ INFOFrag: InfoPageFragment onCreate"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->setRetainInstance(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ENTITY_ID"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mInfopageID:J

    .line 214
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lcom/genie_connect/android/db/loaders/InfoPageLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ENTITY_ID"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/genie_connect/android/db/loaders/InfoPageLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;J)V

    .line 222
    .local v0, "cursorLoader":Lcom/genie_connect/android/db/loaders/InfoPageLoader;
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 227
    const-string v1, "^ INFOFRAG: InfoPageFragment on Create View"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 228
    sget v1, Lcom/eventgenie/android/R$layout;->fragment_webview:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 229
    .local v0, "mainView":Landroid/view/View;
    sget v1, Lcom/eventgenie/android/R$id;->webview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mWebView:Landroid/webkit/WebView;

    .line 230
    sget v1, Lcom/eventgenie/android/R$id;->bottom_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mBottomActionbar:Landroid/view/View;

    .line 232
    iget-object v1, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mBottomActionbar:Landroid/view/View;

    sget v2, Lcom/eventgenie/android/R$id;->resetCache:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v1, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mBottomActionbar:Landroid/view/View;

    sget v2, Lcom/eventgenie/android/R$id;->forward:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v1, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mBottomActionbar:Landroid/view/View;

    sget v2, Lcom/eventgenie/android/R$id;->back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v1, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mBottomActionbar:Landroid/view/View;

    sget v2, Lcom/eventgenie/android/R$id;->reload:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getLoaderId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 238
    return-object v0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 243
    const-string v0, "^ INFOFRAG: Starting download"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getRawViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 245
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-static {p2}, Lcom/genie_connect/android/db/DbHelper;->has(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mInfoPageType:Ljava/lang/String;

    .line 255
    const-string v0, "html"

    invoke-static {p2, v0}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mHtmlToDisplay:Ljava/lang/String;

    .line 256
    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mInfoPageName:Ljava/lang/String;

    .line 257
    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->mUrl:Ljava/lang/String;

    .line 259
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->loadContent()V

    .line 261
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 67
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
