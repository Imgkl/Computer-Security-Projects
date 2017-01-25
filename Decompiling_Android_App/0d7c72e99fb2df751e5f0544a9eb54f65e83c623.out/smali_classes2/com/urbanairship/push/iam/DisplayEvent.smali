.class public Lcom/urbanairship/push/iam/DisplayEvent;
.super Lcom/urbanairship/analytics/Event;
.source "DisplayEvent.java"


# static fields
.field private static final CONVERSION_SEND_ID:Ljava/lang/String; = "conversion_send_id"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final TYPE:Ljava/lang/String; = "in_app_display"


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/urbanairship/push/iam/InAppMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;-><init>()V

    .line 55
    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/DisplayEvent;->id:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method protected final getEventData()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    iget-object v3, p0, Lcom/urbanairship/push/iam/DisplayEvent;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v2, "conversion_send_id"

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/analytics/Analytics;->getConversionSendId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "DisplayEvent - Error constructing JSON data."

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "in_app_display"

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/urbanairship/push/iam/DisplayEvent;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
