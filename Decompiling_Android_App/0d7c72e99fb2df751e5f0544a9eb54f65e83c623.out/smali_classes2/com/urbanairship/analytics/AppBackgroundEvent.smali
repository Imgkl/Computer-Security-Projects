.class Lcom/urbanairship/analytics/AppBackgroundEvent;
.super Lcom/urbanairship/analytics/Event;
.source "AppBackgroundEvent.java"


# static fields
.field static final TYPE:Ljava/lang/String; = "app_background"


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "timeMS"    # J

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/analytics/Event;-><init>(J)V

    .line 46
    return-void
.end method


# virtual methods
.method protected final getEventData()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 59
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "connection_type"

    invoke-virtual {p0}, Lcom/urbanairship/analytics/AppBackgroundEvent;->getConnectionType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {p0}, Lcom/urbanairship/analytics/AppBackgroundEvent;->getConnectionSubType()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "subtype":Ljava/lang/String;
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    const-string v3, "connection_subtype"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_0
    const-string v3, "push_id"

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/analytics/Analytics;->getConversionSendId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v2    # "subtype":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "AppBackgroundEvent - Error constructing JSON data."

    invoke-static {v3, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "app_background"

    return-object v0
.end method
