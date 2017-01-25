.class public Lcom/genie_connect/android/platform/json/GenieJsonObject;
.super Ljava/lang/Object;
.source "GenieJsonObject.java"

# interfaces
.implements Lcom/genie_connect/common/platform/json/IJsonObject;


# instance fields
.field private mObj:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/genie_connect/android/platform/json/GenieJsonObject;->mObj:Lorg/json/JSONObject;

    .line 52
    return-void
.end method

.method public static fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;
    .locals 1
    .param p0, "raw"    # Lorg/json/JSONObject;

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/genie_connect/android/platform/json/GenieJsonObject;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/platform/json/GenieJsonObject;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/genie_connect/android/platform/json/GenieJsonObject;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    :goto_0
    return-object v1

    .line 70
    :cond_0
    :try_start_0
    new-instance v2, Lcom/genie_connect/android/platform/json/GenieJsonObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/genie_connect/android/platform/json/GenieJsonObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ex":Lorg/json/JSONException;
    goto :goto_0
.end method


# virtual methods
.method public getRawObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/genie_connect/android/platform/json/GenieJsonObject;->mObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/genie_connect/android/platform/json/GenieJsonObject;->mObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/genie_connect/android/platform/json/GenieJsonObject;->mObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public optDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/genie_connect/android/platform/json/GenieJsonObject;->mObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public optInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/genie_connect/android/platform/json/GenieJsonObject;->mObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public optJSONArray(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonArray;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v1, p0, Lcom/genie_connect/android/platform/json/GenieJsonObject;->mObj:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 127
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 128
    invoke-static {v0}, Lcom/genie_connect/android/platform/json/GenieJsonArray;->fromRaw(Lorg/json/JSONArray;)Lcom/genie_connect/android/platform/json/GenieJsonArray;

    move-result-object v1

    .line 131
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/genie_connect/android/platform/json/GenieJsonObject;->mObj:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 116
    .local v0, "obj":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 117
    invoke-static {v0}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public optLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/genie_connect/android/platform/json/GenieJsonObject;->mObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;Ljava/lang/Long;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/Long;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/genie_connect/android/platform/json/GenieJsonObject;->mObj:Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/genie_connect/android/platform/json/GenieJsonObject;->mObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/genie_connect/android/platform/json/GenieJsonObject;->mObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/genie_connect/android/platform/json/GenieJsonObject;->mObj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
