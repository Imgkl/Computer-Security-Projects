.class Lcom/urbanairship/actions/ActionRunRequest$1$1;
.super Ljava/lang/Object;
.source "ActionRunRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/ActionRunRequest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/urbanairship/actions/ActionRunRequest$1;

.field final synthetic val$result:Lcom/urbanairship/actions/ActionResult;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/ActionRunRequest$1;Lcom/urbanairship/actions/ActionResult;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/urbanairship/actions/ActionRunRequest$1$1;->this$1:Lcom/urbanairship/actions/ActionRunRequest$1;

    iput-object p2, p0, Lcom/urbanairship/actions/ActionRunRequest$1$1;->val$result:Lcom/urbanairship/actions/ActionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRunRequest$1$1;->this$1:Lcom/urbanairship/actions/ActionRunRequest$1;

    iget-object v0, v0, Lcom/urbanairship/actions/ActionRunRequest$1;->val$callback:Lcom/urbanairship/actions/ActionCompletionCallback;

    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest$1$1;->this$1:Lcom/urbanairship/actions/ActionRunRequest$1;

    iget-object v1, v1, Lcom/urbanairship/actions/ActionRunRequest$1;->val$arguments:Lcom/urbanairship/actions/ActionArguments;

    iget-object v2, p0, Lcom/urbanairship/actions/ActionRunRequest$1$1;->val$result:Lcom/urbanairship/actions/ActionResult;

    invoke-interface {v0, v1, v2}, Lcom/urbanairship/actions/ActionCompletionCallback;->onFinish(Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionResult;)V

    .line 252
    return-void
.end method
