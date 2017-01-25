.class public Lcom/eventgenie/android/activities/multievent/HolderPageActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "HolderPageActivity.java"


# static fields
.field public static final EXTRA_HTML_TO_DISPLAY:Ljava/lang/String; = "extra_html"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v4, Lcom/eventgenie/android/R$layout;->activity_infopage:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/multievent/HolderPageActivity;->setContentView(I)V

    .line 50
    sget v4, Lcom/eventgenie/android/R$id;->web_content:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/multievent/HolderPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 51
    .local v3, "wv":Landroid/webkit/WebView;
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/multievent/HolderPageActivity;->setupWebView(Landroid/webkit/WebView;)V

    .line 52
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/HolderPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 53
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, ""

    .line 56
    .local v1, "htmlToDisplay":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 57
    const-string v4, "hide_advert"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/HolderPageActivity;->showAdvert()V

    .line 61
    :cond_0
    const-string v4, "extra_html"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 63
    const-string v1, ""

    .line 67
    :cond_1
    invoke-static {p0, v3, v1}, Lcom/eventgenie/android/ui/help/InfopageHelper;->loadHtmlIntoWebview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 68
    return-void
.end method
