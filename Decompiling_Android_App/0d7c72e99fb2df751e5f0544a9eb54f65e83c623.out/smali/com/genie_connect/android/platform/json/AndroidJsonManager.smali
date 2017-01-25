.class public Lcom/genie_connect/android/platform/json/AndroidJsonManager;
.super Ljava/lang/Object;
.source "AndroidJsonManager.java"

# interfaces
.implements Lcom/genie_connect/common/platform/json/IJsonManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createJsonObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 28
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 33
    :goto_0
    return-object v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "ex":Lorg/json/JSONException;
    const-string v1, "An error occured creating a JSON object"

    invoke-static {v1, v0}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 33
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deserializeEntity(Ljava/lang/String;Ljava/lang/Class;)Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .locals 4
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/genie_connect/common/db/entityfactory/EGEntity;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/entityfactory/EGEntity;

    .line 106
    .local v1, "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;, "TT;"
    invoke-static {p1}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromString(Ljava/lang/String;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1    # "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;, "TT;"
    :goto_0
    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "^ JSON"

    const-string v3, "Error parsing JSON entity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deserializeListOfEntities(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .param p1, "jsonStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/genie_connect/common/db/entityfactory/EGEntity;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 74
    .local v4, "gson":Lcom/google/gson/Gson;
    :try_start_0
    new-instance v5, Lcom/google/gson/stream/JsonReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, p1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 76
    .local v5, "reader":Lcom/google/gson/stream/JsonReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v2, "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 78
    :goto_0
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {p2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/db/entityfactory/EGEntity;

    .line 82
    .local v3, "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;, "TT;"
    const-class v6, Lcom/google/gson/JsonElement;

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 84
    .local v1, "ele":Lcom/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromString(Ljava/lang/String;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;Z)V

    .line 85
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    .end local v1    # "ele":Lcom/google/gson/JsonElement;
    .end local v2    # "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v3    # "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;, "TT;"
    .end local v5    # "reader":Lcom/google/gson/stream/JsonReader;
    :catch_0
    move-exception v6

    .line 96
    :goto_1
    const/4 v2, 0x0

    :goto_2
    return-object v2

    .line 87
    .restart local v2    # "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v5    # "reader":Lcom/google/gson/stream/JsonReader;
    :cond_0
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 88
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 92
    .end local v2    # "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v5    # "reader":Lcom/google/gson/stream/JsonReader;
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "^ JSON"

    const-string v7, "Error parsing JSON entities"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public deserializeListOfEntities(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/genie_connect/common/db/entityfactory/EGEntity;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "arr":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v2, "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .local v4, "ii":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 45
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {p2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/db/entityfactory/EGEntity;

    .line 46
    .local v3, "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;, "TT;"
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;Z)V

    .line 47
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v2    # "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v3    # "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;, "TT;"
    .end local v4    # "ii":I
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "^ JSON"

    const-string v6, "Error parsing JSON entities"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/4 v2, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v2
.end method
