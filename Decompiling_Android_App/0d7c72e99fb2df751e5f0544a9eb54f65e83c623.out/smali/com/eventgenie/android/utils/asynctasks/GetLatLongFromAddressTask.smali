.class public Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;
.super Landroid/os/AsyncTask;
.source "GetLatLongFromAddressTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/android/gms/maps/model/LatLng;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_GROUP:Ljava/lang/String; = "latlong_for_address"

.field private static final mLatLngCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->mLatLngCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->mAddress:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->mDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloader;

    .line 61
    return-void
.end method

.method private cacheRead(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-object v2, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->mLatLngCache:Ljava/util/Map;

    iget-object v3, p0, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->mAddress:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    sget-object v2, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->mLatLngCache:Ljava/util/Map;

    iget-object v3, p0, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->mAddress:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 78
    :goto_0
    return-object v2

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->getPersistentCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v2

    const-string v3, "latlong_for_address"

    iget-object v4, p0, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "tmp":Ljava/lang/String;
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-static {v1}, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->makeLatLong(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 73
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 74
    goto :goto_0

    .line 78
    .end local v0    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getLatLong(Lorg/json/JSONObject;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 10
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "lat":Ljava/lang/Double;
    const/4 v3, 0x0

    .line 143
    .local v3, "lng":Ljava/lang/Double;
    const/4 v1, 0x0

    .line 144
    .local v1, "latlng":Lcom/google/android/gms/maps/model/LatLng;
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 157
    :goto_0
    return-object v5

    .line 147
    :cond_0
    :try_start_0
    const-string v5, "status"

    const-string v6, "ZERO_RESULTS"

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "status":Ljava/lang/String;
    const-string v5, "ok"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    const-string v5, "results"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "geometry"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "location"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "lng"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 151
    const-string v5, "results"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "geometry"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "location"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "lat"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 153
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "latlng":Lcom/google/android/gms/maps/model/LatLng;
    .local v2, "latlng":Lcom/google/android/gms/maps/model/LatLng;
    move-object v1, v2

    .end local v2    # "latlng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v4    # "status":Ljava/lang/String;
    .restart local v1    # "latlng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1
    :goto_1
    move-object v5, v1

    .line 157
    goto :goto_0

    .line 155
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private getLocationInfo(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://maps.google.com/maps/api/geocode/json?address="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&sensor=false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "url":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ GETLATLONG: Getting address for url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 115
    iget-object v5, p0, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->mDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloader;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getHttpBodyAsString(Ljava/lang/String;Z)Lcom/genie_connect/android/net/container/NetworkResultStringContent;

    move-result-object v3

    .line 117
    .local v3, "result":Lcom/genie_connect/android/net/container/NetworkResultStringContent;
    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->isSuccesful()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/NetworkResultStringContent;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "response":Ljava/lang/String;
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 124
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-object v1

    .line 120
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "response":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "response":Ljava/lang/String;
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 129
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private getPersistentCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    return-object v0
.end method

.method private static makeLatLong(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 8
    .param p0, "latLongAsString"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, "result":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "arr":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 167
    :try_start_0
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "result":Lcom/google/android/gms/maps/model/LatLng;
    .local v2, "result":Lcom/google/android/gms/maps/model/LatLng;
    move-object v1, v2

    .line 172
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v2    # "result":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v1    # "result":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    :goto_0
    return-object v1

    .line 168
    .restart local v0    # "arr":[Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method protected cacheWrite(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 82
    sget-object v0, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->mLatLngCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-direct {p0}, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->getPersistentCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    const-string v1, "latlong_for_address"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 104
    :cond_0
    :goto_0
    return-object v0

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->mAddress:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->cacheRead(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 94
    .local v0, "location":Lcom/google/android/gms/maps/model/LatLng;
    if-nez v0, :cond_0

    .line 96
    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 97
    goto :goto_0

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->mAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->getLocationInfo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->getLatLong(Lorg/json/JSONObject;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ POI: The location is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;->doInBackground([Ljava/lang/Void;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method
