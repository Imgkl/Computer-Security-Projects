.class Lcom/urbanairship/analytics/EventAPIClient;
.super Ljava/lang/Object;
.source "EventAPIClient.java"


# static fields
.field static final ALWAYS_ALLOWED:Ljava/lang/String; = "ALWAYS_ALLOWED"

.field static final NOT_ALLOWED:Ljava/lang/String; = "NOT_ALLOWED"

.field static final SYSTEM_LOCATION_DISABLED:Ljava/lang/String; = "SYSTEM_LOCATION_DISABLED"


# instance fields
.field private requestFactory:Lcom/urbanairship/http/RequestFactory;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/urbanairship/http/RequestFactory;

    invoke-direct {v0}, Lcom/urbanairship/http/RequestFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/urbanairship/analytics/EventAPIClient;-><init>(Lcom/urbanairship/http/RequestFactory;)V

    .line 66
    return-void
.end method

.method constructor <init>(Lcom/urbanairship/http/RequestFactory;)V
    .locals 0
    .param p1, "requestFactory"    # Lcom/urbanairship/http/RequestFactory;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/urbanairship/analytics/EventAPIClient;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    .line 75
    return-void
.end method

.method static getLocationPermission()Ljava/lang/String;
    .locals 5

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 204
    .local v1, "locationMode":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_1

    .line 206
    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 211
    :goto_0
    if-eqz v1, :cond_0

    .line 212
    invoke-static {}, Lcom/urbanairship/analytics/EventAPIClient;->getLocationPermissionForApp()Ljava/lang/String;

    move-result-object v3

    .line 222
    :goto_1
    return-object v3

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "EventAPIClient - Settings not found."

    invoke-static {v3}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const-string v3, "SYSTEM_LOCATION_DISABLED"

    goto :goto_1

    .line 218
    :cond_1
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_providers_allowed"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "locationProviders":Ljava/lang/String;
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 220
    invoke-static {}, Lcom/urbanairship/analytics/EventAPIClient;->getLocationPermissionForApp()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 222
    :cond_2
    const-string v3, "SYSTEM_LOCATION_DISABLED"

    goto :goto_1
.end method

.method static getLocationPermissionForApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0}, Lcom/urbanairship/util/ManifestUtils;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0}, Lcom/urbanairship/util/ManifestUtils;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    const-string v0, "ALWAYS_ALLOWED"

    .line 191
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "NOT_ALLOWED"

    goto :goto_0
.end method

