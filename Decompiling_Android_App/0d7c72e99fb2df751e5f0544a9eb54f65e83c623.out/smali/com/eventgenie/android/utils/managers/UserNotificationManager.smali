.class public Lcom/eventgenie/android/utils/managers/UserNotificationManager;
.super Ljava/lang/Object;
.source "UserNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/managers/UserNotificationManager$3;,
        Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;,
        Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final NOTIFY_ID:I = 0x53a

.field public static final NOTIFY_ID_SUCCESS:I = 0x53b

.field public static final UPDATE_AVAILABLE_NOTIFY_ID:I = 0x539


# instance fields
.field private activityBeforeBlocking:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private failedUpdateNotificationShowed:Z

.field private final mConfig:Lcom/genie_connect/android/db/config/AppConfig;

.field private final mContext:Landroid/content/Context;

.field private final mEventBus:Lde/greenrobot/event/EventBus;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mProgressNotification:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/genie_connect/android/db/config/AppConfig;Lde/greenrobot/event/EventBus;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p2, "notificationManager"    # Landroid/app/NotificationManager;
    .param p3, "appConfig"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p4, "eventBus"    # Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 107
    iput-object p3, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    .line 108
    iput-object p4, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mEventBus:Lde/greenrobot/event/EventBus;

    .line 109
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public static createDialogueBuilderOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createDialogueOk(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 120
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 121
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static createDialogueOk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueOk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static createDialogueOk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "okListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 141
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 143
    const v1, 0x104000a

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static createDialogueYesNo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "yesListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "noListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 159
    const v3, 0x1040013

    const v4, 0x1040009

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueYesNoCustom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static createDialogueYesNoCustom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "yesStringResourceId"    # I
    .param p4, "noStringResourceId"    # I
    .param p5, "yesListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "noListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 175
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 176
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 177
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 178
    invoke-virtual {v0, p3, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 179
    invoke-virtual {v0, p4, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static createEnableNetworkingDialog(Landroid/app/Activity;Z)Landroid/app/AlertDialog;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "closeActivityOnCancelDismiss"    # Z

    .prologue
    .line 185
    sget v1, Lcom/eventgenie/android/R$string;->dialog_title_enable_networking:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->dialog_message_you_need_to_enable_networking_on_your_profile_to_proceed:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueBuilderOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$2;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$1;

    invoke-direct {v3, p1, p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager$1;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 206
    .local v0, "dialog":Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 217
    return-object v0
.end method

.method public static createNotificationAlert(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "alert"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 272
    const/16 v4, 0x9

    new-array v3, v4, [J

    fill-array-data v3, :array_0

    .line 273
    .local v3, "pattern":[J
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v4, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 283
    .local v2, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 284
    .local v0, "appPrefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 285
    .local v1, "defaults":I
    const-string v4, "enable_sounds"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    or-int/lit8 v1, v1, 0x1

    .line 288
    :cond_0
    const-string v4, "enable_vibration"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 290
    or-int/lit8 v1, v1, 0x2

    .line 292
    :cond_1
    const-string v4, "enable_leds"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 293
    const/high16 v4, -0x10000

    const/16 v5, 0xfa

    const/16 v6, 0x2ee

    invoke-virtual {v2, v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 294
    or-int/lit8 v1, v1, 0x1

    .line 297
    :cond_2
    const-string v4, "enable_wake_lock"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    :cond_3
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 302
    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 304
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    return-object v4

    .line 272
    :array_0
    .array-data 8
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
    .end array-data
.end method

.method public static createNotificationAlertInboxStyle(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/app/Notification;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "alert"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 222
    const/16 v6, 0x9

    new-array v5, v6, [J

    fill-array-data v5, :array_0

    .line 223
    .local v5, "pattern":[J
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 233
    .local v4, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 236
    .local v3, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    invoke-virtual {v3, p3}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 238
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p4

    if-ge v2, v6, :cond_0

    .line 240
    aget-object v6, p4, v2

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 245
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 246
    .local v0, "appPrefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 247
    .local v1, "defaults":I
    const-string v6, "enable_sounds"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 248
    or-int/lit8 v1, v1, 0x1

    .line 250
    :cond_1
    const-string v6, "enable_vibration"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 251
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 252
    or-int/lit8 v1, v1, 0x2

    .line 254
    :cond_2
    const-string v6, "enable_leds"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 255
    const/high16 v6, -0x10000

    const/16 v7, 0xfa

    const/16 v8, 0x2ee

    invoke-virtual {v4, v6, v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 256
    or-int/lit8 v1, v1, 0x1

    .line 259
    :cond_3
    const-string v6, "enable_wake_lock"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 263
    :cond_4
    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 264
    invoke-virtual {v4, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 266
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    return-object v6

    .line 222
    :array_0
    .array-data 8
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
    .end array-data
.end method

.method private createNotificationProgressBar(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "progressMax"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 543
    new-instance v0, Landroid/support/v7/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 545
    .local v0, "builder":Landroid/support/v7/app/NotificationCompat$Builder;
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$layout;->notification_syncing:I

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 549
    .local v1, "contentView":Landroid/widget/RemoteViews;
    sget v3, Lcom/eventgenie/android/R$id;->title:I

    invoke-virtual {v1, v3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 550
    sget v3, Lcom/eventgenie/android/R$id;->icon:I

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 551
    sget v3, Lcom/eventgenie/android/R$id;->progress:I

    invoke-virtual {v1, v3, p3, v6, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 553
    invoke-virtual {v0, p1}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 562
    .local v2, "notification":Landroid/app/Notification;
    return-object v2
.end method

.method public static getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 311
    .local v0, "result":Landroid/app/AlertDialog$Builder;
    return-object v0
.end method

.method public static getNetworkResultError(Landroid/content/Context;Lcom/genie_connect/common/net/container/NetworkResult;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Lcom/genie_connect/common/net/container/NetworkResult;

    .prologue
    .line 322
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResult;->isSuccesful()Z

    move-result v3

    if-nez v3, :cond_3

    .line 324
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResult;->getResponseCode()I

    move-result v2

    .line 325
    .local v2, "responseCode":I
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResult;->getInternalErrorCode()Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    move-result-object v1

    .line 327
    .local v1, "internalError":Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;
    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$3;->$SwitchMap$com$genie_connect$common$net$container$NetworkResult$EgInternalErrorCode:[I

    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/eventgenie/android/R$string;->msg_no_network:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .end local v1    # "internalError":Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;
    .end local v2    # "responseCode":I
    :goto_0
    return-object v0

    .line 329
    .restart local v1    # "internalError":Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;
    .restart local v2    # "responseCode":I
    :pswitch_0
    sget v3, Lcom/eventgenie/android/R$string;->msg_no_network:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "errorMessage":Ljava/lang/String;
    goto :goto_0

    .line 332
    .end local v0    # "errorMessage":Ljava/lang/String;
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/eventgenie/android/R$string;->msg_network_json_error:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    .restart local v0    # "errorMessage":Ljava/lang/String;
    goto :goto_0

    .line 335
    .end local v0    # "errorMessage":Ljava/lang/String;
    :pswitch_2
    const/16 v3, 0x191

    if-eq v2, v3, :cond_0

    const/16 v3, 0x193

    if-ne v2, v3, :cond_1

    .line 336
    :cond_0
    sget v3, Lcom/eventgenie/android/R$string;->msg_network_authentication_error:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "errorMessage":Ljava/lang/String;
    goto :goto_0

    .line 337
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_1
    if-lez v2, :cond_2

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/eventgenie/android/R$string;->msg_network_server_error:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "errorMessage":Ljava/lang/String;
    goto :goto_0

    .line 340
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 342
    .restart local v0    # "errorMessage":Ljava/lang/String;
    goto :goto_0

    .line 344
    .end local v0    # "errorMessage":Ljava/lang/String;
    :pswitch_3
    sget v3, Lcom/eventgenie/android/R$string;->msg_no_network:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    .restart local v0    # "errorMessage":Ljava/lang/String;
    goto :goto_0

    .line 347
    .end local v0    # "errorMessage":Ljava/lang/String;
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/eventgenie/android/R$string;->msg_network_json_error:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    .restart local v0    # "errorMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 350
    .end local v0    # "errorMessage":Ljava/lang/String;
    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/eventgenie/android/R$string;->msg_no_network:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    .restart local v0    # "errorMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 353
    .end local v0    # "errorMessage":Ljava/lang/String;
    :pswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/eventgenie/android/R$string;->msg_no_network:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .restart local v0    # "errorMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 363
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "internalError":Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;
    .end local v2    # "responseCode":I
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private hideAllNotifications()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x539

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 521
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x53a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 522
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x53b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 523
    return-void
.end method

.method private prepareUpdateIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 511
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 513
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.eventgenie.android.EXTRA_ACTION"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    const-string v2, "com.eventgenie.android.EXTRA_VERSION"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 516
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method public static sendToPebble(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 368
    invoke-static {p0}, Lcom/genie_connect/android/prefs/PreferencesManager;->getGlobalPreferences(Landroid/content/Context;)Lcom/genie_connect/android/prefs/GlobalPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/prefs/GlobalPreferences;->isSendToPebbleEnabled()Z

    move-result v5

    .line 370
    .local v5, "sendToPebble":Z
    if-eqz v5, :cond_0

    .line 371
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.getpebble.action.SEND_NOTIFICATION"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v2, "i":Landroid/content/Intent;
    sget v6, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "appName":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 375
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "title"

    invoke-interface {v1, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v6, "body"

    invoke-interface {v1, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 379
    .local v3, "jsonData":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, "notificationData":Ljava/lang/String;
    const-string v6, "messageType"

    const-string v7, "PEBBLE_ALERT"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v6, "sender"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v6, "notificationData"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ PEBBLE: Sending to Pebble: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 390
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "jsonData":Lorg/json/JSONObject;
    .end local v4    # "notificationData":Ljava/lang/String;
    :goto_0
    return-void

    .line 388
    :cond_0
    const-string v6, "^ PEBBLE: Sending to Pebble is disabled"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showDialogNetworkRequiredForValidation(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    sget v0, Lcom/eventgenie/android/R$string;->msg_requires_network_for_validation:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueOk(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 395
    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->INFO:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 474
    return-void
.end method

.method public static showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "type"    # Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 478
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 398
    sget-object v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->INFO:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, p1, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 399
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    .prologue
    .line 402
    if-nez p1, :cond_0

    .line 420
    :goto_0
    return-void

    .line 406
    :cond_0
    sget-object v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$3;->$SwitchMap$com$eventgenie$android$utils$managers$UserNotificationManager$ToastType:[I

    invoke-virtual {p2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 417
    sget-object v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;->SHORT:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    invoke-static {p0, p1, p2, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;)V

    goto :goto_0

    .line 408
    :pswitch_0
    sget-object v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;->SHORT:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    invoke-static {p0, p1, p2, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;)V

    goto :goto_0

    .line 411
    :pswitch_1
    sget-object v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;->SHORT:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    invoke-static {p0, p1, p2, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;)V

    goto :goto_0

    .line 414
    :pswitch_2
    sget-object v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;->SHORT:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    invoke-static {p0, p1, p2, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;)V

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;
    .param p3, "duration"    # Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    .prologue
    const/4 v6, 0x2

    .line 423
    if-nez p1, :cond_0

    .line 470
    :goto_0
    return-void

    .line 428
    :cond_0
    sget-object v4, Lcom/eventgenie/android/utils/managers/UserNotificationManager$3;->$SwitchMap$com$eventgenie$android$utils$managers$UserNotificationManager$ToastDuration:[I

    invoke-virtual {p3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 439
    const/16 v0, 0xabe

    .line 446
    .local v0, "durationInMs":I
    :goto_1
    sget-object v4, Lcom/eventgenie/android/utils/managers/UserNotificationManager$3;->$SwitchMap$com$eventgenie$android$utils$managers$UserNotificationManager$ToastType:[I

    invoke-virtual {p2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 460
    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_dark_notification:I

    .line 461
    .local v1, "icon":I
    invoke-static {v6}, Lcom/github/johnpersano/supertoasts/util/Style;->getStyle(I)Lcom/github/johnpersano/supertoasts/util/Style;

    move-result-object v2

    .line 465
    .local v2, "style":Lcom/github/johnpersano/supertoasts/util/Style;
    :goto_2
    new-instance v3, Lcom/github/johnpersano/supertoasts/SuperToast;

    invoke-direct {v3, p0, v2}, Lcom/github/johnpersano/supertoasts/SuperToast;-><init>(Landroid/content/Context;Lcom/github/johnpersano/supertoasts/util/Style;)V

    .line 466
    .local v3, "toast":Lcom/github/johnpersano/supertoasts/SuperToast;
    invoke-virtual {v3, p1}, Lcom/github/johnpersano/supertoasts/SuperToast;->setText(Ljava/lang/CharSequence;)V

    .line 467
    invoke-virtual {v3, v0}, Lcom/github/johnpersano/supertoasts/SuperToast;->setDuration(I)V

    .line 468
    sget-object v4, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->LEFT:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    invoke-virtual {v3, v1, v4}, Lcom/github/johnpersano/supertoasts/SuperToast;->setIcon(ILcom/github/johnpersano/supertoasts/SuperToast$IconPosition;)V

    .line 469
    invoke-virtual {v3}, Lcom/github/johnpersano/supertoasts/SuperToast;->show()V

    goto :goto_0

    .line 430
    .end local v0    # "durationInMs":I
    .end local v1    # "icon":I
    .end local v2    # "style":Lcom/github/johnpersano/supertoasts/util/Style;
    .end local v3    # "toast":Lcom/github/johnpersano/supertoasts/SuperToast;
    :pswitch_0
    const/16 v0, 0xdac

    .line 431
    .restart local v0    # "durationInMs":I
    goto :goto_1

    .line 433
    .end local v0    # "durationInMs":I
    :pswitch_1
    const/16 v0, 0xabe

    .line 434
    .restart local v0    # "durationInMs":I
    goto :goto_1

    .line 436
    .end local v0    # "durationInMs":I
    :pswitch_2
    const/16 v0, 0x7d0

    .line 437
    .restart local v0    # "durationInMs":I
    goto :goto_1

    .line 448
    :pswitch_3
    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_dark_warning:I

    .line 449
    .restart local v1    # "icon":I
    const/4 v4, 0x6

    invoke-static {v4}, Lcom/github/johnpersano/supertoasts/util/Style;->getStyle(I)Lcom/github/johnpersano/supertoasts/util/Style;

    move-result-object v2

    .line 450
    .restart local v2    # "style":Lcom/github/johnpersano/supertoasts/util/Style;
    goto :goto_2

    .line 452
    .end local v1    # "icon":I
    .end local v2    # "style":Lcom/github/johnpersano/supertoasts/util/Style;
    :pswitch_4
    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_dark_notification:I

    .line 453
    .restart local v1    # "icon":I
    invoke-static {v6}, Lcom/github/johnpersano/supertoasts/util/Style;->getStyle(I)Lcom/github/johnpersano/supertoasts/util/Style;

    move-result-object v2

    .line 454
    .restart local v2    # "style":Lcom/github/johnpersano/supertoasts/util/Style;
    goto :goto_2

    .line 456
    .end local v1    # "icon":I
    .end local v2    # "style":Lcom/github/johnpersano/supertoasts/util/Style;
    :pswitch_5
    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_light_accept:I

    .line 457
    .restart local v1    # "icon":I
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/github/johnpersano/supertoasts/util/Style;->getStyle(I)Lcom/github/johnpersano/supertoasts/util/Style;

    move-result-object v2

    .line 458
    .restart local v2    # "style":Lcom/github/johnpersano/supertoasts/util/Style;
    goto :goto_2

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 446
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static showToastLoginRequired(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 481
    sget v0, Lcom/eventgenie/android/R$string;->msg_you_need_to_be_logged_in_to_perform_this_action:I

    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 482
    return-void
.end method

.method public static showToastNetworkRequired(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 485
    sget v0, Lcom/eventgenie/android/R$string;->msg_requires_network:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->INFO:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 486
    return-void
.end method

.method public static showToastNoNetwork(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 490
    sget v0, Lcom/eventgenie/android/R$string;->msg_no_network:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 491
    return-void
.end method


# virtual methods
.method public hideBlockingProgressBar()V
    .locals 3

    .prologue
    .line 618
    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->activityBeforeBlocking:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->activityBeforeBlocking:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->activityBeforeBlocking:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 622
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dismissProgressBar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 623
    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->activityBeforeBlocking:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public notify(Landroid/app/Notification;)V
    .locals 2
    .param p1, "note"    # Landroid/app/Notification;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x53a

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 495
    return-void
.end method

.method public notifyUpdateSuccess()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 526
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    sget v7, Lcom/eventgenie/android/R$string;->notify_sync_title_complete:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 527
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v5

    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getHomeActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 528
    .local v1, "i":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 529
    iget-object v5, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 531
    .local v2, "intent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/support/v7/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 532
    .local v0, "builder":Landroid/support/v7/app/NotificationCompat$Builder;
    invoke-virtual {v0, v4}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    sget v7, Lcom/eventgenie/android/R$string;->open:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 538
    .local v3, "notification":Landroid/app/Notification;
    iget-object v5, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v6, 0x53b

    invoke-virtual {v5, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 539
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultErrorEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultErrorEvent;

    .prologue
    const/4 v6, 0x1

    .line 631
    iget-boolean v2, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->failedUpdateNotificationShowed:Z

    if-nez v2, :cond_0

    .line 632
    new-instance v0, Landroid/support/v7/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 633
    .local v0, "builder":Landroid/support/v7/app/NotificationCompat$Builder;
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/eventgenie/android/R$string;->notify_fail_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/eventgenie/android/R$string;->notify_fail_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 638
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0x53a

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 639
    iput-boolean v6, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->failedUpdateNotificationShowed:Z

    .line 641
    .end local v0    # "builder":Landroid/support/v7/app/NotificationCompat$Builder;
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/notification/HideNotificationsEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/notification/HideNotificationsEvent;

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->hideAllNotifications()V

    .line 609
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/notification/UpdateIntentNotificationEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/notification/UpdateIntentNotificationEvent;

    .prologue
    const/4 v6, 0x0

    .line 572
    invoke-direct {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->hideAllNotifications()V

    .line 574
    new-instance v1, Landroid/support/v7/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 575
    .local v1, "builder":Landroid/support/v7/app/NotificationCompat$Builder;
    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/notification/UpdateIntentNotificationEvent;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->notify_updates_msg:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/notification/UpdateIntentNotificationEvent;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->prepareUpdateIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 581
    .local v2, "notification":Landroid/app/Notification;
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 582
    .local v0, "appPrefs":Landroid/content/SharedPreferences;
    const-string v3, "enable_sounds"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 583
    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 585
    :cond_0
    const-string v3, "enable_vibration"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 586
    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 589
    :cond_1
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x539

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 590
    return-void
.end method

.method public onEventMainThread(Lcom/eventgenie/android/eventbus/events/notification/ToastNotificationEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/notification/ToastNotificationEvent;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/notification/ToastNotificationEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/notification/ToastNotificationEvent;->getType()Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 628
    return-void
.end method

.method public onEventMainThread(Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;

    .prologue
    const/16 v5, 0x53a

    .line 593
    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/eventgenie/android/R$string;->notify_sync_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/eventgenie/android/R$string;->notify_sync_msg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;->getMaxProgress()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createNotificationProgressBar(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mProgressNotification:Landroid/app/Notification;

    .line 598
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mProgressNotification:Landroid/app/Notification;

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 605
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;->isUpdateFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mProgressNotification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v1, Lcom/eventgenie/android/R$id;->progress:I

    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;->getMaxProgress()I

    move-result v2

    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;->getProgress()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 603
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->mProgressNotification:Landroid/app/Notification;

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public showBlockingProgressBar(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 612
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 613
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 614
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->activityBeforeBlocking:Ljava/lang/ref/WeakReference;

    .line 615
    return-void
.end method

.method public updateActivityContext(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ USER_NOTIFICATION_MANAGER: update Activity context with : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 645
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->activityBeforeBlocking:Ljava/lang/ref/WeakReference;

    .line 646
    return-void
.end method
