.class Lcom/urbanairship/widget/UAWebViewClient$2;
.super Ljava/lang/Object;
.source "UAWebViewClient.java"

# interfaces
.implements Lcom/urbanairship/actions/ActionCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/widget/UAWebViewClient;->runAction(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/widget/UAWebViewClient;

.field final synthetic val$callbackKey:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/urbanairship/widget/UAWebViewClient;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->this$0:Lcom/urbanairship/widget/UAWebViewClient;

    iput-object p2, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->val$webView:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->val$callbackKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionResult;)V
    .locals 5
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;
    .param p2, "result"    # Lcom/urbanairship/actions/ActionResult;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "errorMessage":Ljava/lang/String;
    sget-object v1, Lcom/urbanairship/widget/UAWebViewClient$3;->$SwitchMap$com$urbanairship$actions$ActionResult$Status:[I

    invoke-virtual {p2}, Lcom/urbanairship/actions/ActionResult;->getStatus()Lcom/urbanairship/actions/ActionResult$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/actions/ActionResult$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 334
    :goto_0
    iget-object v1, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->this$0:Lcom/urbanairship/widget/UAWebViewClient;

    iget-object v2, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Lcom/urbanairship/actions/ActionResult;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v3

    iget-object v4, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->val$callbackKey:Ljava/lang/String;

    # invokes: Lcom/urbanairship/widget/UAWebViewClient;->triggerCallback(Landroid/webkit/WebView;Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;Ljava/lang/String;)V
    invoke-static {v1, v2, v0, v3, v4}, Lcom/urbanairship/widget/UAWebViewClient;->access$100(Lcom/urbanairship/widget/UAWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;Ljava/lang/String;)V

    .line 336
    monitor-enter p0

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->this$0:Lcom/urbanairship/widget/UAWebViewClient;

    # getter for: Lcom/urbanairship/widget/UAWebViewClient;->actionCompletionCallback:Lcom/urbanairship/actions/ActionCompletionCallback;
    invoke-static {v1}, Lcom/urbanairship/widget/UAWebViewClient;->access$000(Lcom/urbanairship/widget/UAWebViewClient;)Lcom/urbanairship/actions/ActionCompletionCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->this$0:Lcom/urbanairship/widget/UAWebViewClient;

    # getter for: Lcom/urbanairship/widget/UAWebViewClient;->actionCompletionCallback:Lcom/urbanairship/actions/ActionCompletionCallback;
    invoke-static {v1}, Lcom/urbanairship/widget/UAWebViewClient;->access$000(Lcom/urbanairship/widget/UAWebViewClient;)Lcom/urbanairship/actions/ActionCompletionCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/urbanairship/actions/ActionCompletionCallback;->onFinish(Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionResult;)V

    .line 340
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    return-void

    .line 321
    :pswitch_0
    const-string v1, "Action %s not found"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->val$name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 322
    goto :goto_0

    .line 324
    :pswitch_1
    const-string v1, "Action %s rejected its arguments"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->val$name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 325
    goto :goto_0

    .line 327
    :pswitch_2
    invoke-virtual {p2}, Lcom/urbanairship/actions/ActionResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {p2}, Lcom/urbanairship/actions/ActionResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 330
    :cond_1
    const-string v1, "Action %s failed with unspecified error"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->val$name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
