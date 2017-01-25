.class public abstract Lcom/urbanairship/analytics/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field static final CARRIER_KEY:Ljava/lang/String; = "carrier"

.field static final CONNECTION_SUBTYPE_KEY:Ljava/lang/String; = "connection_subtype"

.field static final CONNECTION_TYPE_KEY:Ljava/lang/String; = "connection_type"

.field static final DATA_KEY:Ljava/lang/String; = "data"

.field static final DAYLIGHT_SAVINGS_KEY:Ljava/lang/String; = "daylight_savings"

.field static final EVENT_ID_KEY:Ljava/lang/String; = "event_id"

.field static final LAST_SEND_ID_KEY:Ljava/lang/String; = "last_send_id"

.field static final LIB_VERSION_KEY:Ljava/lang/String; = "lib_version"

.field static final OS_VERSION_KEY:Ljava/lang/String; = "os_version"

.field static final PACKAGE_VERSION_KEY:Ljava/lang/String; = "package_version"

.field static final PUSH_ID_KEY:Ljava/lang/String; = "push_id"

.field static final SESSION_ID_KEY:Ljava/lang/String; = "session_id"

.field static final TIME_KEY:Ljava/lang/String; = "time"

.field static final TIME_ZONE_KEY:Ljava/lang/String; = "time_zone"

.field static final TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field private eventId:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/analytics/Event;-><init>(J)V

    .line 89
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "timeMS"    # J

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/Event;->eventId:Ljava/lang/String;

    .line 81
    invoke-static {p1, p2}, Lcom/urbanairship/analytics/Event;->millisecondsToSecondsString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/Event;->time:Ljava/lang/String;

    .line 82
    return-void
.end method

.method protected static millisecondsToSecondsString(J)Ljava/lang/String;
    .locals 8
    .param p0, "milliseconds"    # J

    .prologue
    .line 282
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.3f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    long-to-double v4, p0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method createEventPayload(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 116
    .local v3, "object":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/urbanairship/analytics/Event;->getEventData()Lorg/json/JSONObject;

    move-result-object v0

    .line 120
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "data":Lorg/json/JSONObject;
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "session_id"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo v4, "type"

    invoke-virtual {p0}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v4, "event_id"

    iget-object v5, p0, Lcom/urbanairship/analytics/Event;->eventId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string/jumbo v4, "time"

    iget-object v5, p0, Lcom/urbanairship/analytics/Event;->time:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v4, "data"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v1

    .end local v1    # "data":Lorg/json/JSONObject;
    .restart local v0    # "data":Lorg/json/JSONObject;
    :goto_0
    return-object v4

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Lorg/json/JSONException;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event - Error constructing JSON "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " representation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    const/4 v4, 0x0

    goto :goto_0

    .line 129
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v1    # "data":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "data":Lorg/json/JSONObject;
    .restart local v0    # "data":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method protected getCarrier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 242
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getConnectionSubType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 225
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 226
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 228
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    .line 232
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 184
    const/4 v2, -0x1

    .line 189
    .local v2, "type":I
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 190
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 192
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 198
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :cond_0
    sparse-switch v2, :sswitch_data_0

    .line 209
    const-string v3, "none"

    .line 212
    .local v3, "typeString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 200
    .end local v3    # "typeString":Ljava/lang/String;
    :sswitch_0
    const-string v3, "cell"

    .line 201
    .restart local v3    # "typeString":Ljava/lang/String;
    goto :goto_0

    .line 203
    .end local v3    # "typeString":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v3, "wifi"

    .line 204
    .restart local v3    # "typeString":Ljava/lang/String;
    goto :goto_0

    .line 206
    .end local v3    # "typeString":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v3, "wimax"

    .line 207
    .restart local v3    # "typeString":Ljava/lang/String;
    goto :goto_0

    .line 198
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected abstract getEventData()Lorg/json/JSONObject;
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/urbanairship/analytics/Event;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTypes()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v0, "notificationTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    .line 161
    .local v1, "pushManager":Lcom/urbanairship/push/PushManager;
    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->isPushEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->isSoundEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const-string v2, "sound"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->isVibrateEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    const-string/jumbo v2, "vibrate"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_1
    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/urbanairship/analytics/Event;->time:Ljava/lang/String;

    return-object v0
.end method

.method protected getTimezone()J
    .locals 4

    .prologue
    .line 251
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 252
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    return-wide v2
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method protected isDaylightSavingsTime()Z
    .locals 2

    .prologue
    .line 261
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    return v0
.end method
