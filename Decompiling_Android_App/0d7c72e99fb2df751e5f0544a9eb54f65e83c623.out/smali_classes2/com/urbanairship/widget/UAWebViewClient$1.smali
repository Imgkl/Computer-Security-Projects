.class Lcom/urbanairship/widget/UAWebViewClient$1;
.super Ljava/lang/Object;
.source "UAWebViewClient.java"

# interfaces
.implements Lcom/urbanairship/actions/ActionCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/widget/UAWebViewClient;->runActions(Landroid/webkit/WebView;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/widget/UAWebViewClient;


# direct methods
.method constructor <init>(Lcom/urbanairship/widget/UAWebViewClient;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/urbanairship/widget/UAWebViewClient$1;->this$0:Lcom/urbanairship/widget/UAWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionResult;)V
    .locals 1
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;
    .param p2, "result"    # Lcom/urbanairship/actions/ActionResult;

    .prologue
    .line 272
    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebViewClient$1;->this$0:Lcom/urbanairship/widget/UAWebViewClient;

    # getter for: Lcom/urbanairship/widget/UAWebViewClient;->actionCompletionCallback:Lcom/urbanairship/actions/ActionCompletionCallback;
    invoke-static {v0}, Lcom/urbanairship/widget/UAWebViewClient;->access$000(Lcom/urbanairship/widget/UAWebViewClient;)Lcom/urbanairship/actions/ActionCompletionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebViewClient$1;->this$0:Lcom/urbanairship/widget/UAWebViewClient;

    # getter for: Lcom/urbanairship/widget/UAWebViewClient;->actionCompletionCallback:Lcom/urbanairship/actions/ActionCompletionCallback;
    invoke-static {v0}, Lcom/urbanairship/widget/UAWebViewClient;->access$000(Lcom/urbanairship/widget/UAWebViewClient;)Lcom/urbanairship/actions/ActionCompletionCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/urbanairship/actions/ActionCompletionCallback;->onFinish(Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionResult;)V

    .line 276
    :cond_0
    monitor-exit p0

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
