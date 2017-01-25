.class Lcom/urbanairship/push/ADMPushReceiver$1;
.super Ljava/lang/Object;
.source "ADMPushReceiver.java"

# interfaces
.implements Lcom/urbanairship/UAirship$OnReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/ADMPushReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/ADMPushReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/ADMPushReceiver;Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/urbanairship/push/ADMPushReceiver$1;->this$0:Lcom/urbanairship/push/ADMPushReceiver;

    iput-object p2, p0, Lcom/urbanairship/push/ADMPushReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/urbanairship/push/ADMPushReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/urbanairship/push/ADMPushReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirshipReady(Lcom/urbanairship/UAirship;)V
    .locals 4
    .param p1, "airship"    # Lcom/urbanairship/UAirship;

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-virtual {p1}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/urbanairship/push/ADMPushReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_1
    iget-object v0, p0, Lcom/urbanairship/push/ADMPushReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 80
    return-void

    .line 67
    :sswitch_0
    const-string v1, "com.amazon.device.messaging.intent.RECEIVE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "com.amazon.device.messaging.intent.REGISTRATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/urbanairship/push/ADMPushReceiver$1;->this$0:Lcom/urbanairship/push/ADMPushReceiver;

    iget-object v1, p0, Lcom/urbanairship/push/ADMPushReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/urbanairship/push/ADMPushReceiver$1;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/urbanairship/push/ADMPushReceiver;->handleADMReceivedIntent(Lcom/urbanairship/UAirship;Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, v1, v2}, Lcom/urbanairship/push/ADMPushReceiver;->access$000(Lcom/urbanairship/push/ADMPushReceiver;Lcom/urbanairship/UAirship;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/urbanairship/push/ADMPushReceiver$1;->this$0:Lcom/urbanairship/push/ADMPushReceiver;

    iget-object v1, p0, Lcom/urbanairship/push/ADMPushReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/urbanairship/push/ADMPushReceiver$1;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/urbanairship/push/ADMPushReceiver;->handleRegistrationIntent(Lcom/urbanairship/UAirship;Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, v1, v2}, Lcom/urbanairship/push/ADMPushReceiver;->access$100(Lcom/urbanairship/push/ADMPushReceiver;Lcom/urbanairship/UAirship;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 76
    :cond_1
    const-string v0, "ADMPushReceiver - Received intent from invalid transport acting as ADM."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :sswitch_data_0
    .sparse-switch
        -0x2c4aaffa -> :sswitch_1
        0x3f326356 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
