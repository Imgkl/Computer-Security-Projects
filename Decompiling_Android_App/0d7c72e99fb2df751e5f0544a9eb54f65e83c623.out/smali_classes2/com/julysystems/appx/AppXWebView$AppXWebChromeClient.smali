.class Lcom/julysystems/appx/AppXWebView$AppXWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "AppXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/julysystems/appx/AppXWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppXWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/julysystems/appx/AppXWebView;


# direct methods
.method constructor <init>(Lcom/julysystems/appx/AppXWebView;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/julysystems/appx/AppXWebView$AppXWebChromeClient;->this$0:Lcom/julysystems/appx/AppXWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 352
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 353
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "cmsg"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 347
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 348
    return-void
.end method
