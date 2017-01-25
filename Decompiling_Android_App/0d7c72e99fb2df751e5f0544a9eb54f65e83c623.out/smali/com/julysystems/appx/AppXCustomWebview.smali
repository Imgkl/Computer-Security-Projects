.class final Lcom/julysystems/appx/AppXCustomWebview;
.super Landroid/webkit/WebView;
.source "AppXCustomWebview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;,
        Lcom/julysystems/appx/AppXCustomWebview$AppXWebChromeClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "APPX_CUSTOM_WEBVIEW"


# instance fields
.field context:Landroid/content/Context;

.field pd:Landroid/app/ProgressDialog;

.field progreesBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 45
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Lcom/julysystems/appx/AppXCustomWebview;->context:Landroid/content/Context;

    .line 47
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXCustomWebview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {p0, v6}, Lcom/julysystems/appx/AppXCustomWebview;->setBackgroundColor(I)V

    .line 50
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXCustomWebview;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 51
    .local v0, "settings":Landroid/webkit/WebSettings;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v1, "ua":Ljava/lang/StringBuilder;
    const-string v3, "Mozilla/5.0 (Linux; U; Android "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v3, "en-us; dream) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v7}, Lcom/julysystems/appx/AppXCustomWebview;->setVerticalScrollBarEnabled(Z)V

    .line 60
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 61
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 62
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 64
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 65
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 66
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 67
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 68
    new-instance v3, Lcom/julysystems/appx/AppXCustomWebview$1;

    invoke-direct {v3, p0}, Lcom/julysystems/appx/AppXCustomWebview$1;-><init>(Lcom/julysystems/appx/AppXCustomWebview;)V

    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXCustomWebview;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 90
    new-instance v2, Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;

    invoke-direct {v2, p0}, Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;-><init>(Lcom/julysystems/appx/AppXCustomWebview;)V

    .line 91
    .local v2, "webViewClient":Lcom/julysystems/appx/AppXCustomWebview$AppXCustomWebViewClient;
    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXCustomWebview;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 92
    const/16 v3, 0x82

    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXCustomWebview;->requestFocus(I)Z

    .line 93
    new-instance v3, Lcom/julysystems/appx/AppXCustomWebview$2;

    invoke-direct {v3, p0}, Lcom/julysystems/appx/AppXCustomWebview$2;-><init>(Lcom/julysystems/appx/AppXCustomWebview;)V

    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXCustomWebview;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    return-void
.end method
