.class public Luk/co/alt236/easycursor/util/JsonPayloadHelper;
.super Ljava/lang/Object;
.source "JsonPayloadHelper.java"


# static fields
.field private static final NULL:Ljava/lang/String; = "null"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    return-void
.end method

.method public static add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    return-void
.end method

.method public static add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    return-void
.end method

.method public static add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    return-void
.end method

.method public static add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    return-void
.end method

.method public static add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    return-void
.end method

.method public static add(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 37
    .local v0, "arr":Lorg/json/JSONArray;
    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    .line 38
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 43
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    return-void

    .line 38
    :cond_1
    aget-object v1, p2, v2

    .line 39
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "res":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 60
    .end local v0    # "res":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getStringArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "payload"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 68
    .local v0, "arr":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 69
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 70
    .local v1, "count":I
    new-array v3, v1, [Ljava/lang/String;

    .line 72
    .local v3, "res":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 79
    .end local v1    # "count":I
    .end local v2    # "i":I
    :goto_1
    return-object v3

    .line 73
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "res":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "res":[Ljava/lang/String;
    goto :goto_1
.end method
