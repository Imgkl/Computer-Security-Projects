.class Lcom/urbanairship/push/PushPreferences;
.super Ljava/lang/Object;
.source "PushPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/PushPreferences$QuietTime;
    }
.end annotation


# static fields
.field private static final ADM_REGISTRATION_ID_KEY:Ljava/lang/String; = "com.urbanairship.push.ADM_REGISTRATION_ID_KEY"

.field private static final ALIAS_KEY:Ljava/lang/String; = "com.urbanairship.push.ALIAS"

.field private static final APID_KEY:Ljava/lang/String; = "com.urbanairship.push.APID"

.field private static final APP_VERSION_KEY:Ljava/lang/String; = "com.urbanairship.push.APP_VERSION"

.field private static final CHANNEL_ID_KEY:Ljava/lang/String; = "com.urbanairship.push.CHANNEL_ID"

.field private static final CHANNEL_ID_PREFERENCE_KEY:Ljava/lang/String; = "com.urbanairship.preferences.CHANNEL_ID"

.field private static final CHANNEL_LOCATION_KEY:Ljava/lang/String; = "com.urbanairship.push.CHANNEL_LOCATION"

.field private static final CHANNEL_LOCATION_PREFERENCE_KEY:Ljava/lang/String; = "com.urbanairship.preferences.CHANNEL_LOCATION"

.field private static final DEVICE_ID_KEY:Ljava/lang/String; = "com.urbanairship.push.DEVICE_ID"

.field private static final GCM_REGISTRATION_ID_KEY:Ljava/lang/String; = "com.urbanairship.push.GCM_REGISTRATION_ID_KEY"

.field private static final KEY_PREFIX:Ljava/lang/String; = "com.urbanairship.push"

.field private static final LAST_CANONICAL_IDS_KEY:Ljava/lang/String; = "com.urbanairship.push.LAST_CANONICAL_IDS"

.field private static final LAST_RECEIVED_SEND_ID:Ljava/lang/String; = "com.urbanairship.push.LAST_RECEIVED_SEND_ID"

.field private static final LAST_REGISTRATION_PAYLOAD_KEY:Ljava/lang/String; = "com.urbanairship.push.LAST_REGISTRATION_PAYLOAD"

.field private static final LAST_REGISTRATION_TIME_KEY:Ljava/lang/String; = "com.urbanairship.push.LAST_REGISTRATION_TIME"

.field private static final PUSH_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.PUSH_ENABLED"

.field private static final PUSH_ENABLED_SETTINGS_MIGRATED_KEY:Ljava/lang/String; = "com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED"

.field private static final REGISTERED_GCM_SENDER_IDS:Ljava/lang/String; = "com.urbanairship.push.REGISTERED_GCM_SENDER_IDS"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "com.urbanairship.preferences"

.field private static final SOUND_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.SOUND_ENABLED"

.field private static final TAGS_KEY:Ljava/lang/String; = "com.urbanairship.push.TAGS"

.field private static final USER_NOTIFICATIONS_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.USER_NOTIFICATIONS_ENABLED"

.field private static final VIBRATE_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.VIBRATE_ENABLED"


# instance fields
.field private preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;


# direct methods
.method public constructor <init>(Lcom/urbanairship/PreferenceDataStore;)V
    .locals 0
    .param p1, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 101
    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 638
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 639
    .local v0, "context":Landroid/content/Context;
    const-string v1, "com.urbanairship.preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method getAdmId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.ADM_REGISTRATION_ID_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAlias()Ljava/lang/String;
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.ALIAS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getApid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 576
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.APID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAppVersionCode()I
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.APP_VERSION"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getCanonicalIds()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 666
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v5, "com.urbanairship.push.LAST_CANONICAL_IDS"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 669
    .local v1, "idString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 671
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 672
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 673
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 675
    .end local v0    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    .line 680
    :cond_0
    return-object v2
.end method

