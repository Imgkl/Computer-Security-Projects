.class Lcom/urbanairship/actions/OpenRichPushInboxAction$1;
.super Ljava/lang/Object;
.source "OpenRichPushInboxAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/OpenRichPushInboxAction;->perform(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/actions/OpenRichPushInboxAction;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/OpenRichPushInboxAction;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/urbanairship/actions/OpenRichPushInboxAction$1;->this$0:Lcom/urbanairship/actions/OpenRichPushInboxAction;

    iput-object p2, p0, Lcom/urbanairship/actions/OpenRichPushInboxAction$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/actions/OpenRichPushInboxAction$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/urbanairship/actions/OpenRichPushInboxAction$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.urbanairship.VIEW_RICH_PUSH_MESSAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "Unable to view an inbox message. Add the intent filter to an activity that can handle viewing an inbox message: <intent-filter><action android:name=\"com.urbanairship.VIEW_RICH_PUSH_MESSAGE\" /><data android:scheme=\"message\"/><category android:name=\"android.intent.category.DEFAULT\" /></intent-filter>"

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    const-string v1, "Unable to view the inbox. Add the intent filter to an activity that can handle viewing the inbox: <intent-filter><action android:name=\"com.urbanairship.VIEW_RICH_PUSH_INBOX\" /><category android:name=\"android.intent.category.DEFAULT\" /></intent-filter>"

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
