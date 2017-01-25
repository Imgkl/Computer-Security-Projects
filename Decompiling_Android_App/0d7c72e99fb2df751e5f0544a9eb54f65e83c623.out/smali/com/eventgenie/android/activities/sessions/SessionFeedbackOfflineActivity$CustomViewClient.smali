.class Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;
.super Landroid/webkit/WebViewClient;
.source "SessionFeedbackOfflineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomViewClient"
.end annotation


# instance fields
.field private final mBaseUrl:Ljava/lang/String;

.field private final mReplaceTokenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubmitUrl:Ljava/lang/String;

.field private final mThankYouUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "thankyouUrl"    # Ljava/lang/String;
    .param p4, "submitUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p5, "tokenList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 174
    iput-object p2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->mBaseUrl:Ljava/lang/String;

    .line 175
    iput-object p3, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->mThankYouUrl:Ljava/lang/String;

    .line 176
    iput-object p5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->mReplaceTokenList:Ljava/util/List;

    .line 177
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 178
    iput-object p4, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->mSubmitUrl:Ljava/lang/String;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ OFFLINE_FB: Submit URL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->mSubmitUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    const-string v0, "http://www.formstack.com/m/index.php?"

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->mSubmitUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private replaceFields(Landroid/webkit/WebView;)V
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    const/4 v8, 0x1

    .line 224
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->mReplaceTokenList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->mReplaceTokenList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v8, :cond_1

    .line 232
    :cond_0
    return-void

    .line 225
    :cond_1
    new-instance v3, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    invoke-direct {v3, v4}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;-><init>(Landroid/content/Context;)V

    .line 228
    .local v3, "tokenReplacer":Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->mReplaceTokenList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 229
    .local v1, "pair":[Ljava/lang/String;
    aget-object v4, v1, v8

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    # getter for: Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mEntityId:J
    invoke-static {v5}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->access$200(Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    # getter for: Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mEntityTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->access$300(Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v6, v7, v5}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "replacedValue":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:document.getElementById(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\").value = \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ OFFLINE_FB: onPageFinished() URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->replaceFields(Landroid/webkit/WebView;)V

    .line 190
    const-string v1, "javascript:(function() { function serialize(form){if(!form||form.nodeName!==\'FORM\'){return }var i,j,q=[];for(i=form.elements.length-1;i>=0;i=i-1){if(form.elements[i].name===\'\'){continue}switch(form.elements[i].nodeName){case\'INPUT\':switch(form.elements[i].type){case\'text\':case\'hidden\':case\'password\':case\'button\':case\'reset\':case\'submit\':q.push(form.elements[i].name+\'=\'+encodeURIComponent(form.elements[i].value));break;case\'checkbox\':case\'radio\':if(form.elements[i].checked){q.push(form.elements[i].name+\'=\'+encodeURIComponent(form.elements[i].value))}break;case\'file\':break}break;case\'TEXTAREA\':q.push(form.elements[i].name+\'=\'+encodeURIComponent(form.elements[i].value));break;case\'SELECT\':switch(form.elements[i].type){case\'select-one\':q.push(form.elements[i].name+\'=\'+encodeURIComponent(form.elements[i].value));break;case\'select-multiple\':for(j=form.elements[i].options.length-1;j>=0;j=j-1){if(form.elements[i].options[j].selected){q.push(form.elements[i].name+\'=\'+encodeURIComponent(form.elements[i].options[j].value))}}break}break;case\'BUTTON\':switch(form.elements[i].type){case\'reset\':case\'submit\':case\'button\':q.push(form.elements[i].name+\'=\'+encodeURIComponent(form.elements[i].value));break}break}}return q.join(\'&\')};function parseForm(event) {window.FORMOUT.processFormData(serialize(document.forms[0]))}var inputs = document.forms[0].getElementsByTagName(\'input\');for (var i = 0; i < inputs.length; i++) {    if (inputs[i].getAttribute(\'type\') == \'submit\') {        inputs[i].addEventListener(\'click\', parseForm, false);    }}})()"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 210
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_LEFT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 211
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->mThankYouUrl:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->replaceFields(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 193
    :cond_2
    const-string v1, ".php"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->mSubmitUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    # getter for: Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mPostBody:Ljava/lang/String;
    invoke-static {v3}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->access$000(Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->submitForm(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->access$100(Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->mThankYouUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->mThankYouUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->mThankYouUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_3
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->getFeedbackOkMessege()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "okMessage":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 200
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v0, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 205
    :cond_4
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->finish()V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_LEFT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 216
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ OFFLINE_FB: Error loading url: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' reason: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ OFFLINE_FB: Opening URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 238
    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HTTP"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 250
    :goto_0
    return v0

    .line 241
    :cond_1
    const-string v1, "mailto"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MAILTO"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    new-instance v2, Lcom/eventgenie/android/utils/intents/IntentFactory;

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$CustomViewClient;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    invoke-direct {v2, v3}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Lcom/eventgenie/android/utils/intents/IntentFactory;->newEmailIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 244
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 247
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ OFFLINE_FB: Unhandled URL load: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    goto :goto_0
.end method
