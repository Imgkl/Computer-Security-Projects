.class public Lcom/genie_connect/android/db/config/AppEntity;
.super Ljava/lang/Object;
.source "AppEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/config/AppEntity$AppEntityFeature;
    }
.end annotation


# instance fields
.field mFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Lcom/genie_connect/android/db/config/AppEntity$AppEntityFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/platform/json/IJsonObject;)V
    .locals 7
    .param p1, "app"    # Lcom/genie_connect/common/platform/json/IJsonObject;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/genie_connect/android/db/config/AppEntity;->mFeatures:Ljava/util/Map;

    .line 22
    const-string v3, "features"

    invoke-interface {p1, v3}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v0

    .line 24
    .local v0, "features":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v0, :cond_0

    .line 26
    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SURVEYS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v3}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    .line 28
    .local v2, "surveysFeatures":Lcom/genie_connect/common/platform/json/IJsonObject;
    const-string v3, "enabled"

    invoke-interface {v2, v3}, Lcom/genie_connect/common/platform/json/IJsonObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 30
    .local v1, "isEnabled":Z
    iget-object v3, p0, Lcom/genie_connect/android/db/config/AppEntity;->mFeatures:Ljava/util/Map;

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SURVEYS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v5, Lcom/genie_connect/android/db/config/AppEntity$AppEntityFeature;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SURVEYS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v5, v6, v1}, Lcom/genie_connect/android/db/config/AppEntity$AppEntityFeature;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .end local v1    # "isEnabled":Z
    .end local v2    # "surveysFeatures":Lcom/genie_connect/common/platform/json/IJsonObject;
    :cond_0
    return-void
.end method


# virtual methods
.method public isFeatureEnabled(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z
    .locals 2
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/genie_connect/android/db/config/AppEntity;->mFeatures:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/AppEntity$AppEntityFeature;

    .line 43
    .local v0, "appEntityFeature":Lcom/genie_connect/android/db/config/AppEntity$AppEntityFeature;
    if-eqz v0, :cond_0

    .line 44
    iget-boolean v1, v0, Lcom/genie_connect/android/db/config/AppEntity$AppEntityFeature;->mIsEnabled:Z

    .line 46
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
