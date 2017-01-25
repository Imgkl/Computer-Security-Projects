.class public Lcom/julysystems/appx/AppXGCMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppXGCMBroadcastReceiver.java"


# static fields
.field private static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_BACKOFF_MS:I

.field private static final NOTIFICATION_ID:I = 0x3f2

.field private static final TAG:Ljava/lang/String; = "C2DMBroadcastReceiver"

.field private static final TOKEN:Ljava/lang/String;

.field private static final sRandom:Ljava/util/Random;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private notStartWithT:Z

.field private pushMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    const-class v0, Lcom/julysystems/appx/AppXBaseActivity;

    sput-object v0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->LOCK:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->sRandom:Ljava/util/Random;

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xe10

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->MAX_BACKOFF_MS:I

    .line 65
    sget-object v0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->TOKEN:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 408
    .local v1, "applicationName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    if-ne v1, v4, :cond_1

    .line 409
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 412
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 416
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "applicationName":Ljava/lang/String;
    :goto_1
    check-cast v1, Ljava/lang/String;

    .line 418
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "applicationName":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 413
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 414
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 416
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v1, "(unknown)"

    goto :goto_1
.end method

.method private getMessageParams(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .param p1, "pushmessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 257
    iget-boolean v6, p0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->notStartWithT:Z

    if-eqz v6, :cond_0

    .line 258
    iput-boolean v5, p0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->notStartWithT:Z

    .line 262
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 264
    .local v4, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v6, "message="

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 265
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "params":[Ljava/lang/String;
    array-length v6, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-lt v5, v6, :cond_1

    .line 273
    .end local v3    # "params":[Ljava/lang/String;
    :goto_2
    return-object v4

    .line 260
    .end local v4    # "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "message="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 266
    .restart local v3    # "params":[Ljava/lang/String;
    .restart local v4    # "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    aget-object v2, v3, v5

    .line 267
    .local v2, "param":Ljava/lang/String;
    const-string v7, "="

    const/4 v8, 0x2

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "nameValue":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v1, v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 270
    .end local v1    # "nameValue":[Ljava/lang/String;
    .end local v2    # "param":Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private getNotificationWithAlertMessage(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;Ljava/util/HashMap;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customActivity"    # Landroid/app/Activity;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p4, "messageTypeValueMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 279
    const-class v12, Lcom/julysystems/appx/AppXPageActivity;

    sput-object v12, Lcom/julysystems/appx/AppXConstants;->customActivity:Ljava/lang/Class;

    .line 280
    :cond_0
    const-string v12, "m"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 281
    .local v11, "valueMessage":Ljava/lang/String;
    if-eqz v11, :cond_1

    const-string v12, ""

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 282
    const-string v12, "null"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 283
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->pushMessage:Ljava/lang/String;

    .line 285
    :cond_2
    const-string v12, "u"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 286
    .local v10, "urlValue":Ljava/lang/String;
    const-string v12, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 288
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    const-string v12, "ic_launcher"

    invoke-static {v12}, Lcom/julysystems/appx/AppXRenderRenderUtil;->getImageId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-nez v12, :cond_5

    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 290
    .local v8, "packageId":Ljava/lang/String;
    invoke-static {v8}, Lcom/julysystems/appx/AppXRenderRenderUtil;->loadImageResources(Ljava/lang/String;)V

    .line 291
    new-instance v5, Landroid/app/Notification;

    const-string v12, "ic_launcher"

    invoke-static {v12}, Lcom/julysystems/appx/AppXRenderRenderUtil;->getImageId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v5, v12, v11, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 295
    .end local v8    # "packageId":Ljava/lang/String;
    .local v5, "notification":Landroid/app/Notification;
    :goto_0
    iget v12, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v5, Landroid/app/Notification;->flags:I

    iput v12, v5, Landroid/app/Notification;->defaults:I

    .line 296
    sget-object v2, Lcom/julysystems/appx/AppXConstants;->pushActivityClass:Ljava/lang/String;

    .line 297
    .local v2, "classNameStr":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 298
    invoke-static/range {p1 .. p1}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getPushClass(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 299
    :cond_3
    const/4 v4, 0x0

    .line 301
    .local v4, "intentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 306
    :goto_1
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v6, "notificationIntent":Landroid/content/Intent;
    if-eqz v10, :cond_4

    const-string v12, ""

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "null"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 308
    const-string v12, "APPX_PUSH_DATA"

    invoke-virtual {v6, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    :cond_4
    const/high16 v12, 0x10000000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 311
    const/high16 v12, 0x8000000

    const/high16 v13, 0x8000000

    move-object/from16 v0, p1

    invoke-static {v0, v12, v6, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 312
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static/range {p1 .. p1}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v12, v11, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 313
    const/16 v12, 0x3f2

    invoke-virtual {v7, v12, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 314
    return-void

    .line 293
    .end local v2    # "classNameStr":Ljava/lang/String;
    .end local v4    # "intentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "notification":Landroid/app/Notification;
    .end local v6    # "notificationIntent":Landroid/content/Intent;
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_5
    new-instance v5, Landroid/app/Notification;

    const-string v12, "ic_launcher"

    invoke-static {v12}, Lcom/julysystems/appx/AppXRenderRenderUtil;->getImageId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v5, v12, v11, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v5    # "notification":Landroid/app/Notification;
    goto :goto_0

    .line 302
    .restart local v2    # "classNameStr":Ljava/lang/String;
    .restart local v4    # "intentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 303
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    const-string v12, "registration_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "registrationId":Ljava/lang/String;
    const-string v12, "error"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "error":Ljava/lang/String;
    const-string v12, "unregistered"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 143
    .local v11, "unregistered":Ljava/lang/String;
    const-string v12, "C2DMBroadcastReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "handleRegistration: registrationId = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", error = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", unregistered = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/julysystems/appx/AppXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-eqz p1, :cond_0

    .line 146
    invoke-static/range {p1 .. p1}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->setPushClass(Landroid/content/Context;)V

    .line 149
    :cond_0
    if-eqz v7, :cond_1

    .line 150
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->registerForNotifications(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    :cond_1
    if-eqz v11, :cond_6

    .line 155
    invoke-static/range {p1 .. p1}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->resetBackoff(Landroid/content/Context;)V

    .line 156
    invoke-static/range {p1 .. p1}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->isRegisteredOnServer(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 157
    invoke-static/range {p1 .. p1}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getURL_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    const-string v12, ""

    invoke-static/range {p1 .. p1}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getURL_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 158
    :cond_2
    const-string v2, "&uidType=deviceHash&appXVersion=1.2.5"

    .line 159
    .local v2, "URL_SUFFIX":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->storeURL_PREFIX(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    .end local v2    # "URL_SUFFIX":Ljava/lang/String;
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    .line 162
    invoke-static {}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->sendAppXRegIDToServer()V

    .line 163
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->setRegisteredOnServer(Landroid/content/Context;Z)V

    .line 192
    :cond_4
    :goto_0
    return-void

    .line 167
    :cond_5
    const-string v12, "C2DMBroadcastReceiver"

    const-string v13, "Ignoring unregister callback"

    invoke-static {v12, v13}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_6
    const-string v12, "C2DMBroadcastReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Registration error: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/julysystems/appx/AppXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v12, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 174
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 175
    .local v8, "retry":Z
    if-eqz v8, :cond_7

    .line 176
    invoke-static/range {p1 .. p1}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getBackoff(Landroid/content/Context;)I

    move-result v4

    .line 177
    .local v4, "backoffTimeMs":I
    div-int/lit8 v12, v4, 0x2

    sget-object v13, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->sRandom:Ljava/util/Random;

    invoke-virtual {v13, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int v6, v12, v13

    .line 178
    .local v6, "nextAttempt":I
    const-string v12, "C2DMBroadcastReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Scheduling registration retry, backoff = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/julysystems/appx/AppXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.google.android.gcm.intent.RETRY"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v9, "retryIntent":Landroid/content/Intent;
    const-string v12, "token"

    sget-object v13, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->TOKEN:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 182
    .local v10, "retryPendingIntent":Landroid/app/PendingIntent;
    const-string v12, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 183
    .local v3, "am":Landroid/app/AlarmManager;
    const/4 v12, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    int-to-long v0, v6

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    invoke-virtual {v3, v12, v14, v15, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 185
    sget v12, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->MAX_BACKOFF_MS:I

    if-ge v4, v12, :cond_4

    .line 186
    mul-int/lit8 v12, v4, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->setBackoff(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 189
    .end local v3    # "am":Landroid/app/AlarmManager;
    .end local v4    # "backoffTimeMs":I
    .end local v6    # "nextAttempt":I
    .end local v9    # "retryIntent":Landroid/content/Intent;
    .end local v10    # "retryPendingIntent":Landroid/app/PendingIntent;
    :cond_7
    const-string v12, "C2DMBroadcastReceiver"

    const-string v13, "Not retrying failed operation"

    invoke-static {v12, v13}, Lcom/julysystems/appx/AppXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private final onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    const-string v6, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    :goto_0
    sget-object v7, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 128
    :try_start_1
    sget-object v6, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v6, :cond_8

    .line 129
    const-string v6, "C2DMBroadcastReceiver"

    const-string v8, "Releasing wakelock"

    invoke-static {v6, v8}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v6, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 126
    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 137
    :goto_2
    return-void

    .line 84
    :cond_1
    :try_start_2
    const-string v6, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 86
    const-string v6, "message_type"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "messageType":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 88
    const-string v6, "deleted_messages"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 89
    const-string v6, "total_deleted"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 90
    .local v3, "sTotal":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 92
    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 93
    .local v5, "total":I
    const-string v6, "C2DMBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Received deleted messages notification: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p1, v5}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->onDeletedMessages(Landroid/content/Context;I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 95
    .end local v5    # "total":I
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v6, "C2DMBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GCM returned invalid number of deleted messages: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 119
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "messageType":Ljava/lang/String;
    .end local v3    # "sTotal":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 126
    sget-object v7, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 128
    :try_start_5
    sget-object v8, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v8, :cond_7

    .line 129
    const-string v8, "C2DMBroadcastReceiver"

    const-string v9, "Releasing wakelock"

    invoke-static {v8, v9}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v8, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 126
    :goto_3
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 136
    throw v6

    .line 101
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "messageType":Ljava/lang/String;
    :cond_2
    :try_start_6
    const-string v6, "C2DMBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Received unknown special message: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :cond_3
    sget-object v6, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1, v6, p2}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->onReceiveMessage(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 106
    .end local v2    # "messageType":Ljava/lang/String;
    :cond_4
    const-string v6, "com.google.android.gcm.intent.RETRY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    const-string v6, "token"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "token":Ljava/lang/String;
    sget-object v6, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->TOKEN:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 111
    const-string v6, "C2DMBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Received invalid token: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 126
    sget-object v7, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 128
    :try_start_7
    sget-object v6, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v6, :cond_5

    .line 129
    const-string v6, "C2DMBroadcastReceiver"

    const-string v8, "Releasing wakelock"

    invoke-static {v6, v8}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v6, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 126
    :goto_4
    monitor-exit v7

    goto/16 :goto_2

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v6

    .line 133
    :cond_5
    :try_start_8
    const-string v6, "C2DMBroadcastReceiver"

    const-string v8, "Wakelock reference is null"

    invoke-static {v6, v8}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 115
    :cond_6
    :try_start_9
    invoke-static {p1}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->isRegistered(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 116
    invoke-static {p1}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->internalUnregister(Landroid/content/Context;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 133
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    :cond_7
    :try_start_a
    const-string v8, "C2DMBroadcastReceiver"

    const-string v9, "Wakelock reference is null"

    invoke-static {v8, v9}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 126
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v6

    .line 133
    .restart local v0    # "action":Ljava/lang/String;
    :cond_8
    :try_start_b
    const-string v6, "C2DMBroadcastReceiver"

    const-string v8, "Wakelock reference is null"

    invoke-static {v6, v8}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 126
    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v6
.end method

.method private processPushMessage(Landroid/content/Context;Landroid/app/Activity;Ljava/util/HashMap;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customActivity"    # Landroid/app/Activity;
    .param p4, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 320
    .local p3, "messageTypeValueMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, "t"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 322
    .local v18, "valueStr":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 323
    .local v17, "value":I
    packed-switch v17, :pswitch_data_0

    .line 404
    .end local v17    # "value":I
    :cond_0
    :goto_0
    return-void

    .line 325
    .restart local v17    # "value":I
    :pswitch_0
    const-string v19, "m"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 326
    .local v9, "messageValue":Ljava/lang/String;
    const-string v19, "u"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 327
    .local v16, "urlValue":Ljava/lang/String;
    const-string v19, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 328
    .local v12, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v9, :cond_0

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 330
    const-string v19, "ic_launcher"

    invoke-static/range {v19 .. v19}, Lcom/julysystems/appx/AppXRenderRenderUtil;->getImageId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    if-nez v19, :cond_3

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 332
    .local v13, "packageId":Ljava/lang/String;
    invoke-static {v13}, Lcom/julysystems/appx/AppXRenderRenderUtil;->loadImageResources(Ljava/lang/String;)V

    .line 333
    new-instance v10, Landroid/app/Notification;

    const-string v19, "ic_launcher"

    invoke-static/range {v19 .. v19}, Lcom/julysystems/appx/AppXRenderRenderUtil;->getImageId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-direct {v10, v0, v9, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 337
    .end local v13    # "packageId":Ljava/lang/String;
    .local v10, "notification":Landroid/app/Notification;
    :goto_1
    iget v0, v10, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    iput v0, v10, Landroid/app/Notification;->flags:I

    move/from16 v0, v19

    iput v0, v10, Landroid/app/Notification;->defaults:I

    .line 338
    sget-object v5, Lcom/julysystems/appx/AppXConstants;->pushActivityClass:Ljava/lang/String;

    .line 339
    .local v5, "classNameStr":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 340
    invoke-static/range {p1 .. p1}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getPushClass(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 342
    :cond_1
    const/4 v8, 0x0

    .line 344
    .local v8, "intentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 348
    :goto_2
    const/4 v11, 0x0

    .line 349
    .local v11, "notificationIntent":Landroid/content/Intent;
    if-eqz v8, :cond_4

    .line 350
    :try_start_2
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "notificationIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-direct {v11, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    .restart local v11    # "notificationIntent":Landroid/content/Intent;
    :goto_3
    if-eqz v16, :cond_2

    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2

    const-string v19, "null"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 358
    const-string v19, "APPX_PUSH_DATA"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "pageUrl://"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    :cond_2
    const/high16 v19, 0x10000000

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 361
    const/high16 v19, 0x8000000

    const/high16 v20, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 362
    .local v14, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static/range {p1 .. p1}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1, v9, v14}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 363
    const/16 v19, 0x3f2

    move/from16 v0, v19

    invoke-virtual {v12, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 401
    .end local v5    # "classNameStr":Ljava/lang/String;
    .end local v8    # "intentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "messageValue":Ljava/lang/String;
    .end local v10    # "notification":Landroid/app/Notification;
    .end local v11    # "notificationIntent":Landroid/content/Intent;
    .end local v12    # "notificationManager":Landroid/app/NotificationManager;
    .end local v14    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v16    # "urlValue":Ljava/lang/String;
    .end local v17    # "value":I
    :catch_0
    move-exception v7

    .line 402
    .local v7, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .line 335
    .end local v7    # "ex":Ljava/lang/NumberFormatException;
    .restart local v9    # "messageValue":Ljava/lang/String;
    .restart local v12    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v16    # "urlValue":Ljava/lang/String;
    .restart local v17    # "value":I
    :cond_3
    :try_start_3
    new-instance v10, Landroid/app/Notification;

    const-string v19, "ic_launcher"

    invoke-static/range {v19 .. v19}, Lcom/julysystems/appx/AppXRenderRenderUtil;->getImageId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-direct {v10, v0, v9, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v10    # "notification":Landroid/app/Notification;
    goto/16 :goto_1

    .line 345
    .restart local v5    # "classNameStr":Ljava/lang/String;
    .restart local v8    # "intentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v6

    .line 346
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v6}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 353
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v11    # "notificationIntent":Landroid/content/Intent;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 354
    .local v15, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    goto/16 :goto_3

    .line 367
    .end local v5    # "classNameStr":Ljava/lang/String;
    .end local v8    # "intentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "messageValue":Ljava/lang/String;
    .end local v10    # "notification":Landroid/app/Notification;
    .end local v11    # "notificationIntent":Landroid/content/Intent;
    .end local v12    # "notificationManager":Landroid/app/NotificationManager;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .end local v16    # "urlValue":Ljava/lang/String;
    :pswitch_1
    const-string v19, "m"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 368
    .restart local v9    # "messageValue":Ljava/lang/String;
    const-string v19, "u"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 369
    .restart local v16    # "urlValue":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v19

    if-nez v19, :cond_0

    .line 370
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 371
    .local v4, "alertDialog":Landroid/app/AlertDialog;
    const-string v19, "ic_launcher"

    invoke-static/range {v19 .. v19}, Lcom/julysystems/appx/AppXRenderRenderUtil;->getImageId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 372
    invoke-static/range {p1 .. p1}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 373
    if-eqz v9, :cond_0

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 374
    invoke-virtual {v4, v9}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 375
    const-string v19, "OK"

    new-instance v20, Lcom/julysystems/appx/AppXGCMBroadcastReceiver$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v4}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver$1;-><init>(Lcom/julysystems/appx/AppXGCMBroadcastReceiver;Ljava/lang/String;Landroid/app/AlertDialog;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 382
    const-string v19, "Cancel"

    .line 383
    new-instance v20, Lcom/julysystems/appx/AppXGCMBroadcastReceiver$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver$2;-><init>(Lcom/julysystems/appx/AppXGCMBroadcastReceiver;Landroid/app/AlertDialog;)V

    .line 382
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 390
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 395
    .end local v4    # "alertDialog":Landroid/app/AlertDialog;
    .end local v9    # "messageValue":Ljava/lang/String;
    .end local v16    # "urlValue":Ljava/lang/String;
    :pswitch_2
    const-string v19, "m"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 396
    .restart local v9    # "messageValue":Ljava/lang/String;
    const-string v19, "u"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 397
    .restart local v16    # "urlValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static registerForNotifications(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->resetBackoff(Landroid/content/Context;)V

    .line 198
    invoke-static {p0, p1}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->setRegisteredOnServer(Landroid/content/Context;Z)V

    .line 200
    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getURL_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-static {p0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getURL_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    :cond_1
    const-string v0, "&uidType=deviceHash&&appXVersion=1.2.5"

    .line 202
    .local v0, "URL_SUFFIX":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->storeURL_PREFIX(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    .end local v0    # "URL_SUFFIX":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->sendAppXRegIDToServer()V

    goto :goto_0
.end method

.method protected static sendAppXRegIDToPortal(Ljava/lang/String;)V
    .locals 8
    .param p0, "portalUrl"    # Ljava/lang/String;

    .prologue
    .line 227
    :try_start_0
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/julysystems/appx/AppX;->getRegistrationStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "appxRegStatus":Ljava/lang/String;
    const-string v5, "success"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "regId":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/julysystems/appx/AppX;->isRegIdSendToProtal(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "androidRegId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/julysystems/appx/AppXDeviceUtils;->getmd5HashUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&ip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/julysystems/appx/AppXDeviceUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&mac="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/julysystems/appx/AppXDeviceUtils;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "postParams":Ljava/lang/String;
    new-instance v1, Lcom/julysystems/appx/AppXRegIdBackgroundRequest;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, p0, v3, v5, v6}, Lcom/julysystems/appx/AppXRegIdBackgroundRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V

    .line 235
    .local v1, "dataRequest":Lcom/julysystems/appx/AppXRegIdBackgroundRequest;
    invoke-static {v1}, Lcom/julysystems/appx/AppXURLRequestTask;->addRequest(Lcom/julysystems/appx/AppXURLRequest;)V

    .line 236
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->setRegIdPortalStatus(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v0    # "appxRegStatus":Ljava/lang/String;
    .end local v1    # "dataRequest":Lcom/julysystems/appx/AppXRegIdBackgroundRequest;
    .end local v3    # "postParams":Ljava/lang/String;
    .end local v4    # "regId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v2

    .line 240
    .local v2, "e1":Ljava/lang/Exception;
    const-string v5, "C2DMBroadcastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception happened sendAppXRegIDToPortal-- "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static sendAppXRegIDToServer()V
    .locals 8

    .prologue
    .line 209
    :try_start_0
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/julysystems/appx/AppX;->getRegistrationStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "appxRegStatus":Ljava/lang/String;
    const-string v5, "success"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 212
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/julysystems/appx/AppX;->resetPushBackoff(Landroid/content/Context;)V

    .line 213
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "regId":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "androidRegId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/julysystems/appx/AppXDeviceUtils;->getmd5HashUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&ip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/julysystems/appx/AppXDeviceUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&mac="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/julysystems/appx/AppXDeviceUtils;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "postParams":Ljava/lang/String;
    new-instance v1, Lcom/julysystems/appx/AppXRegIdBackgroundRequest;

    sget-object v5, Lcom/julysystems/appx/AppXConstants;->appxPushServerUrl:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v1, v5, v3, v6, v7}, Lcom/julysystems/appx/AppXRegIdBackgroundRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V

    .line 217
    .local v1, "dataRequest":Lcom/julysystems/appx/AppXRegIdBackgroundRequest;
    invoke-static {v1}, Lcom/julysystems/appx/AppXURLRequestTask;->addRequest(Lcom/julysystems/appx/AppXURLRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v1    # "dataRequest":Lcom/julysystems/appx/AppXRegIdBackgroundRequest;
    .end local v3    # "postParams":Ljava/lang/String;
    .end local v4    # "regId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e1":Ljava/lang/Exception;
    const-string v5, "C2DMBroadcastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception happened send regID-- "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDeletedMessages(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "total"    # I

    .prologue
    .line 433
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method protected onReceiveMessage(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customActivity"    # Landroid/app/Activity;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 245
    sget-object v1, Lcom/julysystems/appx/AppXConstants;->pushActivityClass:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 246
    invoke-static {p1}, Lcom/julysystems/appx/AppXGCMPushRegisterMessaging;->getPushClass(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/julysystems/appx/AppXConstants;->pushActivityClass:Ljava/lang/String;

    .line 247
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 248
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->pushMessage:Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->pushMessage:Ljava/lang/String;

    const-string v2, "t="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->notStartWithT:Z

    .line 251
    iget-object v1, p0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->pushMessage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->getMessageParams(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->getNotificationWithAlertMessage(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;Ljava/util/HashMap;)V

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->pushMessage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->getMessageParams(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->processPushMessage(Landroid/content/Context;Landroid/app/Activity;Ljava/util/HashMap;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 451
    const/4 v0, 0x1

    return v0
.end method
