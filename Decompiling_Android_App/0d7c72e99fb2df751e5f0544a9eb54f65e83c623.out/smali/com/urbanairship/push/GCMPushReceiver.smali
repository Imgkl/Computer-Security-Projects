.class public Lcom/urbanairship/push/GCMPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GCMPushReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/GCMPushReceiver;Lcom/urbanairship/UAirship;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/GCMPushReceiver;
    .param p1, "x1"    # Lcom/urbanairship/UAirship;
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/urbanairship/push/GCMPushReceiver;->handleGCMReceived(Lcom/urbanairship/UAirship;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleGCMReceived(Lcom/urbanairship/UAirship;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "airship"    # Lcom/urbanairship/UAirship;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 89
    const-string v2, "GCMPushReceiver - Received intent from invalid transport acting as GCM."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getGcmId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    const-string v2, "GCMPushReceiver - Received intent from GCM without registering."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    const-string v2, "from"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "sender":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    iget-object v2, v2, Lcom/urbanairship/AirshipConfigOptions;->gcmSender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring GCM message from sender: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_2
    const-string v2, "deleted_messages"

    const-string v3, "message_type"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GCM deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "total_deleted"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pending messages."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GCMPushReceiver - Received push: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 110
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.urbanairship.push.ACTION_PUSH_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, "pushIntent":Landroid/content/Intent;
    invoke-static {p2, v0}, Lcom/urbanairship/push/PushService;->startServiceWithWakeLock(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 49
    invoke-static {p1}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/content/Context;)V

    .line 51
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GCMPushReceiver - Received intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 57
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    .line 59
    invoke-virtual {p0}, Lcom/urbanairship/push/GCMPushReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 60
    .local v0, "pendingResult":Landroid/content/BroadcastReceiver$PendingResult;
    invoke-virtual {p0}, Lcom/urbanairship/push/GCMPushReceiver;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {v0, v3}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V

    .line 64
    :cond_2
    new-instance v1, Lcom/urbanairship/push/GCMPushReceiver$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/urbanairship/push/GCMPushReceiver$1;-><init>(Lcom/urbanairship/push/GCMPushReceiver;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {v1}, Lcom/urbanairship/UAirship;->shared(Lcom/urbanairship/UAirship$OnReadyCallback;)Lcom/urbanairship/Cancelable;

    goto :goto_0

    .line 72
    .end local v0    # "pendingResult":Landroid/content/BroadcastReceiver$PendingResult;
    :cond_3
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/urbanairship/push/GCMPushReceiver;->handleGCMReceived(Lcom/urbanairship/UAirship;Landroid/content/Context;Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/urbanairship/push/GCMPushReceiver;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0, v3}, Lcom/urbanairship/push/GCMPushReceiver;->setResultCode(I)V

    goto :goto_0
.end method
