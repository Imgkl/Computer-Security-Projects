.class public Lcom/urbanairship/preference/UAPreferenceAdapter;
.super Ljava/lang/Object;
.source "UAPreferenceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/preference/UAPreferenceAdapter$3;
    }
.end annotation


# static fields
.field private static final CHANNEL_ID_MAX_RETRIES:I = 0x4

.field private static final CHANNEL_ID_RETRY_DELAY:I = 0x3e8


# instance fields
.field private channelIdRetryCount:I

.field private preferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/urbanairship/preference/UAPreference$PreferenceType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->preferences:Ljava/util/Map;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->channelIdRetryCount:I

    .line 69
    invoke-direct {p0, p1}, Lcom/urbanairship/preference/UAPreferenceAdapter;->checkForUAPreferences(Landroid/preference/PreferenceGroup;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/preference/UAPreferenceAdapter;Lcom/urbanairship/preference/UAPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/preference/UAPreferenceAdapter;
    .param p1, "x1"    # Lcom/urbanairship/preference/UAPreference;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/urbanairship/preference/UAPreferenceAdapter;->trackPreference(Lcom/urbanairship/preference/UAPreference;)V

    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/preference/UAPreferenceAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/preference/UAPreferenceAdapter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->preferences:Ljava/util/Map;

    return-object v0
.end method

.method private checkForUAPreferences(Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 203
    if-nez p1, :cond_1

    .line 216
    :cond_0
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 208
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 210
    .local v1, "preference":Landroid/preference/Preference;
    instance-of v2, v1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_3

    .line 211
    check-cast v1, Landroid/preference/PreferenceGroup;

    .end local v1    # "preference":Landroid/preference/Preference;
    invoke-direct {p0, v1}, Lcom/urbanairship/preference/UAPreferenceAdapter;->checkForUAPreferences(Landroid/preference/PreferenceGroup;)V

    .line 207
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .restart local v1    # "preference":Landroid/preference/Preference;
    :cond_3
    instance-of v2, v1, Lcom/urbanairship/preference/UAPreference;

    if-eqz v2, :cond_2

    .line 213
    check-cast v1, Lcom/urbanairship/preference/UAPreference;

    .end local v1    # "preference":Landroid/preference/Preference;
    invoke-direct {p0, v1}, Lcom/urbanairship/preference/UAPreferenceAdapter;->trackPreference(Lcom/urbanairship/preference/UAPreference;)V

    goto :goto_1
.end method

.method private getInternalPreference(Lcom/urbanairship/preference/UAPreference$PreferenceType;)Ljava/lang/Object;
    .locals 6
    .param p1, "preferenceType"    # Lcom/urbanairship/preference/UAPreference$PreferenceType;

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    .line 101
    .local v0, "airship":Lcom/urbanairship/UAirship;
    const/4 v2, 0x0

    .line 102
    .local v2, "value":Ljava/lang/Object;
    sget-object v4, Lcom/urbanairship/preference/UAPreferenceAdapter$3;->$SwitchMap$com$urbanairship$preference$UAPreference$PreferenceType:[I

    invoke-virtual {p1}, Lcom/urbanairship/preference/UAPreference$PreferenceType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 140
    .end local v2    # "value":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 104
    .restart local v2    # "value":Ljava/lang/Object;
    :pswitch_0
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/location/UALocationManager;->isLocationUpdatesEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 105
    .local v2, "value":Ljava/lang/Boolean;
    goto :goto_0

    .line 107
    .local v2, "value":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/location/UALocationManager;->isBackgroundLocationAllowed()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 108
    .local v2, "value":Ljava/lang/Boolean;
    goto :goto_0

    .line 110
    .local v2, "value":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->getUserNotificationsEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 111
    .local v2, "value":Ljava/lang/Boolean;
    goto :goto_0

    .line 113
    .local v2, "value":Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->isQuietTimeEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 114
    .local v2, "value":Ljava/lang/Boolean;
    goto :goto_0

    .line 116
    .local v2, "value":Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->getQuietTimeInterval()[Ljava/util/Date;

    move-result-object v1

    .line 117
    .local v1, "quietTimes":[Ljava/util/Date;
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 118
    .local v2, "value":Ljava/lang/Long;
    :goto_1
    goto :goto_0

    .local v2, "value":Ljava/lang/Object;
    :cond_0
    move-object v2, v3

    .line 117
    goto :goto_1

    .line 120
    .end local v1    # "quietTimes":[Ljava/util/Date;
    :pswitch_5
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->getQuietTimeInterval()[Ljava/util/Date;

    move-result-object v1

    .line 121
    .restart local v1    # "quietTimes":[Ljava/util/Date;
    if-eqz v1, :cond_1

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 122
    .local v2, "value":Ljava/lang/Long;
    :goto_2
    goto :goto_0

    .local v2, "value":Ljava/lang/Object;
    :cond_1
    move-object v2, v3

    .line 121
    goto :goto_2

    .line 124
    .end local v1    # "quietTimes":[Ljava/util/Date;
    :pswitch_6
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->isSoundEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 125
    .local v2, "value":Ljava/lang/Boolean;
    goto :goto_0

    .line 127
    .local v2, "value":Ljava/lang/Object;
    :pswitch_7
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->isVibrateEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 128
    .local v2, "value":Ljava/lang/Boolean;
    goto :goto_0

    .line 130
    .local v2, "value":Ljava/lang/Object;
    :pswitch_8
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "value":Ljava/lang/String;
    goto/16 :goto_0

    .line 133
    .local v2, "value":Ljava/lang/Object;
    :pswitch_9
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "value":Ljava/lang/String;
    goto/16 :goto_0

    .line 136
    .local v2, "value":Ljava/lang/Object;
    :pswitch_a
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/analytics/Analytics;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value":Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private setInternalPreference(Lcom/urbanairship/preference/UAPreference$PreferenceType;Ljava/lang/Object;)V
    .locals 8
    .param p1, "preferenceType"    # Lcom/urbanairship/preference/UAPreference$PreferenceType;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 151
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    .line 155
    .local v0, "airship":Lcom/urbanairship/UAirship;
    sget-object v4, Lcom/urbanairship/preference/UAPreferenceAdapter$3;->$SwitchMap$com$urbanairship$preference$UAPreference$PreferenceType:[I

    invoke-virtual {p1}, Lcom/urbanairship/preference/UAPreference$PreferenceType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 194
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    :pswitch_0
    return-void

    .line 157
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v4

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/urbanairship/location/UALocationManager;->setBackgroundLocationAllowed(Z)V

    goto :goto_0

    .line 160
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v4

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/urbanairship/location/UALocationManager;->setLocationUpdatesEnabled(Z)V

    goto :goto_0

    .line 163
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/PushManager;->setUserNotificationsEnabled(Z)V

    goto :goto_0

    .line 166
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/PushManager;->setQuietTimeEnabled(Z)V

    goto :goto_0

    .line 169
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/PushManager;->setSoundEnabled(Z)V

    goto :goto_0

    .line 172
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/urbanairship/push/PushManager;->setVibrateEnabled(Z)V

    goto :goto_0

    .line 175
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->getQuietTimeInterval()[Ljava/util/Date;

    move-result-object v2

    .line 176
    .local v2, "quietTimes":[Ljava/util/Date;
    if-eqz v2, :cond_0

    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 177
    .local v3, "start":Ljava/util/Date;
    :goto_1
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v3, v5}, Lcom/urbanairship/push/PushManager;->setQuietTimeInterval(Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_0

    .line 176
    .end local v3    # "start":Ljava/util/Date;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    goto :goto_1

    .line 180
    .end local v2    # "quietTimes":[Ljava/util/Date;
    :pswitch_8
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->getQuietTimeInterval()[Ljava/util/Date;

    move-result-object v2

    .line 181
    .restart local v2    # "quietTimes":[Ljava/util/Date;
    if-eqz v2, :cond_1

    const/4 v4, 0x1

    aget-object v1, v2, v4

    .line 182
    .local v1, "end":Ljava/util/Date;
    :goto_2
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5, v1}, Lcom/urbanairship/push/PushManager;->setQuietTimeInterval(Ljava/util/Date;Ljava/util/Date;)V

    goto/16 :goto_0

    .line 181
    .end local v1    # "end":Ljava/util/Date;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_2

    .line 189
    .end local v2    # "quietTimes":[Ljava/util/Date;
    :pswitch_9
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v4

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/urbanairship/analytics/Analytics;->setEnabled(Z)V

    goto/16 :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private trackPreference(Lcom/urbanairship/preference/UAPreference;)V
    .locals 8
    .param p1, "preference"    # Lcom/urbanairship/preference/UAPreference;

    .prologue
    .line 226
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    .line 227
    .local v4, "pushManager":Lcom/urbanairship/push/PushManager;
    invoke-interface {p1}, Lcom/urbanairship/preference/UAPreference;->getPreferenceType()Lcom/urbanairship/preference/UAPreference$PreferenceType;

    move-result-object v3

    .line 229
    .local v3, "preferenceType":Lcom/urbanairship/preference/UAPreference$PreferenceType;
    if-nez v3, :cond_0

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preference returned a null preference type. Ignoring preference "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 267
    .end local p1    # "preference":Lcom/urbanairship/preference/UAPreference;
    :goto_0
    return-void

    .line 235
    .restart local p1    # "preference":Lcom/urbanairship/preference/UAPreference;
    :cond_0
    invoke-direct {p0, v3}, Lcom/urbanairship/preference/UAPreferenceAdapter;->getInternalPreference(Lcom/urbanairship/preference/UAPreference$PreferenceType;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    .local v0, "defaultValue":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 238
    :try_start_0
    invoke-interface {p1, v0}, Lcom/urbanairship/preference/UAPreference;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_1
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "preference":Lcom/urbanairship/preference/UAPreference;
    new-instance v5, Lcom/urbanairship/preference/UAPreferenceAdapter$2;

    invoke-direct {v5, p0, v3}, Lcom/urbanairship/preference/UAPreferenceAdapter$2;-><init>(Lcom/urbanairship/preference/UAPreferenceAdapter;Lcom/urbanairship/preference/UAPreference$PreferenceType;)V

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 239
    .restart local p1    # "preference":Lcom/urbanairship/preference/UAPreference;
    :catch_0
    move-exception v1

    .line 240
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception setting value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Ignoring preference "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 243
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    sget-object v5, Lcom/urbanairship/preference/UAPreference$PreferenceType;->CHANNEL_ID:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    if-ne v3, v5, :cond_1

    .line 245
    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->isPushEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->channelIdRetryCount:I

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 246
    iget v5, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->channelIdRetryCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->channelIdRetryCount:I

    .line 247
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 248
    .local v2, "handler":Landroid/os/Handler;
    new-instance v5, Lcom/urbanairship/preference/UAPreferenceAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/urbanairship/preference/UAPreferenceAdapter$1;-><init>(Lcom/urbanairship/preference/UAPreferenceAdapter;Lcom/urbanairship/preference/UAPreference;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public applyUrbanAirshipPreferences()V
    .locals 6

    .prologue
    .line 78
    iget-object v4, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->preferences:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/urbanairship/preference/UAPreference$PreferenceType;

    .line 79
    .local v2, "preferenceType":Lcom/urbanairship/preference/UAPreference$PreferenceType;
    iget-object v4, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->preferences:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 80
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 85
    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/urbanairship/preference/UAPreferenceAdapter;->setInternalPreference(Lcom/urbanairship/preference/UAPreference$PreferenceType;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", invalid value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 90
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "preferenceType":Lcom/urbanairship/preference/UAPreference$PreferenceType;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    return-void
.end method