.method getChannelId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 543
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.CHANNEL_ID"

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/urbanairship/push/PushPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "com.urbanairship.preferences.CHANNEL_ID"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "channelId":Ljava/lang/String;
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.CHANNEL_ID"

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 548
    .end local v0    # "channelId":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.CHANNEL_ID"

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getChannelLocation()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 511
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.CHANNEL_LOCATION"

    invoke-virtual {v1, v2, v5}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "channelLocation":Ljava/lang/String;
    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.CHANNEL_LOCATION"

    invoke-direct {p0}, Lcom/urbanairship/push/PushPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "com.urbanairship.preferences.CHANNEL_LOCATION"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.CHANNEL_LOCATION"

    invoke-virtual {v1, v2, v5}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.DEVICE_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getGcmId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.GCM_REGISTRATION_ID_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLastReceivedSendId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 657
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.LAST_RECEIVED_SEND_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLastRegistrationPayload()Lcom/urbanairship/push/ChannelRegistrationPayload;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 585
    iget-object v3, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v4, "com.urbanairship.push.LAST_REGISTRATION_PAYLOAD"

    invoke-virtual {v3, v4, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, "payloadJSON":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 590
    :goto_0
    return-object v2

    .line 587
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/urbanairship/push/ChannelRegistrationPayload;->createFromJSON(Lorg/json/JSONObject;)Lcom/urbanairship/push/ChannelRegistrationPayload;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method getLastRegistrationTime()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 612
    iget-object v2, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v3, "com.urbanairship.push.LAST_REGISTRATION_TIME"

    invoke-virtual {v2, v3, v4, v5}, Lcom/urbanairship/PreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 615
    .local v0, "lastRegistrationTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 616
    const-wide/16 v0, 0x0

    .line 617
    invoke-virtual {p0, v4, v5}, Lcom/urbanairship/push/PushPreferences;->setLastRegistrationTime(J)V

    .line 620
    :cond_0
    return-wide v0
.end method

.method getPushEnabledSettingsMigrated()Z
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getQuietTimeInterval()[Ljava/util/Date;
    .locals 14

    .prologue
    const/16 v13, 0xc

    const/16 v12, 0xb

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 303
    iget-object v7, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v8, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-virtual {v7, v8, v9}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 304
    .local v5, "startHr":I
    iget-object v7, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v8, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-virtual {v7, v8, v9}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 305
    .local v6, "startMin":I
    iget-object v7, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v8, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-virtual {v7, v8, v9}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 306
    .local v2, "endHr":I
    iget-object v7, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v8, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-virtual {v7, v8, v9}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 308
    .local v3, "endMin":I
    if-eq v5, v9, :cond_0

    if-eq v6, v9, :cond_0

    if-eq v2, v9, :cond_0

    if-ne v3, v9, :cond_1

    .line 310
    :cond_0
    const/4 v7, 0x0

    .line 334
    :goto_0
    return-object v7

    .line 314
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 315
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v12, v5}, Ljava/util/Calendar;->set(II)V

    .line 316
    invoke-virtual {v0, v13, v6}, Ljava/util/Calendar;->set(II)V

    .line 317
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 318
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 321
    .local v4, "startDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 322
    invoke-virtual {v0, v12, v2}, Ljava/util/Calendar;->set(II)V

    .line 323
    invoke-virtual {v0, v13, v3}, Ljava/util/Calendar;->set(II)V

    .line 324
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 329
    if-ge v2, v5, :cond_2

    .line 330
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v11}, Ljava/util/Calendar;->add(II)V

    .line 333
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 334
    .local v1, "endDate":Ljava/util/Date;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/util/Date;

    aput-object v4, v7, v10

    aput-object v1, v7, v11

    goto :goto_0
.end method

