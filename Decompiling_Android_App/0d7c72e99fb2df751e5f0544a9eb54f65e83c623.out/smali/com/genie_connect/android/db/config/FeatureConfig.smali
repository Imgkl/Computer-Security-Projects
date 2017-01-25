.class public final Lcom/genie_connect/android/db/config/FeatureConfig;
.super Ljava/lang/Object;
.source "FeatureConfig.java"


# instance fields
.field private final mDownloadFeatures:Lcom/genie_connect/android/db/config/features/DownloadFeatures;

.field private final mExhibitorsFeatures:Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;

.field private final mGamificationFeatures:Lcom/genie_connect/android/db/config/features/GamificationFeatures;

.field private final mMyEventFeatures:Lcom/genie_connect/android/db/config/features/MyEventFeatures;

.field private final mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

.field private final mPoiFeatures:Lcom/genie_connect/android/db/config/features/PoiFeatures;

.field private final mProductFeatures:Lcom/genie_connect/android/db/config/features/ProductFeatures;

.field private final mScheduleFeatures:Lcom/genie_connect/android/db/config/features/ScheduleFeatures;

.field private final mSpeakerFeatures:Lcom/genie_connect/android/db/config/features/SpeakerFeatures;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 6
    .param p1, "configJson"    # Lorg/json/JSONObject;
    .param p2, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v1, "features"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    .local v0, "features":Lorg/json/JSONObject;
    new-instance v1, Lcom/genie_connect/android/db/config/features/DownloadFeatures;

    const-string v2, "downloads"

    invoke-static {v0, v2}, Lcom/genie_connect/android/db/config/FeatureConfig;->getChild(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/features/DownloadFeatures;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mDownloadFeatures:Lcom/genie_connect/android/db/config/features/DownloadFeatures;

    .line 70
    new-instance v1, Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;

    const-string v2, "exhibitors"

    invoke-static {v0, v2}, Lcom/genie_connect/android/db/config/FeatureConfig;->getChild(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mExhibitorsFeatures:Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;

    .line 71
    new-instance v1, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    const-string v2, "networking"

    invoke-static {v0, v2}, Lcom/genie_connect/android/db/config/FeatureConfig;->getChild(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "widgets"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "findpeople"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;J)V

    iput-object v1, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    .line 75
    new-instance v1, Lcom/genie_connect/android/db/config/features/PoiFeatures;

    const-string v2, "poi"

    invoke-static {v0, v2}, Lcom/genie_connect/android/db/config/FeatureConfig;->getChild(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/features/PoiFeatures;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mPoiFeatures:Lcom/genie_connect/android/db/config/features/PoiFeatures;

    .line 76
    new-instance v1, Lcom/genie_connect/android/db/config/features/ProductFeatures;

    const-string v2, "products"

    invoke-static {v0, v2}, Lcom/genie_connect/android/db/config/FeatureConfig;->getChild(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/features/ProductFeatures;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mProductFeatures:Lcom/genie_connect/android/db/config/features/ProductFeatures;

    .line 77
    new-instance v1, Lcom/genie_connect/android/db/config/features/SpeakerFeatures;

    const-string v2, "speakers"

    invoke-static {v0, v2}, Lcom/genie_connect/android/db/config/FeatureConfig;->getChild(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/features/SpeakerFeatures;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mSpeakerFeatures:Lcom/genie_connect/android/db/config/features/SpeakerFeatures;

    .line 78
    new-instance v1, Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    const-string v2, "myEvent"

    invoke-static {v0, v2}, Lcom/genie_connect/android/db/config/FeatureConfig;->getChild(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;-><init>(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/AppConfig;)V

    iput-object v1, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mMyEventFeatures:Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    .line 79
    new-instance v1, Lcom/genie_connect/android/db/config/features/GamificationFeatures;

    const-string v2, "gamifications"

    invoke-static {v0, v2}, Lcom/genie_connect/android/db/config/FeatureConfig;->getChild(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/android/db/config/features/GamificationFeatures;-><init>(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)V

    iput-object v1, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mGamificationFeatures:Lcom/genie_connect/android/db/config/features/GamificationFeatures;

    .line 80
    new-instance v1, Lcom/genie_connect/android/db/config/features/ScheduleFeatures;

    const-string v2, "schedule"

    invoke-static {v0, v2}, Lcom/genie_connect/android/db/config/FeatureConfig;->getChild(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/features/ScheduleFeatures;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mScheduleFeatures:Lcom/genie_connect/android/db/config/features/ScheduleFeatures;

    .line 81
    return-void
.end method

.method private static getChild(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 144
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getDownloadFeatures()Lcom/genie_connect/android/db/config/features/DownloadFeatures;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mDownloadFeatures:Lcom/genie_connect/android/db/config/features/DownloadFeatures;

    return-object v0
.end method

.method public getExhibitorsFeatures()Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mExhibitorsFeatures:Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;

    return-object v0
.end method

.method public getGamificationFeatures()Lcom/genie_connect/android/db/config/features/GamificationFeatures;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mGamificationFeatures:Lcom/genie_connect/android/db/config/features/GamificationFeatures;

    return-object v0
.end method

.method public getListModifierForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/config/features/GmListModifier;
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getListModifierForEntity(Ljava/lang/String;)Lcom/genie_connect/android/db/config/features/GmListModifier;

    move-result-object v0

    return-object v0
.end method

.method public getListModifierForEntity(Ljava/lang/String;)Lcom/genie_connect/android/db/config/features/GmListModifier;
    .locals 1
    .param p1, "entityType"    # Ljava/lang/String;

    .prologue
    .line 100
    if-nez p1, :cond_0

    new-instance v0, Lcom/eventgenie/android/adapters/entity/util/DummyListModifier;

    invoke-direct {v0}, Lcom/eventgenie/android/adapters/entity/util/DummyListModifier;-><init>()V

    .line 119
    :goto_0
    return-object v0

    .line 102
    :cond_0
    const-string v0, "poi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getPoiFeatures()Lcom/genie_connect/android/db/config/features/PoiFeatures;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_1
    const-string v0, "downloadables"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getDownloadFeatures()Lcom/genie_connect/android/db/config/features/DownloadFeatures;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_2
    const-string v0, "exhibitors"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getExhibitorsFeatures()Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_3
    const-string/jumbo v0, "visitors"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_4
    const-string v0, "products"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getProductFeatures()Lcom/genie_connect/android/db/config/features/ProductFeatures;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_5
    const-string v0, "speakers"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 113
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getSpeakerFeatures()Lcom/genie_connect/android/db/config/features/SpeakerFeatures;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_6
    const-string v0, "games"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getGamificationFeatures()Lcom/genie_connect/android/db/config/features/GamificationFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->getGameFeatures()Lcom/genie_connect/android/db/config/features/GamificationGameFeatures;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_7
    const-string/jumbo v0, "trophies"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 117
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getGamificationFeatures()Lcom/genie_connect/android/db/config/features/GamificationFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->getGameFeatures()Lcom/genie_connect/android/db/config/features/GamificationGameFeatures;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_8
    new-instance v0, Lcom/eventgenie/android/adapters/entity/util/DummyListModifier;

    invoke-direct {v0}, Lcom/eventgenie/android/adapters/entity/util/DummyListModifier;-><init>()V

    goto :goto_0
.end method

.method public getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mMyEventFeatures:Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    return-object v0
.end method

.method public getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    return-object v0
.end method

.method public getPoiFeatures()Lcom/genie_connect/android/db/config/features/PoiFeatures;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mPoiFeatures:Lcom/genie_connect/android/db/config/features/PoiFeatures;

    return-object v0
.end method

.method public getProductFeatures()Lcom/genie_connect/android/db/config/features/ProductFeatures;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mProductFeatures:Lcom/genie_connect/android/db/config/features/ProductFeatures;

    return-object v0
.end method

.method public getScheduleFeatures()Lcom/genie_connect/android/db/config/features/ScheduleFeatures;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mScheduleFeatures:Lcom/genie_connect/android/db/config/features/ScheduleFeatures;

    return-object v0
.end method

.method public getSpeakerFeatures()Lcom/genie_connect/android/db/config/features/SpeakerFeatures;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/genie_connect/android/db/config/FeatureConfig;->mSpeakerFeatures:Lcom/genie_connect/android/db/config/features/SpeakerFeatures;

    return-object v0
.end method
