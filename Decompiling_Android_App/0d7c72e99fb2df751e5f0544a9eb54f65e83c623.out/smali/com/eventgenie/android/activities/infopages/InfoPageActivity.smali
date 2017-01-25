.class public Lcom/eventgenie/android/activities/infopages/InfoPageActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "InfoPageActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# static fields
.field public static final INFOPAGE_CAN_OPEN_NATIVELY_EXTRA:Ljava/lang/String; = "infopage_can_open_natively"

.field public static final INFOPAGE_MOBILE_APP_CUSTOM_SCHEMA_URI:Ljava/lang/String; = "infopage_mobile_app_custom_schema_uri"

.field public static final INFOPAGE_TYPE_EXTRA:Ljava/lang/String; = "infopage_type"

.field public static final REMOTE_HTML_EXTRA:Ljava/lang/String; = "remote_html"


# instance fields
.field private mCanOpoenNatively:Z

.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mInfoPageType:Ljava/lang/String;

.field private mInfopageId:J

.field private mMobileAppCustomSchemaUri:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfopageId:J

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mCanOpoenNatively:Z

    return-void
.end method

.method private enableAppropriateFunctionality(Ljava/lang/String;)V
    .locals 4
    .param p1, "infoPageType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ INFO: UA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

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
    const-string v0, "link"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "web"

    iget-object v1, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfoPageType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 94
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 95
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 97
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 98
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 100
    sget v0, Lcom/eventgenie/android/R$id;->bottom_action_bar:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->isInsideTab()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->CLOSE_BROWSER:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 112
    :cond_2
    return-void

    .line 101
    :cond_3
    const-string v0, "page"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/eventgenie/android/activities/infopages/GenieMobileInfopageWebViewClient;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/infopages/GenieMobileInfopageWebViewClient;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method

