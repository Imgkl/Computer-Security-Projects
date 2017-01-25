.class public Lcom/urbanairship/CoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CoreReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static clearInAppMessage(Ljava/lang/String;)V
    .locals 5
    .param p0, "messageId"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-static {p0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getInAppMessageManager()Lcom/urbanairship/push/iam/InAppMessageManager;

    move-result-object v1

    .line 284
    .local v1, "iamManager":Lcom/urbanairship/push/iam/InAppMessageManager;
    invoke-virtual {v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v2

    .line 285
    .local v2, "pendingMessage":Lcom/urbanairship/push/iam/InAppMessage;
    invoke-virtual {v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->getCurrentMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 288
    .local v0, "currentMessage":Lcom/urbanairship/push/iam/InAppMessage;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 289
    const-string v4, "Clearing pending in-app message due to directly interacting with the message\'s push notification."

    invoke-static {v4}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 290
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/urbanairship/push/iam/InAppMessageManager;->setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 293
    invoke-static {v2}, Lcom/urbanairship/push/iam/ResolutionEvent;->createDirectOpenResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v3

    .line 294
    .local v3, "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    goto :goto_0
.end method

.method static handleNotificationButtonOpenedProxy(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    const-string v8, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/urbanairship/push/PushMessage;

    .line 125
    .local v4, "message":Lcom/urbanairship/push/PushMessage;
    if-nez v4, :cond_0

    .line 126
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CoreReceiver - Intent is missing push message for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string v8, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "notificationActionId":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CoreReceiver - Intent is missing notification button ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_1
    const-string v8, "com.urbanairship.push.NOTIFICATION_ID"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 137
    .local v6, "notificationId":I
    const-string v8, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND"

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 138
    .local v3, "isForegroundAction":Z
    const-string v8, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "actionPayload":Ljava/lang/String;
    const-string v8, "com.urbanairship.push.EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "description":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notification opened ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " action button Id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 144
    if-eqz v3, :cond_2

    .line 145
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v8

    invoke-virtual {v8}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v8

    invoke-virtual {v4}, Lcom/urbanairship/push/PushMessage;->getSendId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/urbanairship/analytics/Analytics;->setConversionSendId(Ljava/lang/String;)V

    .line 149
    :cond_2
    invoke-virtual {v4}, Lcom/urbanairship/push/PushMessage;->getSendId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/urbanairship/CoreReceiver;->clearInAppMessage(Ljava/lang/String;)V

    .line 152
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 155
    new-instance v2, Lcom/urbanairship/analytics/InteractiveNotificationEvent;

    invoke-direct {v2, v4, v5, v1, v3}, Lcom/urbanairship/analytics/InteractiveNotificationEvent;-><init>(Lcom/urbanairship/push/PushMessage;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 156
    .local v2, "event":Lcom/urbanairship/analytics/InteractiveNotificationEvent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v8

    invoke-virtual {v8}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 158
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.urbanairship.push.OPENED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND"

    invoke-virtual {v8, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD"

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 167
    .local v7, "openIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/urbanairship/UAirship;->getUrbanAirshipPermission()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleNotificationDismissedProxy(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    const-string v5, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/urbanairship/push/PushMessage;

    .line 179
    .local v3, "message":Lcom/urbanairship/push/PushMessage;
    if-nez v3, :cond_0

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CoreReceiver - Intent is missing push message for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 205
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v5, "com.urbanairship.push.NOTIFICATION_ID"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 186
    .local v4, "notificationId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification dismissed ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.urbanairship.push.EXTRA_NOTIFICATION_DELETE_INTENT"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 190
    .local v0, "deleteIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_1

    .line 192
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_1
    :goto_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.urbanairship.push.DISMISSED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 204
    .local v1, "dismissIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/urbanairship/UAirship;->getUrbanAirshipPermission()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    .end local v1    # "dismissIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v5, "Failed to send notification\'s deleteIntent, already canceled."

    invoke-static {v5}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleNotificationOpened(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 214
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v3

    .line 216
    .local v3, "options":Lcom/urbanairship/AirshipConfigOptions;
    const-string v5, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/urbanairship/push/PushMessage;

    .line 217
    .local v2, "message":Lcom/urbanairship/push/PushMessage;
    if-nez v2, :cond_1

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CoreReceiver - Intent is missing push message for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string v5, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 223
    const-string v5, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 224
    .local v1, "isForeground":Z
    const-string v5, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "actionPayload":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/urbanairship/CoreReceiver;->getResultCode()I

    move-result v5

    sget v6, Lcom/urbanairship/push/BaseIntentReceiver;->RESULT_ACTIVITY_LAUNCHED:I

    if-eq v5, v6, :cond_2

    iget-boolean v5, v3, Lcom/urbanairship/AirshipConfigOptions;->autoLaunchApplication:Z

    if-eqz v5, :cond_2

    .line 228
    invoke-direct {p0, p1}, Lcom/urbanairship/CoreReceiver;->launchApplication(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/urbanairship/CoreReceiver;->isOrderedBroadcast()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 229
    sget v5, Lcom/urbanairship/push/BaseIntentReceiver;->RESULT_ACTIVITY_LAUNCHED:I

    invoke-virtual {p0, v5}, Lcom/urbanairship/CoreReceiver;->setResultCode(I)V

    .line 233
    :cond_2
    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Running actions for notification action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 237
    if-eqz v1, :cond_3

    sget-object v4, Lcom/urbanairship/actions/Situation;->FOREGROUND_NOTIFICATION_ACTION_BUTTON:Lcom/urbanairship/actions/Situation;

    .line 238
    .local v4, "situation":Lcom/urbanairship/actions/Situation;
    :goto_1
    invoke-static {p1, v0, v4, v2}, Lcom/urbanairship/actions/ActionService;->runActionsPayload(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/actions/Situation;Lcom/urbanairship/push/PushMessage;)V

    goto :goto_0

    .line 237
    .end local v4    # "situation":Lcom/urbanairship/actions/Situation;
    :cond_3
    sget-object v4, Lcom/urbanairship/actions/Situation;->BACKGROUND_NOTIFICATION_ACTION_BUTTON:Lcom/urbanairship/actions/Situation;

    goto :goto_1

    .line 243
    .end local v0    # "actionPayload":Ljava/lang/String;
    .end local v1    # "isForeground":Z
    :cond_4
    invoke-virtual {p0}, Lcom/urbanairship/CoreReceiver;->getResultCode()I

    move-result v5

    sget v6, Lcom/urbanairship/push/BaseIntentReceiver;->RESULT_ACTIVITY_LAUNCHED:I

    if-eq v5, v6, :cond_5

    iget-boolean v5, v3, Lcom/urbanairship/AirshipConfigOptions;->autoLaunchApplication:Z

    if-eqz v5, :cond_5

    .line 245
    invoke-direct {p0, p1}, Lcom/urbanairship/CoreReceiver;->launchApplication(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/urbanairship/CoreReceiver;->isOrderedBroadcast()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 246
    sget v5, Lcom/urbanairship/push/BaseIntentReceiver;->RESULT_ACTIVITY_LAUNCHED:I

    invoke-virtual {p0, v5}, Lcom/urbanairship/CoreReceiver;->setResultCode(I)V

    .line 250
    :cond_5
    invoke-virtual {v2}, Lcom/urbanairship/push/PushMessage;->getActionsPayload()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/urbanairship/actions/Situation;->PUSH_OPENED:Lcom/urbanairship/actions/Situation;

    invoke-static {p1, v5, v6, v2}, Lcom/urbanairship/actions/ActionService;->runActionsPayload(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/actions/Situation;Lcom/urbanairship/push/PushMessage;)V

    goto/16 :goto_0
.end method

.method static handleNotificationOpenedProxy(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    const-string v5, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/urbanairship/push/PushMessage;

    .line 84
    .local v2, "message":Lcom/urbanairship/push/PushMessage;
    if-nez v2, :cond_0

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CoreReceiver - Intent is missing push message for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v5, "com.urbanairship.push.NOTIFICATION_ID"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 91
    .local v3, "notificationId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification opened ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v5

    invoke-virtual {v2}, Lcom/urbanairship/push/PushMessage;->getSendId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/urbanairship/analytics/Analytics;->setConversionSendId(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2}, Lcom/urbanairship/push/PushMessage;->getSendId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/CoreReceiver;->clearInAppMessage(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.urbanairship.push.EXTRA_NOTIFICATION_CONTENT_INTENT"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 100
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_1

    .line 102
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_1
    :goto_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.urbanairship.push.OPENED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 114
    .local v4, "openIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/urbanairship/UAirship;->getUrbanAirshipPermission()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .end local v4    # "openIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v5, "Failed to send notification\'s contentIntent, already canceled."

    invoke-static {v5}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private launchApplication(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 261
    .local v0, "launchIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 262
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 263
    const-string v1, "Starting application\'s launch intent."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 265
    const/4 v1, 0x1

    .line 268
    :goto_0
    return v1

    .line 267
    :cond_0
    const-string v1, "Unable to launch application. Launch intent is unavailable."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 268
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-static {p1}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/content/Context;)V

    .line 54
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoreReceiver - Received intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 62
    :pswitch_0
    invoke-static {p1, p2}, Lcom/urbanairship/CoreReceiver;->handleNotificationOpenedProxy(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    :sswitch_0
    const-string v2, "com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "com.urbanairship.ACTION_NOTIFICATION_BUTTON_OPENED_PROXY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "com.urbanairship.ACTION_NOTIFICATION_DISMISSED_PROXY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "com.urbanairship.push.OPENED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    .line 65
    :pswitch_1
    invoke-static {p1, p2}, Lcom/urbanairship/CoreReceiver;->handleNotificationButtonOpenedProxy(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/CoreReceiver;->handleNotificationDismissedProxy(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/CoreReceiver;->handleNotificationOpened(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    :sswitch_data_0
    .sparse-switch
        -0x5f9cb900 -> :sswitch_2
        -0x24da6b70 -> :sswitch_3
        0xa108010 -> :sswitch_0
        0x6574a2cd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