.method static isBluetoothEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 233
    const-string v2, "android.permission.BLUETOOTH"

    invoke-static {v2}, Lcom/urbanairship/util/ManifestUtils;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    return v1

    .line 238
    .end local v0    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 239
    .restart local v0    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public sendEvents(Ljava/util/Collection;)Lcom/urbanairship/analytics/EventResponse;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/urbanairship/analytics/EventResponse;"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "events":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v20

    if-nez v20, :cond_1

    .line 86
    :cond_0
    const-string v20, "EventAPIClient - No events to send."

    invoke-static/range {v20 .. v20}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 87
    const/16 v20, 0x0

    .line 178
    :goto_0
    return-object v20

    .line 90
    :cond_1
    invoke-static {}, Lcom/urbanairship/util/Network;->isConnected()Z

    move-result v20

    if-nez v20, :cond_2

    .line 91
    const-string v20, "EventAPIClient - No network connectivity available. Unable to send events."

    invoke-static/range {v20 .. v20}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 92
    const/16 v20, 0x0

    goto :goto_0

    .line 95
    :cond_2
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 97
    .local v10, "eventJSON":Lorg/json/JSONArray;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 99
    .local v11, "eventPayload":Ljava/lang/String;
    :try_start_0
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 100
    :catch_0
    move-exception v9

    .line 101
    .local v9, "e":Lorg/json/JSONException;
    const-string v20, "EventAPIClient - Invalid eventPayload."

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 105
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v11    # "eventPayload":Ljava/lang/String;
    :cond_3
    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v14

    .line 107
    .local v14, "payload":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->analyticsServer:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "warp9/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 108
    .local v17, "url":Ljava/lang/String;
    const/4 v5, 0x0

    .line 110
    .local v5, "analyticsServerUrl":Ljava/net/URL;
    :try_start_1
    new-instance v6, Ljava/net/URL;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "analyticsServerUrl":Ljava/net/URL;
    .local v6, "analyticsServerUrl":Ljava/net/URL;
    move-object v5, v6

    .line 116
    .end local v6    # "analyticsServerUrl":Ljava/net/URL;
    .restart local v5    # "analyticsServerUrl":Ljava/net/URL;
    :goto_2
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 117
    const-string v8, "amazon"

    .line 122
    .local v8, "deviceFamily":Ljava/lang/String;
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v18, v20, v22

    .line 123
    .local v18, "sentAt":D
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v4

    .line 125
    .local v4, "airshipConfig":Lcom/urbanairship/AirshipConfigOptions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/urbanairship/analytics/EventAPIClient;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    move-object/from16 v20, v0

    const-string v21, "POST"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/urbanairship/http/RequestFactory;->createRequest(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/http/Request;

    move-result-object v20

    const-string v21, "application/json"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lcom/urbanairship/http/Request;->setRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/urbanairship/http/Request;->setCompressRequestBody(Z)Lcom/urbanairship/http/Request;

    move-result-object v20

    const-string v21, "X-UA-Device-Family"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v20

    const-string v21, "X-UA-Sent-At"

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v23, "%.3f"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v20

    const-string v21, "X-UA-Package-Name"

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v20

    const-string v21, "X-UA-Package-Version"

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v20

    const-string v21, "X-UA-App-Key"

    invoke-virtual {v4}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v20

    const-string v21, "X-UA-In-Production"

    iget-boolean v0, v4, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v20

    const-string v21, "X-UA-Device-Model"

    sget-object v22, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v20 .. v22}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v20

    const-string v21, "X-UA-OS-Version"

    sget-object v22, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v20 .. v22}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v20

    const-string v21, "X-UA-Lib-Version"

    invoke-static {}, Lcom/urbanairship/UAirship;->getVersion()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v20

    const-string v21, "X-UA-Timezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v20

    const-string v21, "X-UA-Channel-Opted-In"

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/urbanairship/push/PushManager;->isOptIn()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v21

    const-string v22, "X-UA-Channel-Background-Enabled"

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/push/PushManager;->isPushEnabled()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/push/PushManager;->isPushAvailable()Z

    move-result v20

    if-eqz v20, :cond_8

    const/16 v20, 0x1

    :goto_4
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v20

    const-string v21, "X-UA-Location-Permission"

    invoke-static {}, Lcom/urbanairship/analytics/EventAPIClient;->getLocationPermission()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v20

    const-string v21, "X-UA-Location-Service-Enabled"

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/urbanairship/location/UALocationManager;->isLocationUpdatesEnabled()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v20

    const-string v21, "X-UA-Bluetooth-Status"

    invoke-static {}, Lcom/urbanairship/analytics/EventAPIClient;->isBluetoothEnabled()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v15

    .line 148
    .local v15, "request":Lcom/urbanairship/http/Request;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    .line 149
    .local v13, "locale":Ljava/util/Locale;
    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 150
    const-string v20, "X-UA-Locale-Language"

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    .line 152
    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 153
    const-string v20, "X-UA-Locale-Country"

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    .line 156
    :cond_4
    invoke-virtual {v13}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 157
    const-string v20, "X-UA-Locale-Variant"

    invoke-virtual {v13}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    .line 161
    :cond_5
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, "channelID":Ljava/lang/String;
    invoke-static {v7}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 163
    const-string v20, "X-UA-Channel-ID"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v7}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    .line 167
    const-string v20, "X-UA-Push-Address"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v7}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    .line 170
    :cond_6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "EventAPIClient - Sending analytic events. Request:  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Events: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v15}, Lcom/urbanairship/http/Request;->execute()Lcom/urbanairship/http/Response;

    move-result-object v16

    .line 175
    .local v16, "response":Lcom/urbanairship/http/Response;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "EventAPIClient - Analytic event send response: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 178
    if-nez v16, :cond_9

    const/16 v20, 0x0

    goto/16 :goto_0

    .line 111
    .end local v4    # "airshipConfig":Lcom/urbanairship/AirshipConfigOptions;
    .end local v7    # "channelID":Ljava/lang/String;
    .end local v8    # "deviceFamily":Ljava/lang/String;
    .end local v13    # "locale":Ljava/util/Locale;
    .end local v15    # "request":Lcom/urbanairship/http/Request;
    .end local v16    # "response":Lcom/urbanairship/http/Response;
    .end local v18    # "sentAt":D
    :catch_1
    move-exception v9

    .line 112
    .local v9, "e":Ljava/net/MalformedURLException;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "EventAPIClient - Invalid analyticsServer: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 119
    .end local v9    # "e":Ljava/net/MalformedURLException;
    :cond_7
    const-string v8, "android"

    .restart local v8    # "deviceFamily":Ljava/lang/String;
    goto/16 :goto_3

    .line 125
    .restart local v4    # "airshipConfig":Lcom/urbanairship/AirshipConfigOptions;
    .restart local v18    # "sentAt":D
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 178
    .restart local v7    # "channelID":Ljava/lang/String;
    .restart local v13    # "locale":Ljava/util/Locale;
    .restart local v15    # "request":Lcom/urbanairship/http/Request;
    .restart local v16    # "response":Lcom/urbanairship/http/Response;
    :cond_9
    new-instance v20, Lcom/urbanairship/analytics/EventResponse;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/urbanairship/analytics/EventResponse;-><init>(Lcom/urbanairship/http/Response;)V

    goto/16 :goto_0
.end method
