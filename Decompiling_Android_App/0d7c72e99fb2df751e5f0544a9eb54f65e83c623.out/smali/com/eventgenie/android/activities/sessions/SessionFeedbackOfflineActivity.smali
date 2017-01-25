.class public Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "SessionFeedbackOfflineActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$JavaScriptInterface;,
        Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;
    }
.end annotation


# static fields
.field public static final FORM_PATH_EXTRA:Ljava/lang/String; = "form_path"

.field private static final JS_INJECT:Ljava/lang/String; = "function serialize(form){if(!form||form.nodeName!==\'FORM\'){return }var i,j,q=[];for(i=form.elements.length-1;i>=0;i=i-1){if(form.elements[i].name===\'\'){continue}switch(form.elements[i].nodeName){case\'INPUT\':switch(form.elements[i].type){case\'text\':case\'hidden\':case\'password\':case\'button\':case\'reset\':case\'submit\':q.push(form.elements[i].name+\'=\'+encodeURIComponent(form.elements[i].value));break;case\'checkbox\':case\'radio\':if(form.elements[i].checked){q.push(form.elements[i].name+\'=\'+encodeURIComponent(form.elements[i].value))}break;case\'file\':break}break;case\'TEXTAREA\':q.push(form.elements[i].name+\'=\'+encodeURIComponent(form.elements[i].value));break;case\'SELECT\':switch(form.elements[i].type){case\'select-one\':q.push(form.elements[i].name+\'=\'+encodeURIComponent(form.elements[i].value));break;case\'select-multiple\':for(j=form.elements[i].options.length-1;j>=0;j=j-1){if(form.elements[i].options[j].selected){q.push(form.elements[i].name+\'=\'+encodeURIComponent(form.elements[i].options[j].value))}}break}break;case\'BUTTON\':switch(form.elements[i].type){case\'reset\':case\'submit\':case\'button\':q.push(form.elements[i].name+\'=\'+encodeURIComponent(form.elements[i].value));break}break}}return q.join(\'&\')};function parseForm(event) {window.FORMOUT.processFormData(serialize(document.forms[0]))}var inputs = document.forms[0].getElementsByTagName(\'input\');for (var i = 0; i < inputs.length; i++) {    if (inputs[i].getAttribute(\'type\') == \'submit\') {        inputs[i].addEventListener(\'click\', parseForm, false);    }}"

.field public static final SUBMIT_URL_DEFAULT:Ljava/lang/String; = "http://www.formstack.com/m/index.php?"

.field public static final THANKYOU_PATH_EXTRA:Ljava/lang/String; = "thankyou_path"

.field public static final TITLE_EXTRA:Ljava/lang/String; = "item_title"


# instance fields
.field private mEntityId:J

.field private mEntityTitle:Ljava/lang/String;

.field private mFormPath:Ljava/lang/String;

.field private mPostBody:Ljava/lang/String;

.field private mThankYouPath:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mPostBody:Ljava/lang/String;

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mPostBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mPostBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->submitForm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mEntityId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mEntityTitle:Ljava/lang/String;

    return-object v0
.end method

.method private submitForm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "postUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 126
    const-string v3, "sessions"

    iget-wide v4, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mEntityId:J

    invoke-static {p0, v3, v4, v5}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyFeedbackSent(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 127
    invoke-static {p0}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueNetwork;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    :goto_0
    return v2

    .line 130
    :cond_0
    const-string v3, "^ OFFLINE_FB: submitForm() submitting"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 132
    :try_start_0
    const-string v3, "%20"

    const-string v4, "+"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 133
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "url":Ljava/net/URL;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ OFFLINE_FB: URL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ OFFLINE_FB: DATA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 137
    new-instance v3, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1, p2}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/eventgenie/android/EventGenieApplication;->addToFFQueue(Landroid/content/Context;Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ OFFLINE_FB: submitForm() Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 143
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private turnThisIntoABrowser()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "JavascriptInterface"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 151
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mFormPath:Ljava/lang/String;

    const-string v1, "index.html"

    const-string v2, "gmtokens.txt"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/FileIoUtil;->readTwoColumnFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 152
    .local v5, "tokenList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mFormPath:Ljava/lang/String;

    const-string v1, "index.html"

    const-string/jumbo v2, "url.txt"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/FileIoUtil;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "submitUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mFormPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mThankYouPath:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;-><init>(Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 155
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 158
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 159
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$JavaScriptInterface;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$JavaScriptInterface;-><init>(Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;)V

    const-string v2, "FORMOUT"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 161
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mWebView:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 162
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 163
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 164
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const-string v1, "^ OFFLINE_FB: Opened SessionFeedbackOfflineActivity"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 90
    sget v1, Lcom/eventgenie/android/R$layout;->activity_infopage:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->setContentView(I)V

    .line 92
    sget v1, Lcom/eventgenie/android/R$id;->web_content:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mWebView:Landroid/webkit/WebView;

    .line 93
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->setupWebView(Landroid/webkit/WebView;)V

    .line 95
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 97
    const-string v1, "form_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mFormPath:Ljava/lang/String;

    .line 98
    const-string/jumbo v1, "thankyou_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mThankYouPath:Ljava/lang/String;

    .line 99
    const-string v1, "entity_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mEntityId:J

    .line 100
    const-string v1, "item_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mEntityTitle:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mEntityTitle:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mFormPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mFormPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->finish()V

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mThankYouPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mThankYouPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "null"

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mThankYouPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mThankYouPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mThankYouPath:Ljava/lang/String;

    .line 114
    :cond_2
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->turnThisIntoABrowser()V

    .line 115
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mFormPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 116
    return-void

    .line 107
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mFormPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mFormPath:Ljava/lang/String;

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
    .line 121
    const-string v0, "^ INFO: Starting download"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 123
    return-void
.end method
