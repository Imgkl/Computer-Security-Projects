.class public Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;
.super Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;
.source "GenieMobileInAppBrowserWebViewClient.java"


# static fields
.field private static final promptForAuthHosts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "epicweb.epicor.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;->promptForAuthHosts:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;-><init>(Landroid/app/Activity;)V

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/WebView;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/WebView;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/WebView;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v2, 0x0

    .line 57
    .local v2, "handled":Z
    sget-object v0, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;->promptForAuthHosts:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 58
    .local v5, "manualAuthHost":Ljava/lang/String;
    invoke-virtual {p3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 61
    const/4 v2, 0x1

    .line 63
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$layout;->dialog_credentials_prompt:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "dialogView":Landroid/view/View;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/eventgenie/android/R$string;->dialog_title_authenticate:I

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$string;->dialog_body_authenticate:I

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "Ok"

    new-instance v8, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient$2;

    invoke-direct {v8, p0, v1, p2}, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient$2;-><init>(Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;Landroid/view/View;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "Cancel"

    new-instance v8, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient$1;

    invoke-direct {v8, p0}, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient$1;-><init>(Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 57
    .end local v1    # "dialogView":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v5    # "manualAuthHost":Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_2
    return-void
.end method

.method public bridge synthetic shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "x0"    # Landroid/webkit/WebView;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/activities/infopages/GenieConnectCommonWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
