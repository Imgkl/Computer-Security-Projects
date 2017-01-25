.class Lcom/eventgenie/android/activities/others/WebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/WebViewActivity;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/WebViewActivity$1;->this$0:Lcom/eventgenie/android/activities/others/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/WebViewActivity$1;->this$0:Lcom/eventgenie/android/activities/others/WebViewActivity;

    # invokes: Lcom/eventgenie/android/activities/others/WebViewActivity;->closeBlockingView()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/WebViewActivity;->access$000(Lcom/eventgenie/android/activities/others/WebViewActivity;)V

    .line 40
    return-void
.end method
