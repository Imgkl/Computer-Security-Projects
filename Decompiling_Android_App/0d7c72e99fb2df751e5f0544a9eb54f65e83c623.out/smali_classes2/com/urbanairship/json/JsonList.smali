.class public Lcom/urbanairship/json/JsonList;
.super Ljava/lang/Object;
.source "JsonList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/urbanairship/json/JsonValue;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/json/JsonValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/json/JsonValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/json/JsonValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    .line 51
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method public contains(Lcom/urbanairship/json/JsonValue;)Z
    .locals 1
    .param p1, "jsonValue"    # Lcom/urbanairship/json/JsonValue;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 131
    if-ne p1, p0, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 139
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .line 135
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/urbanairship/json/JsonList;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    check-cast p1, Lcom/urbanairship/json/JsonList;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 139
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/urbanairship/json/JsonValue;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Lcom/urbanairship/json/JsonValue;)I
    .locals 1
    .param p1, "jsonValue"    # Lcom/urbanairship/json/JsonValue;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/urbanairship/json/JsonValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Lcom/urbanairship/json/JsonValue;)I
    .locals 1
    .param p1, "jsonValue"    # Lcom/urbanairship/json/JsonValue;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/urbanairship/json/JsonList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 157
    .local v1, "stringer":Lorg/json/JSONStringer;
    invoke-virtual {p0, v1}, Lcom/urbanairship/json/JsonList;->write(Lorg/json/JSONStringer;)V

    .line 158
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 162
    .end local v1    # "stringer":Lorg/json/JSONStringer;
    :goto_0
    return-object v2

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "JsonList - Failed to create JSON String."

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    const-string v2, ""

    goto :goto_0
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
    .line 173
    invoke-virtual {p1}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 174
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 175
    .local v0, "actionValue":Lcom/urbanairship/json/JsonValue;
    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonValue;->write(Lorg/json/JSONStringer;)V

    goto :goto_0

    .line 177
    .end local v0    # "actionValue":Lcom/urbanairship/json/JsonValue;
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 178
    return-void
.end method