.method getRegisteredGcmSenderIds()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 710
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 711
    .local v3, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v7, "com.urbanairship.push.REGISTERED_GCM_SENDER_IDS"

    invoke-virtual {v6, v7, v5}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 713
    .local v2, "idString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 715
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 716
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 717
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 720
    .end local v1    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "Unable to parse registered GCM sender Ids"

    invoke-static {v6, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 722
    iget-object v6, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v7, "com.urbanairship.push.REGISTERED_GCM_SENDER_IDS"

    invoke-virtual {v6, v7, v5}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    move-object v3, v5

    .line 726
    .end local v3    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-object v3
.end method

.method getTags()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 393
    .local v4, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v6, "com.urbanairship.push.TAGS"

    const-string v7, "[]"

    invoke-virtual {v5, v6, v7}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, "serializedTags":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 399
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, "a":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 402
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 403
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "len":I
    :catch_0
    move-exception v5

    .line 412
    :cond_0
    return-object v4
.end method

.method getUserNotificationsEnabled()Z
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.USER_NOTIFICATIONS_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isInQuietTime()Z
    .locals 14

    .prologue
    const/16 v13, 0xb

    const/4 v12, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, -0x1

    .line 249
    invoke-virtual {p0}, Lcom/urbanairship/push/PushPreferences;->isQuietTimeEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v8

    .line 253
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 255
    .local v3, "now":Ljava/util/Calendar;
    iget-object v9, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v10, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-virtual {v9, v10, v11}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 256
    .local v5, "startHr":I
    iget-object v9, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v10, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-virtual {v9, v10, v11}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 257
    .local v6, "startMin":I
    iget-object v9, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v10, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-virtual {v9, v10, v11}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 258
    .local v1, "endHr":I
    iget-object v9, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v10, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-virtual {v9, v10, v11}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 260
    .local v2, "endMin":I
    if-eq v11, v5, :cond_0

    if-eq v11, v6, :cond_0

    if-eq v11, v1, :cond_0

    if-eq v11, v2, :cond_0

    .line 269
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 270
    .local v4, "start":Ljava/util/Calendar;
    invoke-virtual {v4, v13, v5}, Ljava/util/Calendar;->set(II)V

    .line 271
    const/16 v9, 0xc

    invoke-virtual {v4, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 272
    const/16 v9, 0xd

    invoke-virtual {v4, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 274
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 275
    .local v0, "end":Ljava/util/Calendar;
    invoke-virtual {v0, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 276
    const/16 v9, 0xc

    invoke-virtual {v0, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 277
    const/16 v9, 0xd

    invoke-virtual {v0, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 282
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 283
    invoke-virtual {v4, v12, v11}, Ljava/util/Calendar;->add(II)V

    .line 289
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 290
    invoke-virtual {v0, v12, v7}, Ljava/util/Calendar;->add(II)V

    .line 293
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :goto_1
    move v8, v7

    goto :goto_0

    :cond_4
    move v7, v8

    goto :goto_1
.end method

.method isPushEnabled()Z
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.PUSH_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isQuietTimeEnabled()Z
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.QuietTime.ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isSoundEnabled()Z
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.SOUND_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isVibrateEnabled()Z
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.VIBRATE_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method migratePushEnabledSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 109
    invoke-virtual {p0}, Lcom/urbanairship/push/PushPreferences;->getPushEnabledSettingsMigrated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v1, "Migrating push enabled preferences"

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.PUSH_ENABLED"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 119
    .local v0, "oldPushEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting user notifications enabled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/urbanairship/push/PushPreferences;->setUserNotificationsEnabled(Z)V

    .line 122
    if-nez v0, :cond_1

    .line 123
    const-string v1, "Push is now enabled. You can continue to toggle the opt-in state by enabling or disabling user notifications"

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 128
    :cond_1
    invoke-virtual {p0, v4}, Lcom/urbanairship/push/PushPreferences;->setPushEnabled(Z)V

    .line 130
    invoke-virtual {p0, v4}, Lcom/urbanairship/push/PushPreferences;->setPushEnabledSettingsMigrated(Z)V

    goto :goto_0
.end method

.method setAdmId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.ADM_REGISTRATION_ID_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    return-void
.end method

.method setAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.ALIAS"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method setAppVersionCode(I)V
    .locals 3
    .param p1, "appVersion"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.APP_VERSION"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 476
    return-void
.end method

.method setCanonicalIds(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 690
    .local p1, "canonicalIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 691
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.LAST_CANONICAL_IDS"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 692
    return-void
.end method

.method setChannelId(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 559
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.CHANNEL_ID"

    invoke-virtual {v1, v2, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 560
    invoke-direct {p0}, Lcom/urbanairship/push/PushPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "com.urbanairship.preferences.CHANNEL_ID"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 563
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 564
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 568
    :goto_0
    return-void

    .line 566
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method setChannelLocation(Ljava/lang/String;)V
    .locals 3
    .param p1, "channelLocation"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 525
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.CHANNEL_LOCATION"

    invoke-virtual {v1, v2, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    invoke-direct {p0}, Lcom/urbanairship/push/PushPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "com.urbanairship.preferences.CHANNEL_LOCATION"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 530
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 531
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method setDeviceId(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.DEVICE_ID"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    return-void
.end method

.method setGcmId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.GCM_REGISTRATION_ID_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    return-void
.end method

.method setLastReceivedSendId(Ljava/lang/String;)V
    .locals 2
    .param p1, "sendId"    # Ljava/lang/String;

    .prologue
    .line 648
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.LAST_RECEIVED_SEND_ID"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 649
    return-void
.end method

.method setLastRegistrationPayload(Lcom/urbanairship/push/ChannelRegistrationPayload;)V
    .locals 3
    .param p1, "lastRegistrationPayload"    # Lcom/urbanairship/push/ChannelRegistrationPayload;

    .prologue
    .line 600
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 603
    .local v0, "payloadString":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.LAST_REGISTRATION_PAYLOAD"

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 604
    return-void

    .line 600
    .end local v0    # "payloadString":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload;->asJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method setLastRegistrationTime(J)V
    .locals 3
    .param p1, "lastRegistrationTime"    # J

    .prologue
    .line 629
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.LAST_REGISTRATION_TIME"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 630
    return-void
.end method

.method setPushEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.PUSH_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method setPushEnabledSettingsMigrated(Z)V
    .locals 3
    .param p1, "migrated"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method setQuietTimeEnabled(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 239
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.QuietTime.ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method setQuietTimeInterval(Ljava/util/Date;Ljava/util/Date;)V
    .locals 9
    .param p1, "startTime"    # Ljava/util/Date;
    .param p2, "endTime"    # Ljava/util/Date;

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    .line 344
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 345
    .local v3, "startCal":Ljava/util/Calendar;
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 346
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 347
    .local v4, "startHr":I
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 349
    .local v5, "startMin":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 350
    .local v0, "endCal":Ljava/util/Calendar;
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 351
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 352
    .local v1, "endHr":I
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 354
    .local v2, "endMin":I
    iget-object v6, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v7, "com.urbanairship.push.QuietTime.START_HOUR"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    iget-object v6, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v7, "com.urbanairship.push.QuietTime.START_MINUTE"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    iget-object v6, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v7, "com.urbanairship.push.QuietTime.END_HOUR"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    iget-object v6, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v7, "com.urbanairship.push.QuietTime.END_MINUTE"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    return-void
.end method

.method setRegisteredGcmSenderIds(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 700
    .local p1, "senderIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 701
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.REGISTERED_GCM_SENDER_IDS"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 702
    return-void
.end method

.method setSoundEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.SOUND_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method setTags(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.TAGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    :goto_0
    return-void

    .line 428
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 429
    .local v0, "jsonTags":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.TAGS"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setUserNotificationsEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.USER_NOTIFICATIONS_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method setVibrateEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Lcom/urbanairship/push/PushPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.VIBRATE_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    return-void
.end method
