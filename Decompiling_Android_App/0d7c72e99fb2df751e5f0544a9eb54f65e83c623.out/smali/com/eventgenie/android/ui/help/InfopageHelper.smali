.class public Lcom/eventgenie/android/ui/help/InfopageHelper;
.super Ljava/lang/Object;
.source "InfopageHelper.java"


# static fields
.field public static final HTTP_THIS_MEANS_LOAD_HTML:Ljava/lang/String; = "http://this.means.load.html/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeUserAgentIfNeeded(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "webview"    # Landroid/webkit/WebView;

    .prologue
    .line 47
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "lCaseUrl":Ljava/lang/String;
    const-string/jumbo v2, "www.linkedin.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    const/4 v0, 0x1

    .line 60
    .local v0, "changeAgent":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 61
    const-string v2, "^ INFO: Changing UserAgent to non-mobile"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-static {p0}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/net/providers/UserAgentUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getChromeBrowserUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v0    # "changeAgent":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "changeAgent":Z
    goto :goto_1
.end method

.method public static loadHtmlIntoWebview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "webview"    # Landroid/webkit/WebView;
    .param p2, "htmlToLoad"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "http://this.means.load.html/"

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/eventgenie/android/ui/help/InfopageHelper;->loadHtmlIntoWebview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    return-void
.end method

.method public static loadHtmlIntoWebview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "webview"    # Landroid/webkit/WebView;
    .param p2, "htmlToLoad"    # Ljava/lang/String;
    .param p3, "historyUrl"    # Ljava/lang/String;
    .param p4, "addWrapper"    # Z

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ INFO: loadHtmlIntoWebview start - Adding wrapper? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 73
    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    if-eqz p2, :cond_0

    .line 75
    if-eqz p0, :cond_0

    .line 77
    new-instance v7, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;

    invoke-direct {v7, p0}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;-><init>(Landroid/content/Context;)V

    .line 79
    .local v7, "tokenReplacer":Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v6, "sb":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_2

    .line 82
    const-string v0, "<html><head>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v0, "<link rel=\"stylesheet\" type=\"text/css\" href=\"event.css\">"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v0, "</head><body class=\"htmlContainer\">"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v7, p2}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v0, "</body></html>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ INFO: loadHtmlIntoWebview do work: file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 92
    const/high16 v0, 0x2000000

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 93
    const-string v1, "file:///android_asset/"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v0, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v7, p2}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
