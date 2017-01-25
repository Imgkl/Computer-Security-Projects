.class public Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AppXCustomWebview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/julysystems/appx/AppXCustomWebview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppXCustomWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/julysystems/appx/AppXCustomWebview;


# direct methods
.method public constructor <init>(Lcom/julysystems/appx/AppXCustomWebview;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;->this$0:Lcom/julysystems/appx/AppXCustomWebview;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 13
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v11, p0, Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;->this$0:Lcom/julysystems/appx/AppXCustomWebview;

    iget-object v11, v11, Lcom/julysystems/appx/AppXCustomWebview;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/julysystems/appx/AppX;->getRulesObjectString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, "strRulesJson":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 116
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    .local v3, "jsonRulesObj":Lorg/json/JSONObject;
    const-string v11, "rule"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 118
    .local v4, "jsonRulesObjArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 119
    .local v6, "numberOfItems":I
    if-lez v6, :cond_0

    .line 120
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v6, :cond_2

    .line 140
    .end local v1    # "i":I
    .end local v3    # "jsonRulesObj":Lorg/json/JSONObject;
    .end local v4    # "jsonRulesObjArray":Lorg/json/JSONArray;
    .end local v6    # "numberOfItems":I
    :cond_0
    :goto_1
    const-string v11, "APPX_CUSTOM_WEBVIEW"

    const-string v12, "onPageFinished....."

    invoke-static {v11, v12}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :try_start_1
    iget-object v11, p0, Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;->this$0:Lcom/julysystems/appx/AppXCustomWebview;

    iget-object v11, v11, Lcom/julysystems/appx/AppXCustomWebview;->pd:Landroid/app/ProgressDialog;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;->this$0:Lcom/julysystems/appx/AppXCustomWebview;

    iget-object v11, v11, Lcom/julysystems/appx/AppXCustomWebview;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 143
    iget-object v11, p0, Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;->this$0:Lcom/julysystems/appx/AppXCustomWebview;

    iget-object v11, v11, Lcom/julysystems/appx/AppXCustomWebview;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 149
    return-void

    .line 121
    .restart local v1    # "i":I
    .restart local v3    # "jsonRulesObj":Lorg/json/JSONObject;
    .restart local v4    # "jsonRulesObjArray":Lorg/json/JSONArray;
    .restart local v6    # "numberOfItems":I
    :cond_2
    :try_start_2
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 122
    .local v2, "jsonRuleObj":Lorg/json/JSONObject;
    const-string v11, "srcurl"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, "sourcePattern":Ljava/lang/String;
    const-string v11, "script"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "scriptContent":Ljava/lang/String;
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 125
    .local v7, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v7, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 126
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 127
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "javascript:(function() { "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 129
    const-string v12, "})()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 127
    invoke-virtual {p1, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    .end local v2    # "jsonRuleObj":Lorg/json/JSONObject;
    .end local v3    # "jsonRulesObj":Lorg/json/JSONObject;
    .end local v4    # "jsonRulesObjArray":Lorg/json/JSONArray;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "numberOfItems":I
    .end local v7    # "p":Ljava/util/regex/Pattern;
    .end local v8    # "scriptContent":Ljava/lang/String;
    .end local v9    # "sourcePattern":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lorg/json/JSONException;
    const-string v11, "Appx Webview JSON Parser"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 145
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "Appx Webview close pd"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 153
    const-string v1, "target=."

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 167
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v1, "APPX_CUSTOM_WEBVIEW"

    const-string v2, "onPageStarted....."

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;->this$0:Lcom/julysystems/appx/AppXCustomWebview;

    iget-object v1, v1, Lcom/julysystems/appx/AppXCustomWebview;->pd:Landroid/app/ProgressDialog;

    if-nez v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;->this$0:Lcom/julysystems/appx/AppXCustomWebview;

    sget-object v2, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "Loading..."

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/julysystems/appx/AppXCustomWebview;->pd:Landroid/app/ProgressDialog;

    .line 165
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;->this$0:Lcom/julysystems/appx/AppXCustomWebview;

    iget-object v1, v1, Lcom/julysystems/appx/AppXCustomWebview;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 162
    iget-object v1, p0, Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;->this$0:Lcom/julysystems/appx/AppXCustomWebview;

    iget-object v1, v1, Lcom/julysystems/appx/AppXCustomWebview;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 172
    :try_start_0
    const-string v5, "AppX Custom WebView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AppX WebView Override Url ###"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-eqz p2, :cond_1

    const-string v5, ""

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 174
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "urlString":Ljava/lang/String;
    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "sms:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ".vcf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 176
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 177
    .local v2, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 243
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "urlString":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 178
    .restart local v4    # "urlString":Ljava/lang/String;
    :cond_2
    const-string v5, "market://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 179
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 181
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Appx Webview "

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "urlString":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ".3gp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ".wmv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ".flv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ".mpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ".mov"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ".rm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ".3gpp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 183
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "video/*"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 186
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v5, ".wav"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, ".aif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, ".mid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 187
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "audio/*"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 190
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v5, "julymx://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 191
    const-string v5, "julymx://"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 192
    const-string v5, "exit"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 193
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 194
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 195
    :cond_8
    const-string v5, "closeoverlay"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_9

    .line 197
    :try_start_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/julysystems/appx/AppXOverlay;

    if-eqz v5, :cond_1

    .line 198
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/julysystems/appx/AppXOverlay;

    invoke-virtual {v5}, Lcom/julysystems/appx/AppXOverlay;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 199
    :catch_1
    move-exception v1

    .line 200
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "Appx Webview close overlay"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    const-string v5, "download?"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 203
    const-string v5, "download?"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 204
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 205
    .restart local v2    # "intent":Landroid/content/Intent;
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 206
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_a
    const-string v5, "video?"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 207
    const-string v5, "video?"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 208
    new-instance v0, Lcom/julysystems/appx/AppXVideoAsyncTask;

    invoke-direct {v0, p2}, Lcom/julysystems/appx/AppXVideoAsyncTask;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "appxVideoAsyncTask":Lcom/julysystems/appx/AppXVideoAsyncTask;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_b

    .line 210
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/julysystems/appx/AppXVideoAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 212
    :cond_b
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/julysystems/appx/AppXVideoAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 215
    .end local v0    # "appxVideoAsyncTask":Lcom/julysystems/appx/AppXVideoAsyncTask;
    :cond_c
    const-string v5, "target=."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 216
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 217
    .restart local v2    # "intent":Landroid/content/Intent;
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 218
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_d
    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 219
    iget-object v5, p0, Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;->this$0:Lcom/julysystems/appx/AppXCustomWebview;

    iget-object v5, v5, Lcom/julysystems/appx/AppXCustomWebview;->context:Landroid/content/Context;

    invoke-static {v5, p2}, Lcom/julysystems/appx/AppXUtils;->processScheme(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 220
    .local v3, "isSchemeProcessed":Z
    if-eqz v3, :cond_e

    .line 221
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 222
    .restart local v2    # "intent":Landroid/content/Intent;
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 224
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_e
    sget-object v5, Lcom/julysystems/appx/AppX;->mAppXCustomSchemeListner:Lcom/julysystems/appx/AppXCustomSchemeListner;

    if-eqz v5, :cond_1

    .line 225
    invoke-static {p2}, Lcom/julysystems/appx/AppX;->isCustomSchemeValid(Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_1

    .line 229
    .end local v3    # "isSchemeProcessed":Z
    :cond_f
    iget-object v5, p0, Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;->this$0:Lcom/julysystems/appx/AppXCustomWebview;

    iget-object v5, v5, Lcom/julysystems/appx/AppXCustomWebview;->context:Landroid/content/Context;

    invoke-static {v5, p2}, Lcom/julysystems/appx/AppXUtils;->processScheme(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 230
    .restart local v3    # "isSchemeProcessed":Z
    if-eqz v3, :cond_10

    .line 231
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 232
    .restart local v2    # "intent":Landroid/content/Intent;
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 234
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_10
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 235
    iget-object v5, p0, Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;->this$0:Lcom/julysystems/appx/AppXCustomWebview;

    iget-object v5, v5, Lcom/julysystems/appx/AppXCustomWebview;->context:Landroid/content/Context;

    const-string v6, "Invalid URL specified"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 237
    :cond_11
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
