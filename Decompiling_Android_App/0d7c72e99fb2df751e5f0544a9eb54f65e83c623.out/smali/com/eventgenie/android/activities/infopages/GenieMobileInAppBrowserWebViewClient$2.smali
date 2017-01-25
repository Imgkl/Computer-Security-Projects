.class Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient$2;
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

.field final synthetic val$dialogView:Landroid/view/View;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;Landroid/view/View;Landroid/webkit/HttpAuthHandler;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient$2;->this$0:Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient;

    iput-object p2, p0, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient$2;->val$dialogView:Landroid/view/View;

    iput-object p3, p0, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 77
    iget-object v2, p0, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient$2;->val$dialogView:Landroid/view/View;

    sget v3, Lcom/eventgenie/android/R$id;->username:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 79
    .local v1, "userNameView":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient$2;->val$dialogView:Landroid/view/View;

    sget v3, Lcom/eventgenie/android/R$id;->password:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 82
    .local v0, "passwordView":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/eventgenie/android/activities/infopages/GenieMobileInAppBrowserWebViewClient$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
