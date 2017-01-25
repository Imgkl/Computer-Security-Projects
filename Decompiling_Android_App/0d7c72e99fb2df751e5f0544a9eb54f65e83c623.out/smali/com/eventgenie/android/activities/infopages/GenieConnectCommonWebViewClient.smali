.class abstract Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "GenieConnectCommonWebViewClient.java"


# instance fields
.field private final mActionbarControls:Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActivity:Landroid/app/Activity;

    .line 29
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    iput-object v0, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActionbarControls:Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    .line 30
    return-void
.end method

.method private getErrorPageOverride(I)Ljava/lang/String;
    .locals 8
    .param p1, "errorCode"    # I

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 80
    :pswitch_0
    const/4 v4, 0x0

    .line 82
    .local v4, "flag":Z
    const/4 v3, 0x0

    .line 83
    .local v3, "errorTitle":Ljava/lang/String;
    const/4 v1, 0x0

    .line 84
    .local v1, "errorDescription":Ljava/lang/String;
    const/4 v2, 0x0

    .line 85
    .local v2, "errorIcon":Ljava/lang/String;
    const/4 v0, 0x0

    .line 86
    .local v0, "buttonLabel":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_0
    if-eqz v4, :cond_0

    .line 90
    const-string v6, "[ERROR_ICON]"

    invoke-static {v5, v6, v2}, Lcom/genie_connect/android/utils/string/StringUtils;->replaceAll(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v6, "[ERROR_TITLE]"

    invoke-static {v5, v6, v3}, Lcom/genie_connect/android/utils/string/StringUtils;->replaceAll(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v6, "[ERROR_DESCRIPTION]"

    invoke-static {v5, v6, v1}, Lcom/genie_connect/android/utils/string/StringUtils;->replaceAll(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v6, "[BUTTON_LABEL]"

    invoke-static {v5, v6, v0}, Lcom/genie_connect/android/utils/string/StringUtils;->replaceAll(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 55
    .end local v0    # "buttonLabel":Ljava/lang/String;
    .end local v1    # "errorDescription":Ljava/lang/String;
    .end local v2    # "errorIcon":Ljava/lang/String;
    .end local v3    # "errorTitle":Ljava/lang/String;
    .end local v4    # "flag":Z
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :pswitch_1
    const/4 v4, 0x1

    .line 57
    .restart local v4    # "flag":Z
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$raw;->web_error_connecting:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Lcom/genie_connect/common/utils/StreamUtils;->convertStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$string;->webview_error_title_we_were_unable_to_access_the_server:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    .restart local v3    # "errorTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$string;->webview_error_description_please_ensure_that_you_are_online_and_refresh_this_page:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .restart local v1    # "errorDescription":Ljava/lang/String;
    :goto_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_2

    .line 72
    const-string/jumbo v2, "yellow_triangle.svg"

    .line 77
    .restart local v2    # "errorIcon":Ljava/lang/String;
    :goto_2
    const-string v0, "Refresh"

    .line 78
    .restart local v0    # "buttonLabel":Ljava/lang/String;
    goto :goto_0

    .line 67
    .end local v0    # "buttonLabel":Ljava/lang/String;
    .end local v1    # "errorDescription":Ljava/lang/String;
    .end local v2    # "errorIcon":Ljava/lang/String;
    .end local v3    # "errorTitle":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$string;->webview_error_title_you_are_currently_offline:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 68
    .restart local v3    # "errorTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$string;->webview_error_description_please_ensure_that_you_are_online_and_refresh_this_page:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "errorDescription":Ljava/lang/String;
    goto :goto_1

    .line 74
    :cond_2
    const-string/jumbo v2, "yellow_triangle.png"

    .restart local v2    # "errorIcon":Ljava/lang/String;
    goto :goto_2

    .line 50
    nop

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected getControls()Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActionbarControls:Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActionbarControls:Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    .line 102
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActionbarControls:Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    .line 107
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ INFO: onReceivedError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, p2}, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->getErrorPageOverride(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "errorPageOverride":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "^ INFO: We will override the error page."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, p4, v2}, Lcom/eventgenie/android/ui/help/InfopageHelper;->loadHtmlIntoWebview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ INFO: shouldOverrideUrlLoading(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 124
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 125
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "urlInLowercase":Ljava/lang/String;
    invoke-static {p2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils;->isThisValidGenieIntentUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-static {p2}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->fromUrl(Ljava/lang/String;)Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v0

    .line 129
    .local v0, "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    iget-object v4, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->resolveIntent(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils;->processIntentResult(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;Z)V

    .line 154
    .end local v0    # "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .end local v1    # "urlInLowercase":Ljava/lang/String;
    :goto_0
    return v2

    .line 135
    .restart local v1    # "urlInLowercase":Ljava/lang/String;
    :cond_0
    const-string v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    iget-object v2, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p2, p1}, Lcom/eventgenie/android/ui/help/InfopageHelper;->changeUserAgentIfNeeded(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;)V

    move v2, v3

    .line 137
    goto :goto_0

    .line 138
    :cond_1
    const-string v4, "mailto"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    iget-object v3, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/eventgenie/android/utils/intents/IntentFactory;

    iget-object v5, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p2}, Lcom/eventgenie/android/utils/intents/IntentFactory;->newEmailIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 144
    :cond_2
    const-string/jumbo v4, "tel:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    iget-object v3, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/eventgenie/android/utils/intents/IntentFactory;

    iget-object v5, p0, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p2}, Lcom/eventgenie/android/utils/intents/IntentFactory;->newDialIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 151
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ INFO: Unhandled URL load: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .end local v1    # "urlInLowercase":Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 154
    goto :goto_0
.end method
