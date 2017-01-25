.class public final Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;
.super Ljava/lang/Object;
.source "LabelAndNounConfig.java"


# static fields
.field private static final LABELS:Ljava/lang/String; = "labels"

.field private static final NOUN:Ljava/lang/String; = "noun"


# instance fields
.field private final mLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNouns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/db/config/misc/Noun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "configObject"    # Lorg/json/JSONObject;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;->mLabels:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;->mNouns:Ljava/util/Map;

    .line 53
    invoke-direct {p0, p1}, Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;->parseLabelsAndNouns(Lorg/json/JSONObject;)V

    .line 54
    return-void
.end method

.method private parseLabelsAndNouns(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "configObject"    # Lorg/json/JSONObject;

    .prologue
    .line 83
    const-string v7, "labels"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 86
    .local v5, "parentObject":Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 92
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 94
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;->mLabels:Ljava/util/Map;

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 100
    .restart local v3    # "key":Ljava/lang/String;
    const-string v7, "noun"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 101
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "k":Ljava/lang/String;
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    .local v0, "childObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 104
    new-instance v4, Lcom/genie_connect/android/db/config/misc/Noun;

    invoke-direct {v4, v0}, Lcom/genie_connect/android/db/config/misc/Noun;-><init>(Lorg/json/JSONObject;)V

    .line 105
    .local v4, "n":Lcom/genie_connect/android/db/config/misc/Noun;
    iget-object v7, p0, Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;->mNouns:Ljava/util/Map;

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 110
    .end local v0    # "childObject":Lorg/json/JSONObject;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "k":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "n":Lcom/genie_connect/android/db/config/misc/Noun;
    :cond_2
    return-void
.end method


# virtual methods
.method public getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Lcom/genie_connect/android/db/config/misc/Label;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;->mLabels:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/misc/Label;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .param p2, "type"    # Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    .prologue
    .line 69
    iget-object v2, p0, Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;->mNouns:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->getConfigKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/misc/Noun;

    .line 70
    .local v0, "n":Lcom/genie_connect/android/db/config/misc/Noun;
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0, p2}, Lcom/genie_connect/android/db/config/misc/Noun;->get(Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "res":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .end local v1    # "res":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 75
    .restart local v1    # "res":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p2}, Lcom/genie_connect/android/db/config/misc/Noun;->get(Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 78
    .end local v1    # "res":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getNoun(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;
    .locals 3
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "type"    # Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "entityName":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->fromString(Ljava/lang/String;)Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    move-result-object v1

    .line 65
    .local v1, "key":Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    invoke-virtual {p0, v1, p2}, Lcom/genie_connect/android/db/config/misc/LabelAndNounConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
