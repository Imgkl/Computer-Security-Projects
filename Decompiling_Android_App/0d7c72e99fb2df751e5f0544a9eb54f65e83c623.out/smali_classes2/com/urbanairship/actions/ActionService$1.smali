.class Lcom/urbanairship/actions/ActionService$1;
.super Ljava/lang/Object;
.source "ActionService.java"

# interfaces
.implements Lcom/urbanairship/actions/ActionCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/ActionService;->runActions(Ljava/lang/String;Lcom/urbanairship/actions/Situation;Lcom/urbanairship/push/PushMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/actions/ActionService;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/ActionService;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/urbanairship/actions/ActionService$1;->this$0:Lcom/urbanairship/actions/ActionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionResult;)V
    .locals 2
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;
    .param p2, "result"    # Lcom/urbanairship/actions/ActionResult;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/urbanairship/actions/ActionService$1;->this$0:Lcom/urbanairship/actions/ActionService;

    invoke-static {v0}, Lcom/urbanairship/actions/ActionService;->access$010(Lcom/urbanairship/actions/ActionService;)I

    .line 208
    iget-object v0, p0, Lcom/urbanairship/actions/ActionService$1;->this$0:Lcom/urbanairship/actions/ActionService;

    invoke-static {v0}, Lcom/urbanairship/actions/ActionService;->access$000(Lcom/urbanairship/actions/ActionService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/urbanairship/actions/ActionService$1;->this$0:Lcom/urbanairship/actions/ActionService;

    iget-object v1, p0, Lcom/urbanairship/actions/ActionService$1;->this$0:Lcom/urbanairship/actions/ActionService;

    invoke-static {v1}, Lcom/urbanairship/actions/ActionService;->access$100(Lcom/urbanairship/actions/ActionService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/actions/ActionService;->stopSelf(I)V

    .line 211
    :cond_0
    return-void
.end method
