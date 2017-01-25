.class Lcom/urbanairship/actions/ActionRunRequest$1;
.super Ljava/lang/Object;
.source "ActionRunRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/ActionRunRequest;->run(Lcom/urbanairship/actions/ActionCompletionCallback;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/actions/ActionRunRequest;

.field final synthetic val$arguments:Lcom/urbanairship/actions/ActionArguments;

.field final synthetic val$callback:Lcom/urbanairship/actions/ActionCompletionCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/ActionRunRequest;Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionCompletionCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/urbanairship/actions/ActionRunRequest$1;->this$0:Lcom/urbanairship/actions/ActionRunRequest;

    iput-object p2, p0, Lcom/urbanairship/actions/ActionRunRequest$1;->val$arguments:Lcom/urbanairship/actions/ActionArguments;

    iput-object p3, p0, Lcom/urbanairship/actions/ActionRunRequest$1;->val$callback:Lcom/urbanairship/actions/ActionCompletionCallback;

    iput-object p4, p0, Lcom/urbanairship/actions/ActionRunRequest$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 242
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest$1;->this$0:Lcom/urbanairship/actions/ActionRunRequest;

    iget-object v2, p0, Lcom/urbanairship/actions/ActionRunRequest$1;->val$arguments:Lcom/urbanairship/actions/ActionArguments;

    # invokes: Lcom/urbanairship/actions/ActionRunRequest;->runSync(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
    invoke-static {v1, v2}, Lcom/urbanairship/actions/ActionRunRequest;->access$000(Lcom/urbanairship/actions/ActionRunRequest;Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    .line 244
    .local v0, "result":Lcom/urbanairship/actions/ActionResult;
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest$1;->val$callback:Lcom/urbanairship/actions/ActionCompletionCallback;

    if-nez v1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest$1;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/urbanairship/actions/ActionRunRequest$1$1;

    invoke-direct {v2, p0, v0}, Lcom/urbanairship/actions/ActionRunRequest$1$1;-><init>(Lcom/urbanairship/actions/ActionRunRequest$1;Lcom/urbanairship/actions/ActionResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
