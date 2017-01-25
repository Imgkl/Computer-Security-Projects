.class public Lcom/urbanairship/actions/OpenRichPushInboxAction;
.super Lcom/urbanairship/actions/Action;
.source "OpenRichPushInboxAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/actions/OpenRichPushInboxAction$2;
    }
.end annotation


# static fields
.field public static final DEFAULT_REGISTRY_NAME:Ljava/lang/String; = "open_mc_action"

.field public static final DEFAULT_REGISTRY_SHORT_NAME:Ljava/lang/String; = "^mc"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/urbanairship/actions/Action;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public acceptsArguments(Lcom/urbanairship/actions/ActionArguments;)Z
    .locals 2
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;

    .prologue
    .line 74
    sget-object v0, Lcom/urbanairship/actions/OpenRichPushInboxAction$2;->$SwitchMap$com$urbanairship$actions$Situation:[I

    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getSituation()Lcom/urbanairship/actions/Situation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/Situation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 79
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public perform(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
    .locals 6
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/actions/ActionValue;->getString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "messageId":Ljava/lang/String;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/urbanairship/richpush/RichPushInbox;->getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v1

    .line 93
    .local v1, "message":Lcom/urbanairship/richpush/RichPushMessage;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x30000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 98
    const-string v3, "com.urbanairship.VIEW_RICH_PUSH_MESSAGE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "message"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 104
    :goto_0
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/urbanairship/actions/OpenRichPushInboxAction$1;

    invoke-direct {v4, p0, v0}, Lcom/urbanairship/actions/OpenRichPushInboxAction$1;-><init>(Lcom/urbanairship/actions/OpenRichPushInboxAction;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    invoke-static {}, Lcom/urbanairship/actions/ActionResult;->newEmptyResult()Lcom/urbanairship/actions/ActionResult;

    move-result-object v3

    return-object v3

    .line 101
    :cond_0
    const-string v3, "com.urbanairship.VIEW_RICH_PUSH_INBOX"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
