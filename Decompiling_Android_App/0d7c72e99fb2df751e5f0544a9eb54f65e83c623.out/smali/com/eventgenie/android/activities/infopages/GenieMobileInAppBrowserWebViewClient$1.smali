.class Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient$1;
.super Ljava/lang/Object;
.source "GenieMobileInAppBrowserWebViewClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient$1;->this$0:Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 95
    return-void
.end method
