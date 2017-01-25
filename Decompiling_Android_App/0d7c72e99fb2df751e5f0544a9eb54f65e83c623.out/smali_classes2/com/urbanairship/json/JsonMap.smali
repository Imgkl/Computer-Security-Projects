.class public Lcom/urbanairship/json/JsonMap;
.super Ljava/lang/Object;
.source "JsonMap.java"


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/json/JsonValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/json/JsonValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/urbanairship/json/JsonMap;->map:Ljava/util/Map;

    .line 53
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/urbanairship/json/JsonMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Lcom/urbanairship/json/JsonValue;)Z
    .locals 1
    .param p1, "value"    # Lcom/urbanairship/json/JsonValue;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/urbanairship/json/JsonMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/json/JsonValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/urbanairship/json/JsonMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 156
    if-ne p1, p0, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 163
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .line 160
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/urbanairship/json/JsonMap;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/urbanairship/json/JsonMap;->map:Ljava/util/Map;

    check-cast p1, Lcom/urbanairship/json/JsonMap;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Lcom/urbanairship/json/JsonMap;->map:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 163
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/urbanairship/json/JsonMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/urbanairship/json/JsonMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/urbanairship/json/JsonMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/urbanairship/json/JsonMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/urbanairship/json/JsonMap;->get(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    .line 109
    .local v0, "value":Lcom/urbanairship/json/JsonValue;
    if-eqz v0, :cond_0

    .line 112
    .end local v0    # "value":Lcom/urbanairship/json/JsonValue;
    :goto_0
    return-object v0

    .restart local v0    # "value":Lcom/urbanairship/json/JsonValue;
    :cond_0
    sget-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/urbanairship/json/JsonMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 180
    .local v1, "stringer":Lorg/json/JSONStringer;
    invoke-virtual {p0, v1}, Lcom/urbanairship/json/JsonMap;->write(Lorg/json/JSONStringer;)V

    .line 181
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 185
    .end local v1    # "stringer":Lorg/json/JSONStringer;
    :goto_0
    return-object v2

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "JsonMap - Failed to create JSON String."

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    const-string v2, ""

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/urbanairship/json/JsonValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/urbanairship/json/JsonMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method write(Lorg/json/JSONStringer;)V
    .locals 3
    .param p1, "stringer"    # Lorg/json/JSONStringer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 197
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 198
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 199
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v2, p1}, Lcom/urbanairship/json/JsonValue;->write(Lorg/json/JSONStringer;)V

    goto :goto_0

    .line 201
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 202
    return-void
.end method
