.class public Lcom/urbanairship/push/ADMPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ADMPushReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/ADMPushReceiver;Lcom/urbanairship/UAirship;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/ADMPushReceiver;
    .param p1, "x1"    # Lcom/urbanairship/UAirship;
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/urbanairship/push/ADMPushReceiver;->handleADMReceivedIntent(Lcom/urbanairship/UAirship;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/push/ADMPushReceiver;Lcom/urbanairship/UAirship;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/ADMPushReceiver;
    .param p1, "x1"    # Lcom/urbanairship/UAirship;
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/urbanairship/push/ADMPushReceiver;->handleRegistrationIntent(Lcom/urbanairship/UAirship;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleADMReceivedIntent(Lcom/urbanairship/UAirship;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "airship"    # Lcom/urbanairship/UAirship;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADMPushReceiver - Received push: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->getAdmId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "ADMPushReceiver - Received intent from ADM without registering."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.push.ACTION_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 121
    .local v0, "pushIntent":Landroid/content/Intent;
    invoke-static {p2, v0}, Lcom/urbanairship/push/PushService;->startServiceWithWakeLock(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleRegistrationIntent(Lcom/urbanairship/UAirship;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "airship"    # Lcom/urbanairship/UAirship;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADM error occurred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.urbanairship.push.ACTION_PUSH_REGISTRATION_FINISHED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "finishIntent":Landroid/content/Intent;
    invoke-static {p2, v0}, Lcom/urbanairship/push/PushService;->startServiceWithWakeLock(Landroid/content/Context;Landroid/content/Intent;)V

    .line 103
    return-void

    .line 94
    .end local v0    # "finishIntent":Landroid/content/Intent;
    :cond_1
    const-string v2, "registration_id"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "registrationID":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADM registration successful. Registration ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/urbanairship/push/PushManager;->setAdmId(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p1}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/content/Context;)V

    .line 50
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADMPushReceiver - Received intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-ge v1, v2, :cond_2

    .line 57
    const-string v1, "ADMPushReceiver - Received intent from ADM transport on an unsupported API version."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/urbanairship/push/ADMPushReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 63
    .local v0, "pendingResult":Landroid/content/BroadcastReceiver$PendingResult;
    new-instance v1, Lcom/urbanairship/push/ADMPushReceiver$1;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/urbanairship/push/ADMPushReceiver$1;-><init>(Lcom/urbanairship/push/ADMPushReceiver;Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {v1}, Lcom/urbanairship/UAirship;->shared(Lcom/urbanairship/UAirship$OnReadyCallback;)Lcom/urbanairship/Cancelable;

    goto :goto_0
.end method
