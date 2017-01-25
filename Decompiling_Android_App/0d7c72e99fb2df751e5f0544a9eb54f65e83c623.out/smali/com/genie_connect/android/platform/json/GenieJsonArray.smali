.class public Lcom/genie_connect/android/platform/json/GenieJsonArray;
.super Ljava/lang/Object;
.source "GenieJsonArray.java"

# interfaces
.implements Lcom/genie_connect/common/platform/json/IJsonArray;


# instance fields
.field private mArray:Lorg/json/JSONArray;


# direct methods
.method private constructor <init>(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "array"    # Lorg/json/JSONArray;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/genie_connect/android/platform/json/GenieJsonArray;->mArray:Lorg/json/JSONArray;

    .line 49
    return-void
.end method

.method public static fromRaw(Lorg/json/JSONArray;)Lcom/genie_connect/android/platform/json/GenieJsonArray;
    .locals 1
    .param p0, "raw"    # Lorg/json/JSONArray;

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/genie_connect/android/platform/json/GenieJsonArray;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/platform/json/GenieJsonArray;-><init>(Lorg/json/JSONArray;)V

    goto :goto_0
.end method


# virtual methods
.method public getRawArray()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/genie_connect/android/platform/json/GenieJsonArray;->mArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/genie_connect/android/platform/json/GenieJsonArray;->mArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public optJSONObject(I)Lcom/genie_connect/common/platform/json/IJsonObject;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 70
    iget-object v1, p0, Lcom/genie_connect/android/platform/json/GenieJsonArray;->mArray:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    .local v0, "obj":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 73
    invoke-static {v0}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v1

    .line 76
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public optLong(I)Ljava/lang/Long;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/genie_connect/android/platform/json/GenieJsonArray;->mArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public optString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/genie_connect/android/platform/json/GenieJsonArray;->mArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/genie_connect/android/platform/json/GenieJsonArray;->mArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
