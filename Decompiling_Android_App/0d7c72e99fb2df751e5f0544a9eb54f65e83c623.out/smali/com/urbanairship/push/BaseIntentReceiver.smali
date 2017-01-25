.class public abstract Lcom/urbanairship/push/BaseIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseIntentReceiver.java"


# static fields
.field public static RESULT_ACTIVITY_LAUNCHED:I

.field public static RESULT_ACTIVITY_NOT_LAUNCHED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    sput v0, Lcom/urbanairship/push/BaseIntentReceiver;->RESULT_ACTIVITY_LAUNCHED:I

    .line 73
    const/4 v0, -0x1

    sput v0, Lcom/urbanairship/push/BaseIntentReceiver;->RESULT_ACTIVITY_NOT_LAUNCHED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleDismissedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 179
    const-string v2, "com.urbanairship.push.NOTIFICATION_ID"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 181
    .local v0, "id":I
    const-string v2, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/push/PushMessage;

    .line 182
    .local v1, "message":Lcom/urbanairship/push/PushMessage;
    if-nez v1, :cond_0

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BaseIntentReceiver - Intent is missing push message for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/urbanairship/push/BaseIntentReceiver;->onNotificationDismissed(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;I)V

    goto :goto_0
.end method

.method private handlePushOpened(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 130
    const-string v0, "com.urbanairship.push.NOTIFICATION_ID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 132
    .local v3, "id":I
    const-string v0, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/urbanairship/push/PushMessage;

    .line 133
    .local v2, "message":Lcom/urbanairship/push/PushMessage;
    if-nez v2, :cond_1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseIntentReceiver - Intent is missing push message for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    const-string v0, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    const-string v0, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "buttonId":Ljava/lang/String;
    const-string v0, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .local v5, "isForeground":Z
    move-object v0, p0

    move-object v1, p1

    .line 142
    invoke-virtual/range {v0 .. v5}, Lcom/urbanairship/push/BaseIntentReceiver;->onNotificationActionOpened(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;ILjava/lang/String;Z)Z

    move-result v6

    .line 148
    .end local v4    # "buttonId":Ljava/lang/String;
    .end local v5    # "isForeground":Z
    .local v6, "launchedActivity":Z
    :goto_1
    invoke-virtual {p0}, Lcom/urbanairship/push/BaseIntentReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/BaseIntentReceiver;->getResultCode()I

    move-result v0

    sget v1, Lcom/urbanairship/push/BaseIntentReceiver;->RESULT_ACTIVITY_LAUNCHED:I

    if-eq v0, v1, :cond_0

    .line 149
    if-eqz v6, :cond_3

    sget v0, Lcom/urbanairship/push/BaseIntentReceiver;->RESULT_ACTIVITY_LAUNCHED:I

    :goto_2
    invoke-virtual {p0, v0}, Lcom/urbanairship/push/BaseIntentReceiver;->setResultCode(I)V

    goto :goto_0

    .line 144
    .end local v6    # "launchedActivity":Z
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Lcom/urbanairship/push/BaseIntentReceiver;->onNotificationOpened(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;I)Z

    move-result v6

    .restart local v6    # "launchedActivity":Z
    goto :goto_1

    .line 149
    :cond_3
    sget v0, Lcom/urbanairship/push/BaseIntentReceiver;->RESULT_ACTIVITY_NOT_LAUNCHED:I

    goto :goto_2
.end method

.method private handlePushReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    const-string v2, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/push/PushMessage;

    .line 110
    .local v1, "message":Lcom/urbanairship/push/PushMessage;
    if-nez v1, :cond_0

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BaseIntentReceiver - Intent is missing push message for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v2, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    const-string v2, "com.urbanairship.push.NOTIFICATION_ID"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, "id":I
    invoke-virtual {p0, p1, v1, v0}, Lcom/urbanairship/push/BaseIntentReceiver;->onPushReceived(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;I)V

    goto :goto_0

    .line 119
    .end local v0    # "id":I
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/urbanairship/push/BaseIntentReceiver;->onBackgroundPushReceived(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;)V

    goto :goto_0
.end method

.method private handleRegistrationIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    const-string v1, "com.urbanairship.push.EXTRA_ERROR"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/BaseIntentReceiver;->onChannelRegistrationFailed(Landroid/content/Context;)V

    .line 170
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string v1, "com.urbanairship.push.EXTRA_CHANNEL_ID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "channel":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseIntentReceiver - Intent is missing channel ID for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/push/BaseIntentReceiver;->onChannelRegistrationSucceeded(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract onBackgroundPushReceived(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;)V
.end method

.method protected abstract onChannelRegistrationFailed(Landroid/content/Context;)V
.end method

.method protected abstract onChannelRegistrationSucceeded(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected abstract onNotificationActionOpened(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;ILjava/lang/String;Z)Z
.end method

.method protected onNotificationDismissed(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/urbanairship/push/PushMessage;
    .param p3, "notificationId"    # I

    .prologue
    .line 258
    return-void
.end method

.method protected abstract onNotificationOpened(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;I)Z
.end method

.method protected abstract onPushReceived(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;I)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-static {p1}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/content/Context;)V

    .line 79
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Received intent with action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 86
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/push/BaseIntentReceiver;->handlePushReceived(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    :sswitch_0
    const-string v2, "com.urbanairship.push.RECEIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "com.urbanairship.push.OPENED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "com.urbanairship.push.CHANNEL_UPDATED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "com.urbanairship.push.DISMISSED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    .line 91
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/push/BaseIntentReceiver;->handlePushOpened(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/push/BaseIntentReceiver;->handleRegistrationIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/push/BaseIntentReceiver;->handleDismissedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        -0x6a14bbb8 -> :sswitch_0
        -0x640c1308 -> :sswitch_2
        -0x24da6b70 -> :sswitch_1
        0x74d3702 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
