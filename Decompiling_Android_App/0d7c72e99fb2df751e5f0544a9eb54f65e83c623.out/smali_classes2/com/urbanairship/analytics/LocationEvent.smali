.class public Lcom/urbanairship/analytics/LocationEvent;
.super Lcom/urbanairship/analytics/Event;
.source "LocationEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/analytics/LocationEvent$UpdateType;
    }
.end annotation


# static fields
.field static final FOREGROUND_KEY:Ljava/lang/String; = "foreground"

.field static final H_ACCURACY_KEY:Ljava/lang/String; = "h_accuracy"

.field static final LATITUDE_KEY:Ljava/lang/String; = "lat"

.field static final LONGITUDE_KEY:Ljava/lang/String; = "long"

.field static final PROVIDER_KEY:Ljava/lang/String; = "provider"

.field static final REQUESTED_ACCURACY_KEY:Ljava/lang/String; = "requested_accuracy"

.field static final TYPE:Ljava/lang/String; = "location"

.field static final UPDATE_DISTANCE_KEY:Ljava/lang/String; = "update_dist"

.field static final UPDATE_TYPE_KEY:Ljava/lang/String; = "update_type"

.field static final V_ACCURACY_KEY:Ljava/lang/String; = "v_accuracy"


# instance fields
.field private accuracy:Ljava/lang/String;

.field private foreground:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private requestedAccuracy:Ljava/lang/String;

.field private updateDistance:Ljava/lang/String;

.field private updateType:Lcom/urbanairship/analytics/LocationEvent$UpdateType;


# direct methods
.method public constructor <init>(Landroid/location/Location;Lcom/urbanairship/analytics/LocationEvent$UpdateType;IIZ)V
    .locals 8
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "type"    # Lcom/urbanairship/analytics/LocationEvent$UpdateType;
    .param p3, "userRequestedAccuracy"    # I
    .param p4, "updateDist"    # I
    .param p5, "isForeground"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;-><init>()V

    .line 84
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.6f"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->latitude:Ljava/lang/String;

    .line 85
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.6f"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->longitude:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UNKNOWN"

    :goto_0
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->provider:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->accuracy:Ljava/lang/String;

    .line 89
    if-ltz p3, :cond_1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->requestedAccuracy:Ljava/lang/String;

    .line 90
    if-ltz p4, :cond_2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->updateDistance:Ljava/lang/String;

    .line 91
    if-eqz p5, :cond_3

    const-string v0, "true"

    :goto_3
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->foreground:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/urbanairship/analytics/LocationEvent;->updateType:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    .line 93
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_1
    const-string v0, "NONE"

    goto :goto_1

    .line 90
    :cond_2
    const-string v0, "NONE"

    goto :goto_2

    .line 91
    :cond_3
    const-string v0, "false"

    goto :goto_3
.end method


# virtual methods
.method protected final getEventData()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 103
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "lat"

    iget-object v3, p0, Lcom/urbanairship/analytics/LocationEvent;->latitude:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v2, "long"

    iget-object v3, p0, Lcom/urbanairship/analytics/LocationEvent;->longitude:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v2, "requested_accuracy"

    iget-object v3, p0, Lcom/urbanairship/analytics/LocationEvent;->requestedAccuracy:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v2, "update_type"

    iget-object v3, p0, Lcom/urbanairship/analytics/LocationEvent;->updateType:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    invoke-virtual {v3}, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v2, "provider"

    iget-object v3, p0, Lcom/urbanairship/analytics/LocationEvent;->provider:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v2, "h_accuracy"

    iget-object v3, p0, Lcom/urbanairship/analytics/LocationEvent;->accuracy:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v2, "v_accuracy"

    const-string v3, "NONE"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v2, "foreground"

    iget-object v3, p0, Lcom/urbanairship/analytics/LocationEvent;->foreground:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v2, "update_dist"

    iget-object v3, p0, Lcom/urbanairship/analytics/LocationEvent;->updateDistance:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "LocationEvent - Error constructing JSON data."

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "location"

    return-object v0
.end method
