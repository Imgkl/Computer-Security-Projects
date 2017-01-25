.class public Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;
.super Ljava/lang/Object;
.source "HotspotActionExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor$2;
    }
.end annotation


# static fields
.field private static final ACTION_REPEAT_ALWAYS:J = 0x0L

.field private static final SSID_HOTSPOT_IDENTIFIER_FORMAT:Ljava/lang/String; = "ssid:%s"

.field private static alertDialog:Landroid/app/AlertDialog;

.field private static showAlertDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->alertDialog:Landroid/app/AlertDialog;

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->showAlertDialog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 47
    sput-boolean p0, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->showAlertDialog:Z

    return p0
.end method

.method private static createHotspotIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "ssid:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static executeActions(Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 14
    .param p0, "actions"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const-wide/16 v12, 0x0

    .line 108
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ BLE actions number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 109
    :goto_0
    invoke-interface {p0}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_3

    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ BLE action number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0}, Luk/co/alt236/easycursor/EasyCursor;->getPosition()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 111
    const-string v8, "id"

    invoke-interface {p0, v8}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 112
    .local v2, "actionId":J
    const-string v8, "repeat"

    invoke-interface {p0, v8, v12, v13}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 114
    .local v6, "maxRepeatCount":J
    invoke-static {v2, v3}, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->getRepeatCount(J)J

    move-result-wide v4

    .line 116
    .local v4, "actionRepeatCount":J
    cmp-long v8, v6, v12

    if-eqz v8, :cond_0

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    .line 117
    :cond_0
    const-string v8, "action"

    invoke-interface {p0, v8}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "actionName":Ljava/lang/String;
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 120
    invoke-static {v1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->fromString(Ljava/lang/String;)Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    move-result-object v0

    .line 122
    .local v0, "action":Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    sget-object v8, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor$2;->$SwitchMap$com$eventgenie$android$utils$genieintent$GenieIntentAction:[I

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 138
    .end local v0    # "action":Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    :goto_1
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    invoke-static {v2, v3, v4, v5}, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->setRepeatCount(JJ)V

    .line 144
    .end local v1    # "actionName":Ljava/lang/String;
    :goto_2
    invoke-interface {p0}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_0

    .line 124
    .restart local v0    # "action":Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    .restart local v1    # "actionName":Ljava/lang/String;
    :pswitch_0
    long-to-int v8, v2

    invoke-static {p0, v8}, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->executeViewAction(Luk/co/alt236/easycursor/EasyCursor;I)V

    goto :goto_1

    .line 127
    :pswitch_1
    invoke-static {p0}, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->executeHttpAction(Luk/co/alt236/easycursor/EasyCursor;)V

    goto :goto_1

    .line 135
    .end local v0    # "action":Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    :cond_1
    const-string v8, "^ BLE no action"

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    .end local v1    # "actionName":Ljava/lang/String;
    :cond_2
    const-string v8, "^ BLE actionRepeatCount[%s] >  maxRepeatCount[%s]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_2

    .line 146
    .end local v2    # "actionId":J
    .end local v4    # "actionRepeatCount":J
    .end local v6    # "maxRepeatCount":J
    :cond_3
    return-void

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static executeHttpAction(Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 13
    .param p0, "action"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 272
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v0

    .line 273
    .local v0, "appContext":Landroid/content/Context;
    new-instance v5, Lcom/genie_connect/android/net/providers/NetworkSender;

    invoke-direct {v5, v0}, Lcom/genie_connect/android/net/providers/NetworkSender;-><init>(Landroid/content/Context;)V

    .line 275
    .local v5, "sender":Lcom/genie_connect/android/net/providers/NetworkSender;
    const-string v8, "httpRequestMethod"

    invoke-interface {p0, v8}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "httpMethod":Ljava/lang/String;
    const-string v8, "httpRequestUrl"

    invoke-interface {p0, v8}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 278
    .local v7, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 279
    const-string v8, "^ Hotspot Actions: HTTP action \'%s\' has no HTTP method"

    new-array v9, v10, [Ljava/lang/Object;

    const-string v10, "id"

    invoke-interface {p0, v10}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-static {v7}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 281
    const-string v8, "^ Hotspot Actions: HTTP action \'%s\' has no HTTP url"

    new-array v9, v10, [Ljava/lang/Object;

    const-string v10, "id"

    invoke-interface {p0, v10}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 283
    :cond_1
    new-instance v6, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacerUrlSafe;

    invoke-direct {v6, v0}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacerUrlSafe;-><init>(Landroid/content/Context;)V

    .line 284
    .local v6, "tokenReplacer":Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;
    const-string v8, "httpRequestBody"

    invoke-interface {p0, v8}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "requestBody":Ljava/lang/String;
    invoke-virtual {v6, v4}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "replacedTokensBody":Ljava/lang/String;
    invoke-virtual {v6, v7}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "replacedUrl":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 292
    const-string v2, ""

    .line 295
    :cond_2
    const-string v8, "^ HotspotActionExecutor: Executing hotspot http action %s (%s) with body (%s)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v12

    aput-object v1, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-virtual {v5, v1, v3, v2}, Lcom/genie_connect/android/net/providers/NetworkSender;->makeGenericRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static executeViewAction(Luk/co/alt236/easycursor/EasyCursor;I)V
    .locals 16
    .param p0, "action"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p1, "id"    # I

    .prologue
    .line 196
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v3

    .line 197
    .local v3, "appContext":Landroid/content/Context;
    const-string v12, "intentUri"

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "intentUri":Ljava/lang/String;
    const/4 v10, 0x0

    .line 199
    .local v10, "useInboxStyleNotification":Z
    const/4 v12, 0x1

    new-array v8, v12, [Ljava/lang/String;

    .line 201
    .local v8, "messages":[Ljava/lang/String;
    invoke-static {v6}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 205
    const-string v12, "^ HotspotActionExecutor: Executing hotspot view action %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-static {v12, v13}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    const-string v12, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "actionName":Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->getViewActionIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v11

    .line 209
    .local v11, "viewIntent":Landroid/content/Intent;
    if-nez v11, :cond_1

    .line 210
    const-string v12, "^ BLE View Intent null for id: %s!"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 264
    .end local v2    # "actionName":Ljava/lang/String;
    .end local v11    # "viewIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 211
    .restart local v2    # "actionName":Ljava/lang/String;
    .restart local v11    # "viewIntent":Landroid/content/Intent;
    :cond_1
    if-nez v3, :cond_2

    .line 212
    const-string v12, "^ BLE appContext null!!!"

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->isActivityVisible()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 215
    new-instance v1, Landroid/content/Intent;

    const-string v12, "com.eventgenie.android.BROADCAST_VIEW_ACTION"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "actionIntent":Landroid/content/Intent;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v4, "b":Landroid/os/Bundle;
    const-string v12, "actionname"

    invoke-virtual {v4, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v12, "intenturl"

    invoke-virtual {v4, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 220
    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 225
    .end local v1    # "actionIntent":Landroid/content/Intent;
    .end local v4    # "b":Landroid/os/Bundle;
    :cond_3
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v3, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 228
    .local v5, "intent":Landroid/app/PendingIntent;
    if-eqz v5, :cond_0

    .line 229
    const-string v12, "notification"

    invoke-virtual {v3, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 232
    .local v9, "notificationManager":Landroid/app/NotificationManager;
    move-object v7, v2

    .line 233
    .local v7, "message":Ljava/lang/String;
    const/4 v12, 0x0

    aput-object v2, v8, v12

    .line 234
    invoke-static {v3}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v12

    invoke-virtual {v12}, Lcom/genie_connect/android/db/datastore/Datastore;->getActiveDataInstance()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 236
    const/16 v12, 0x10

    invoke-static {v12}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isAtLeastApiLevel(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 237
    const/4 v12, 0x2

    new-array v8, v12, [Ljava/lang/String;

    .line 238
    const/4 v12, 0x0

    aput-object v2, v8, v12

    .line 239
    const/4 v12, 0x1

    invoke-static {v3}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/genie_connect/android/db/config/AppConfig;->getEventName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    .line 241
    const/4 v10, 0x1

    .line 245
    :cond_4
    if-eqz v10, :cond_5

    .line 246
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ BLE notify useInboxStyleNotification"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v5, v2, v12, v8}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createNotificationAlertInboxStyle(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v9, v0, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 253
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ BLE notify"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v5, v2, v12, v7}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createNotificationAlert(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v9, v0, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method public static executeViewActionForIntent(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 155
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "actionname"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "actionName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "intenturl"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->getViewActionIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 158
    .local v1, "viewIntent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ BLE view Intent null in executeViewActionForIntent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 161
    :cond_0
    if-eqz v1, :cond_2

    .line 162
    sget-boolean v2, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->showAlertDialog:Z

    if-eqz v2, :cond_1

    .line 163
    const-string v2, "^ BLE show dialog"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 164
    sget v2, Lcom/eventgenie/android/R$string;->notify_action_title:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->notify_action_body:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor$1;

    invoke-direct {v4, p1, v1}, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p1, v2, v3, v4}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueOk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->alertDialog:Landroid/app/AlertDialog;

    .line 175
    sget-object v2, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 176
    sput-boolean v5, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->showAlertDialog:Z

    .line 177
    sget-object v2, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 184
    :goto_0
    return-void

    .line 179
    :cond_1
    const-string v2, "^ BLE do NOT show dialog"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    const-string v2, "^ BLE do NOT show dialog, View Intent null"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getNamespace()J
    .locals 2

    .prologue
    .line 332
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getRepeatCount(J)J
    .locals 4
    .param p0, "actionId"    # J

    .prologue
    .line 345
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v0

    invoke-static {}, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->getNamespace()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/genie_connect/android/prefs/PreferencesManager;->getNamespacedPreferences(Landroid/content/Context;J)Lcom/genie_connect/android/prefs/NamespacedPreferences;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->getActionRepeatCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getViewActionIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 8
    .param p0, "intentUri"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    :try_start_0
    new-instance v2, Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->LINK:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    invoke-direct {v2, v5, v6}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;-><init>(Ljava/net/URL;Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;)V

    .line 312
    .local v2, "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v5

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntityId()J

    move-result-wide v6

    invoke-static {p1, v5, v6, v7, v0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v4

    .line 317
    .local v4, "navIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual {v4}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 323
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .end local v4    # "navIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_0
    return-object v5

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/net/MalformedURLException;
    const-string v5, "Malformed IntentUri in getViewActionIntent: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "msg":Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 323
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static performActionsOnBeaconFound(Ljava/lang/String;)V
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getInAppActions()Lcom/genie_connect/android/db/access/DbInAppActions;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/genie_connect/android/db/access/DbInAppActions;->getApplicableActionsForHotspot(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 65
    .local v0, "actionsCursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 68
    invoke-static {v0}, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->executeActions(Luk/co/alt236/easycursor/EasyCursor;)V

    .line 71
    :cond_0
    return-void
.end method

.method public static performActionsOnNetworkConnect(Ljava/lang/String;)V
    .locals 3
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->createHotspotIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "identifier":Ljava/lang/String;
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getInAppActions()Lcom/genie_connect/android/db/access/DbInAppActions;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/genie_connect/android/db/access/DbInAppActions;->getApplicableActionsForHotspot(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 85
    .local v0, "actionsCursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 88
    invoke-static {v0}, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->executeActions(Luk/co/alt236/easycursor/EasyCursor;)V

    .line 91
    :cond_0
    return-void
.end method

.method private static setRepeatCount(JJ)V
    .locals 4
    .param p0, "actionId"    # J
    .param p2, "repeatCount"    # J

    .prologue
    .line 353
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v1

    invoke-static {}, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->getNamespace()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/genie_connect/android/prefs/PreferencesManager;->getNamespacedPreferences(Landroid/content/Context;J)Lcom/genie_connect/android/prefs/NamespacedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->edit()Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    .line 357
    .local v0, "editor":Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->setActionRepeatCount(JJ)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    .line 358
    invoke-virtual {v0}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->commit()Z

    .line 359
    return-void
.end method
