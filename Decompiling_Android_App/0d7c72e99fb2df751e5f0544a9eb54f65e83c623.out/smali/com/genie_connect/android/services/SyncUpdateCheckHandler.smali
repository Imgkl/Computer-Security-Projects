.class public Lcom/genie_connect/android/services/SyncUpdateCheckHandler;
.super Landroid/os/Handler;
.source "SyncUpdateCheckHandler.java"


# static fields
.field public static final NOTIFY_ID:I = 0x539


# instance fields
.field private final context:Landroid/content/Context;

.field private final defaultPrefs:Landroid/content/SharedPreferences;

.field private final mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

.field private final mgr:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->context:Landroid/content/Context;

    .line 77
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->mgr:Landroid/app/NotificationManager;

    .line 78
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->defaultPrefs:Landroid/content/SharedPreferences;

    .line 79
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    .line 80
    return-void
.end method

.method public static notifyUpdateAvailable(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mgr"    # Landroid/app/NotificationManager;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "newVersion"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 130
    new-instance v2, Landroid/app/Notification;

    sget v3, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, p2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 133
    .local v2, "note":Landroid/app/Notification;
    invoke-static {p0, p3}, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->prepareUpdateIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 135
    .local v1, "intent":Landroid/app/PendingIntent;
    sget v3, Lcom/eventgenie/android/R$string;->notify_updates_msg:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, p2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 138
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    .local v0, "appPrefs":Landroid/content/SharedPreferences;
    const-string v3, "enable_sounds"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 140
    :cond_0
    const-string v3, "enable_vibration"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 142
    :cond_1
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 144
    const/16 v3, 0x539

    invoke-virtual {p1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 145
    return-void
.end method

.method private static prepareUpdateIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.eventgenie.android.EXTRA_MESSENGER"

    new-instance v3, Landroid/os/Messenger;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 185
    const-string v2, "com.eventgenie.android.EXTRA_ACTION"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    const-string v2, "com.eventgenie.android.EXTRA_VERSION"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 189
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private updateLastCheckedPreference(ZLjava/lang/String;)V
    .locals 7
    .param p1, "upToDate"    # Z
    .param p2, "newVersion"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 151
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "date":Ljava/lang/String;
    iget-object v3, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->defaultPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 154
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "last_checked"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string v5, "data_update_available"

    if-nez p1, :cond_1

    move v3, v4

    :goto_0
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 156
    const-string v3, "data_update_version"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    iget-object v3, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->context:Landroid/content/Context;

    instance-of v3, v3, Lcom/eventgenie/android/activities/others/PreferencesActivity;

    if-eqz v3, :cond_2

    .line 162
    iget-object v3, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->context:Landroid/content/Context;

    check-cast v3, Landroid/preference/PreferenceActivity;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "last_checked"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 163
    .local v2, "lastCheckedPreference":Landroid/preference/Preference;
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    if-eqz p1, :cond_0

    .line 166
    iget-object v3, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getEventName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->context:Landroid/content/Context;

    sget v6, Lcom/eventgenie/android/R$string;->update_msg_up_to_date:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v3, v4, v5}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 177
    .end local v2    # "lastCheckedPreference":Landroid/preference/Preference;
    :cond_0
    :goto_1
    return-void

    .line 155
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 171
    :cond_2
    iget-object v3, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->context:Landroid/content/Context;

    instance-of v3, v3, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    if-eqz v3, :cond_0

    .line 172
    if-nez p1, :cond_0

    .line 173
    iget-object v3, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->context:Landroid/content/Context;

    check-cast v3, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    invoke-interface {v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v3

    sget-object v5, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->NOTIFICATION_GENIE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v3, v5, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_1
.end method


# virtual methods
.method public getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    iget-object v1, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 87
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getEventName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->context:Landroid/content/Context;

    sget v6, Lcom/eventgenie/android/R$string;->notify_updates_title:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "com.eventgenie.android.EXTRA_VERSION"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "newVersion":Ljava/lang/String;
    iget-object v4, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->mgr:Landroid/app/NotificationManager;

    invoke-static {v4, v5, v3, v2}, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->notifyUpdateAvailable(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v4, 0x0

    invoke-direct {p0, v4, v2}, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->updateLastCheckedPreference(ZLjava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v2    # "newVersion":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :pswitch_2
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->updateLastCheckedPreference(ZLjava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_3
    iget-object v4, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->context:Landroid/content/Context;

    instance-of v4, v4, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    if-eqz v4, :cond_0

    .line 99
    iget-object v0, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->context:Landroid/content/Context;

    check-cast v0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    .line 100
    .local v0, "a":Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v1, "broadcast":Landroid/content/Intent;
    const-string v4, "com.eventgenie.android.FINISH_HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 104
    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->isInForeground()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->finish()V

    .line 106
    invoke-static {v0}, Lcom/eventgenie/android/utils/intents/Navigation;->goHome(Landroid/app/Activity;)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->finish()V

    goto :goto_0

    .line 115
    .end local v0    # "a":Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;
    .end local v1    # "broadcast":Landroid/content/Intent;
    :pswitch_4
    iget-object v4, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->context:Landroid/content/Context;

    instance-of v4, v4, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    if-eqz v4, :cond_0

    .line 116
    iget-object v0, p0, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->context:Landroid/content/Context;

    check-cast v0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    .line 117
    .restart local v0    # "a":Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 118
    .restart local v1    # "broadcast":Landroid/content/Intent;
    const-string v4, "com.eventgenie.android.FINISH_HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 121
    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->displaySimpleErrorDialog()V

    goto/16 :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
