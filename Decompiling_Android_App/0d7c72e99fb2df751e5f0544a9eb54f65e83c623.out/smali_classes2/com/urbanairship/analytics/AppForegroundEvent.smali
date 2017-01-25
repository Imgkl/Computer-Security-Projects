.class Lcom/urbanairship/analytics/AppForegroundEvent;
.super Lcom/urbanairship/analytics/Event;
.source "AppForegroundEvent.java"


# static fields
.field static final NOTIFICATION_TYPES_KEY:Ljava/lang/String; = "notification_types"

.field static final TYPE:Ljava/lang/String; = "app_foreground"


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "timeMS"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/analytics/Event;-><init>(J)V

    .line 52
    return-void
.end method


# virtual methods
.method protected final getEventData()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "connection_type"

    invoke-virtual {p0}, Lcom/urbanairship/analytics/AppForegroundEvent;->getConnectionType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    invoke-virtual {p0}, Lcom/urbanairship/analytics/AppForegroundEvent;->getConnectionSubType()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "subtype":Ljava/lang/String;
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    const-string v3, "connection_subtype"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    :cond_0
    const-string v3, "carrier"

    invoke-virtual {p0}, Lcom/urbanairship/analytics/AppForegroundEvent;->getCarrier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v3, "time_zone"

    invoke-virtual {p0}, Lcom/urbanairship/analytics/AppForegroundEvent;->getTimezone()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    const-string v3, "daylight_savings"

    invoke-virtual {p0}, Lcom/urbanairship/analytics/AppForegroundEvent;->isDaylightSavingsTime()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 76
    const-string v3, "notification_types"

    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/urbanairship/analytics/AppForegroundEvent;->getNotificationTypes()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v3, "os_version"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v3, "lib_version"

    invoke-static {}, Lcom/urbanairship/UAirship;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v3, "package_version"

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v3, "push_id"

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/analytics/Analytics;->getConversionSendId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v3, "last_send_id"

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->getLastReceivedSendId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v2    # "subtype":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "AppForegroundEvent - Error constructing JSON data."

    invoke-static {v3, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "app_foreground"

    return-object v0
.end method
