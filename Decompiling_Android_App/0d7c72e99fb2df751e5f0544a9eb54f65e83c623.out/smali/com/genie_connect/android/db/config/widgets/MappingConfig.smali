.class public final Lcom/genie_connect/android/db/config/widgets/MappingConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "MappingConfig.java"


# static fields
.field private static final NEW_LINE:Ljava/lang/String; = "\n"


# instance fields
.field private final mAndroidMappingNavFileId:Ljava/lang/String;

.field private final mAndroidMappingNavFileMd5:Ljava/lang/String;

.field private final mBackgroundImageUrl_high:Ljava/lang/String;

.field private final mBackgroundImageUrl_medium:Ljava/lang/String;

.field private final mInteractiveMapsAvailable:Z

.field private final mStaticMapsAvailable:Z

.field private mVenueAddress1:Ljava/lang/String;

.field private mVenueAddress2:Ljava/lang/String;

.field private mVenueAddress3:Ljava/lang/String;

.field private mVenueCountry:Ljava/lang/String;

.field private mVenueCounty:Ljava/lang/String;

.field private mVenueEmail:Ljava/lang/String;

.field private mVenueFax:Ljava/lang/String;

.field private mVenueName:Ljava/lang/String;

.field private mVenuePostCode:Ljava/lang/String;

.field private mVenueTelephone:Ljava/lang/String;

.field private mVenueTelephone2:Ljava/lang/String;

.field private mVenueThumbUrl:Ljava/lang/String;

.field private mVenueTown:Ljava/lang/String;