.method private loadContent(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 116
    if-nez p1, :cond_1

    .line 117
    const-string v10, "^ INFO: Content is null"

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getInternalAccessGroup(Landroid/content/Context;)Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    move-result-object v10

    sget-object v11, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->SUPPORT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v10, v11}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 122
    sget v10, Lcom/eventgenie/android/R$id;->resetCache:I

    invoke-virtual {p0, v10}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_2
    const/4 v3, 0x0

    .line 126
    .local v3, "html":Ljava/lang/String;
    const/4 v7, 0x0

    .line 127
    .local v7, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v10

    iput-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 128
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mCanOpoenNatively:Z

    .line 130
    .local v0, "canOpenNatively":Z
    iget-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfoPageType:Ljava/lang/String;

    if-nez v10, :cond_3

    .line 131
    iget-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v10}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getInfopages()Lcom/genie_connect/android/db/access/DbInfopages;

    move-result-object v10

    iget-wide v12, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfopageId:J

    invoke-virtual {v10, v12, v13}, Lcom/genie_connect/android/db/access/DbInfopages;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v5

    .line 132
    .local v5, "infopages":Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v5}, Lcom/genie_connect/android/db/DbHelper;->has(Landroid/database/Cursor;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 133
    const-string/jumbo v10, "type"

    invoke-interface {v5, v10}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfoPageType:Ljava/lang/String;

    .line 134
    const-string/jumbo v10, "url"

    invoke-interface {v5, v10}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mUrl:Ljava/lang/String;

    .line 135
    const-string v10, "html"

    invoke-interface {v5, v10}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    const-string v10, "name"

    invoke-interface {v5, v10}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    const-string v10, "openNativeAppSchema"

    invoke-interface {v5, v10}, Luk/co/alt236/easycursor/EasyCursor;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 138
    const-string v10, "nativeAppSchemaUri"

    invoke-interface {v5, v10}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mMobileAppCustomSchemaUri:Ljava/lang/String;

    .line 139
    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->close(Landroid/database/Cursor;)V

    .line 150
    .end local v5    # "infopages":Luk/co/alt236/easycursor/EasyCursor;
    :cond_3
    :goto_1
    new-instance v8, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;

    invoke-direct {v8, p0}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;-><init>(Landroid/content/Context;)V

    .line 152
    .local v8, "tokenReplacer":Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;
    if-eqz v0, :cond_5

    const-string v10, "link"

    iget-object v11, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfoPageType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "web"

    iget-object v11, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfoPageType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 156
    :cond_4
    iget-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "url":Ljava/lang/String;
    iget-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mMobileAppCustomSchemaUri:Ljava/lang/String;

    invoke-static {v10}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 160
    iget-object v9, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mMobileAppCustomSchemaUri:Ljava/lang/String;

    .line 161
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ INFO: Using custom schema set ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mMobileAppCustomSchemaUri:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] to open correspondent native app"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 166
    :goto_2
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v4, "i":Landroid/content/Intent;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 170
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_9

    .line 171
    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 173
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->finish()V

    .line 196
    .end local v4    # "i":Landroid/content/Intent;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "url":Ljava/lang/String;
    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfoPageType:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->enableAppropriateFunctionality(Ljava/lang/String;)V

    .line 198
    if-nez v0, :cond_d

    const-string v10, "link"

    iget-object v11, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfoPageType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string/jumbo v10, "web"

    iget-object v11, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfoPageType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 200
    :cond_6
    iget-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    const/high16 v11, 0x2000000

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 201
    iget-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mUrl:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 202
    iget-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 204
    .restart local v9    # "url":Ljava/lang/String;
    invoke-static {v9}, Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils;->isThisValidGenieIntentUrl(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 205
    invoke-static {v9}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->fromUrl(Ljava/lang/String;)Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v2

    .line 206
    .local v2, "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    invoke-static {p0, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->resolveIntent(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils;->processIntentResult(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;Z)V

    .line 211
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->isInsideTab()Z

    move-result v10

    if-nez v10, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->finish()V

    goto/16 :goto_0

    .line 141
    .end local v2    # "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .end local v8    # "tokenReplacer":Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;
    .end local v9    # "url":Ljava/lang/String;
    .restart local v5    # "infopages":Luk/co/alt236/easycursor/EasyCursor;
    :cond_7
    sget v10, Lcom/eventgenie/android/R$string;->sorry_nothing_found:I

    sget-object v11, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v10, v11}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 146
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->finish()V

    goto/16 :goto_1

    .line 163
    .end local v5    # "infopages":Luk/co/alt236/easycursor/EasyCursor;
    .restart local v8    # "tokenReplacer":Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;
    .restart local v9    # "url":Ljava/lang/String;
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ INFO: There\'s no custom schema set ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mMobileAppCustomSchemaUri:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] for opening native app, thus falling back to url ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 175
    .restart local v4    # "i":Landroid/content/Intent;
    .restart local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_9
    iget-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 177
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "i":Landroid/content/Intent;
    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v4    # "i":Landroid/content/Intent;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 180
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ INFO: There\'s no default app to handle the schema ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mMobileAppCustomSchemaUri:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], will fallback to  ul ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 183
    if-eqz v6, :cond_a

    .line 185
    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->finish()V

    goto/16 :goto_3

    .line 189
    :cond_a
    const-string v10, "^ INFO: There\'s no default browser, will fallback to webview"

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 215
    .end local v4    # "i":Landroid/content/Intent;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_b
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->isSecure()Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/genie_connect/android/db/config/AppConfig;->isSecureApp()Z

    move-result v10

    if-nez v10, :cond_c

    .line 216
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v10

    sget-object v11, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SHARE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 219
    :cond_c
    iget-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-static {p0, v9, v10}, Lcom/eventgenie/android/ui/help/InfopageHelper;->changeUserAgentIfNeeded(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 221
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v10

    const-string/jumbo v11, "window_title"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    .end local v9    # "url":Ljava/lang/String;
    :cond_d
    const-string v10, "page"

    iget-object v11, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfoPageType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 226
    if-nez v3, :cond_f

    .line 227
    iget-wide v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfopageId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_f

    .line 228
    iget-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v10}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getInfopages()Lcom/genie_connect/android/db/access/DbInfopages;

    move-result-object v10

    iget-wide v12, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfopageId:J

    invoke-virtual {v10, v12, v13}, Lcom/genie_connect/android/db/access/DbInfopages;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v5

    .line 230
    .restart local v5    # "infopages":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v5}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v10

    if-lez v10, :cond_e

    .line 231
    const-string v10, "html"

    invoke-interface {v5, v10}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    const-string v10, "name"

    invoke-interface {v5, v10}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 235
    :cond_e
    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->close(Landroid/database/Cursor;)V

    .line 239
    .end local v5    # "infopages":Luk/co/alt236/easycursor/EasyCursor;
    :cond_f
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v10

    invoke-interface {v10, v7}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-static {p0, v10, v3}, Lcom/eventgenie/android/ui/help/InfopageHelper;->loadHtmlIntoWebview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :cond_10
    const-string/jumbo v10, "xmlpayload"

    iget-object v11, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfoPageType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 243
    if-nez v3, :cond_11

    .line 244
    iget-object v10, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v10}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getInfopages()Lcom/genie_connect/android/db/access/DbInfopages;

    move-result-object v10

    iget-wide v12, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfopageId:J

    invoke-virtual {v10, v12, v13}, Lcom/genie_connect/android/db/access/DbInfopages;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v5

    .line 245
    .restart local v5    # "infopages":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v5}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v10

    if-lez v10, :cond_11

    .line 246
    const-string v10, "html"

    invoke-interface {v5, v10}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->close(Landroid/database/Cursor;)V

    .line 251
    .end local v5    # "infopages":Luk/co/alt236/easycursor/EasyCursor;
    :cond_11
    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 252
    invoke-static {p0, v3}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->fromXmlPayloadInfopage(Landroid/content/Context;Ljava/lang/String;)Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;

    move-result-object v1

    .line 253
    .local v1, "config":Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;
    if-eqz v1, :cond_0

    .line 254
    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getIntent(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 255
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->finish()V

    goto/16 :goto_0

    .line 258
    .end local v1    # "config":Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;
    :cond_12
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onBrowserBack(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://this.means.load.html/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->finish()V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0
.end method

.method public onBrowserCloseClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->isInsideTab()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->finish()V

    .line 279
    :cond_0
    return-void
.end method

.method public onBrowserForward(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 285
    :cond_0
    return-void
.end method

.method public onBrowserReload(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 289
    return-void
.end method

.method public onClearCache(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 292
    const-string v1, "Clearing Cache..."

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 293
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 294
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 295
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 296
    iget-object v1, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 297
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 301
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 303
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 304
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 306
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 309
    const-string v2, "infopage_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfoPageType:Ljava/lang/String;

    .line 310
    const-string v2, "entity_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfopageId:J

    .line 311
    const-string v2, "remote_html"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mUrl:Ljava/lang/String;

    .line 312
    const-string v2, "infopage_can_open_natively"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mCanOpoenNatively:Z

    .line 313
    const-string v2, "infopage_mobile_app_custom_schema_uri"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mMobileAppCustomSchemaUri:Ljava/lang/String;

    .line 315
    sget v2, Lcom/eventgenie/android/R$layout;->activity_infopage:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->setContentView(I)V

    .line 316
    sget v2, Lcom/eventgenie/android/R$id;->web_content:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    .line 318
    const-string v2, "hide_advert"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->showAdvert()V

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->setupWebView(Landroid/webkit/WebView;)V

    .line 324
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->isAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->loadContent(Landroid/os/Bundle;)V

    .line 330
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->isSecure()Z

    move-result v2

    if-nez v2, :cond_1

    .line 327
    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->loadContent(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 334
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getRawViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 335
    return-void
.end method

.method public onHomeClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->onBackPressed()V

    .line 358
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->isInsideTab()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->onBrowserBack(Landroid/view/View;)V

    .line 349
    const/4 v0, 0x1

    .line 352
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLoginSuccess()V
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->loadContent(Landroid/os/Bundle;)V

    .line 363
    return-void
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 366
    iget-object v2, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "title":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, "subject":Ljava/lang/String;
    new-instance v1, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v2, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v1, p0, v2}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    .line 378
    .local v1, "manager":Lcom/eventgenie/android/utils/intents/ShareManager;
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mInfopageId:J

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 387
    iget-object v1, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    new-instance v1, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0
.end method
