.class public Lcom/urbanairship/analytics/PushArrivedEvent;
.super Lcom/urbanairship/analytics/Event;
.source "PushArrivedEvent.java"


# static fields
.field static final TYPE:Ljava/lang/String; = "push_arrived"


# instance fields
.field private pushId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/urbanairship/analytics/PushArrivedEvent;->pushId:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method protected final getEventData()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "push_id"

    iget-object v4, p0, Lcom/urbanairship/analytics/PushArrivedEvent;->pushId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v3, "connection_type"

    invoke-virtual {p0}, Lcom/urbanairship/analytics/PushArrivedEvent;->getConnectionType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-virtual {p0}, Lcom/urbanairship/analytics/PushArrivedEvent;->getConnectionSubType()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "subtype":Ljava/lang/String;
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    const-string v3, "connection_subtype"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    :cond_0
    const-string v3, "carrier"

    invoke-virtual {p0}, Lcom/urbanairship/analytics/PushArrivedEvent;->getCarrier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v2    # "subtype":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "PushArrivedEvent - Error constructing JSON data."

    invoke-static {v3, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "push_arrived"

    return-object v0
.end method