.field private mVenueWeb:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    .line 67
    sget-object v6, Lcom/genie_connect/android/db/config/GenieWidget;->MAPPING:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v6, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 69
    const-string/jumbo v6, "venue"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 70
    .local v5, "venue":Lorg/json/JSONObject;
    const-string v6, "mainBackground"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 71
    .local v3, "mainBg":Lorg/json/JSONObject;
    const-string v6, "navFile"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 73
    .local v4, "mapNavi":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 74
    const-string v6, "address"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 75
    .local v0, "address":Lorg/json/JSONObject;
    const-string v6, "contact"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 77
    .local v1, "contact":Lorg/json/JSONObject;
    const-string v6, "name"

    invoke-static {v5, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueName:Ljava/lang/String;

    .line 78
    const-string v6, "imageUrl"

    invoke-static {v5, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueThumbUrl:Ljava/lang/String;

    .line 79
    const-string/jumbo v6, "telephone"

    invoke-static {v1, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueTelephone:Ljava/lang/String;

    .line 80
    const-string/jumbo v6, "telephone2"

    invoke-static {v1, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueTelephone2:Ljava/lang/String;

    .line 81
    const-string v6, "fax"

    invoke-static {v1, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueFax:Ljava/lang/String;

    .line 82
    const-string v6, "email"

    invoke-static {v1, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueEmail:Ljava/lang/String;

    .line 83
    const-string/jumbo v6, "www"

    invoke-static {v1, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueWeb:Ljava/lang/String;

    .line 86
    if-eqz v0, :cond_0

    .line 87
    const-string v6, "country"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 88
    .local v2, "country":Lorg/json/JSONObject;
    const-string v6, "address1"

    invoke-static {v0, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueAddress1:Ljava/lang/String;

    .line 89
    const-string v6, "address2"

    invoke-static {v0, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueAddress2:Ljava/lang/String;

    .line 90
    const-string v6, "address3"

    invoke-static {v0, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueAddress3:Ljava/lang/String;

    .line 91
    const-string/jumbo v6, "town"

    invoke-static {v0, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueTown:Ljava/lang/String;

    .line 92
    const-string v6, "county"

    invoke-static {v0, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueCounty:Ljava/lang/String;

    .line 93
    const-string v6, "postCode"

    invoke-static {v0, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenuePostCode:Ljava/lang/String;

    .line 95
    if-eqz v2, :cond_0

    .line 96
    const-string v6, "name"

    invoke-static {v2, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueCountry:Ljava/lang/String;

    .line 101
    .end local v0    # "address":Lorg/json/JSONObject;
    .end local v1    # "contact":Lorg/json/JSONObject;
    .end local v2    # "country":Lorg/json/JSONObject;
    :cond_0
    const-string v6, "androidHDPIUrl"

    invoke-static {v3, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mBackgroundImageUrl_high:Ljava/lang/String;

    .line 102
    const-string v6, "androidMDPIUrl"

    invoke-static {v3, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mBackgroundImageUrl_medium:Ljava/lang/String;

    .line 104
    const-string v6, "id"

    invoke-static {v4, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mAndroidMappingNavFileId:Ljava/lang/String;

    .line 105
    const-string v6, "md5Hash"

    invoke-static {v4, v6}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mAndroidMappingNavFileMd5:Ljava/lang/String;

    .line 107
    const-string v6, "enableInteractiveFloorplans"

    invoke-static {p1, v6, v7}, Lcom/genie_connect/android/db/config/BaseConfig;->optBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mInteractiveMapsAvailable:Z

    .line 108
    const-string v6, "enableStaticMaps"

    invoke-static {p1, v6, v7}, Lcom/genie_connect/android/db/config/BaseConfig;->optBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mStaticMapsAvailable:Z

    .line 109
    return-void
.end method


# virtual methods
.method public getAndroidMappingNavFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mAndroidMappingNavFileId:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidMappingNavFileMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mAndroidMappingNavFileMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundImageUrl(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isHighDensity"    # Z

    .prologue
    .line 184
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mBackgroundImageUrl_high:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mBackgroundImageUrl_medium:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFormattedAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 189
    const-string v0, ""

    .line 191
    .local v0, "address":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueAddress1:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueAddress1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueAddress2:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueAddress2:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueAddress3:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueAddress3:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueTown:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueTown:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueCounty:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueCounty:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenuePostCode:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenuePostCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueCountry:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueCountry:Ljava/lang/String;

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    return-object v0

    .line 191
    :cond_0
    const-string v1, ""

    goto/16 :goto_0

    .line 192
    :cond_1
    const-string v1, ""

    goto/16 :goto_1

    .line 193
    :cond_2
    const-string v1, ""

    goto/16 :goto_2

    .line 194
    :cond_3
    const-string v1, ""

    goto/16 :goto_3

    .line 195
    :cond_4
    const-string v1, ""

    goto :goto_4

    .line 196
    :cond_5
    const-string v1, ""

    goto :goto_5

    .line 197
    :cond_6
    const-string v1, ""

    goto :goto_6
.end method

.method public getVenueAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueAddress1:Ljava/lang/String;

    return-object v0
.end method

.method public getVenueAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueAddress2:Ljava/lang/String;

    return-object v0
.end method

.method public getVenueAddress3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueAddress3:Ljava/lang/String;

    return-object v0
.end method

.method public getVenueCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getVenueCounty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueCounty:Ljava/lang/String;

    return-object v0
.end method

.method public getVenueEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getVenueFax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueFax:Ljava/lang/String;

    return-object v0
.end method

.method public getVenueName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueName:Ljava/lang/String;

    return-object v0
.end method

.method public getVenuePostCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenuePostCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVenueTelephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueTelephone:Ljava/lang/String;

    return-object v0
.end method

.method public getVenueTelephone2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueTelephone2:Ljava/lang/String;

    return-object v0
.end method

.method public getVenueThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueThumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVenueTown()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueTown:Ljava/lang/String;

    return-object v0
.end method

.method public getVenueWeb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mVenueWeb:Ljava/lang/String;

    return-object v0
.end method

.method public isInteractiveMapsAvailable()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mInteractiveMapsAvailable:Z

    return v0
.end method

.method public isStaticMapsAvailable()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->mStaticMapsAvailable:Z

    return v0
.end method
