.class public Lcom/genie_connect/android/db/config/BaseConfig;
.super Ljava/lang/Object;
.source "BaseConfig.java"

# interfaces
.implements Lcom/genie_connect/android/db/config/ConfigCommonStrings;


# static fields
.field private static final BANNER_URL:Ljava/lang/String; = "bannerUrl"

.field private static final EXHIBITOR2:Ljava/lang/String; = "exhibitor"

.field private static final INFO_PAGE:Ljava/lang/String; = "infoPage"

.field private static final LINK_TYPE:Ljava/lang/String; = "linkType"

.field private static final SHOW_BANNER:Ljava/lang/String; = "showBanner"

.field private static final SPONSOR:Ljava/lang/String; = "sponsor"

.field private static final SPONSOR_CAMPAIGN:Ljava/lang/String; = "sponsorCampaign"

.field public static final SPONSOR_LINK_TYPE_EXHIBITOR:I = 0x2

.field public static final SPONSOR_LINK_TYPE_INFO:I = 0x1

.field public static final SPONSOR_LINK_TYPE_NONE:I = 0x0

.field protected static final TAB_LIMIT:I = 0x4


# instance fields
.field private final mChildWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/WidgetLink;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsSecure:Z

.field private mPermissionGroup:J

.field private mShowSponsor:Z

.field private mSponsorBannerUrl:Ljava/lang/String;

.field private mSponsorCampaignId:J

.field private mSponsorExhibitor:J

.field private mSponsorInfoPage:J

.field private mSponsorLinkType:I

.field private mTabLimit:I

.field private final mTitle:Ljava/lang/String;

.field private final mType:Lcom/genie_connect/android/db/config/GenieWidget;


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "type"    # Lcom/genie_connect/android/db/config/GenieWidget;
    .param p2, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mType:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 91
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/genie_connect/android/db/config/BaseConfig;->setTabLimit(I)V

    .line 92
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mChildWidgets:Ljava/util/List;

    .line 94
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v8, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/config/WidgetLink;>;"
    if-nez p2, :cond_1

    .line 97
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^ BASECONFIG: Object is NULL! - type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 141
    :cond_0
    :goto_0
    const-string v10, "isSecure"

    const/4 v11, 0x0

    invoke-static {p2, v10, v11}, Lcom/genie_connect/android/db/config/BaseConfig;->optBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mIsSecure:Z

    .line 142
    const-string/jumbo v10, "title"

    invoke-static {p2, v10}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mTitle:Ljava/lang/String;

    .line 144
    const-string v10, "permissionGroup"

    invoke-static {p2, v10}, Lcom/genie_connect/android/db/config/BaseConfig;->optNestedEntityId(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mPermissionGroup:J

    .line 145
    return-void

    .line 99
    :cond_1
    const-string/jumbo v10, "widgets"

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 100
    .local v9, "ws":Lorg/json/JSONArray;
    if-eqz v9, :cond_3

    .line 101
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 105
    .local v3, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 106
    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 107
    .local v4, "o":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 108
    new-instance v7, Lcom/genie_connect/android/db/config/WidgetLink;

    invoke-direct {v7, v4}, Lcom/genie_connect/android/db/config/WidgetLink;-><init>(Lorg/json/JSONObject;)V

    .line 109
    .local v7, "w":Lcom/genie_connect/android/db/config/WidgetLink;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v7    # "w":Lcom/genie_connect/android/db/config/WidgetLink;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    .end local v1    # "i":I
    .end local v3    # "max":I
    .end local v4    # "o":Lorg/json/JSONObject;
    :cond_3
    iget-object v10, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mChildWidgets:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    const-string v10, "sponsor"

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 118
    .local v6, "sponsorOld":Lorg/json/JSONObject;
    if-eqz v6, :cond_5

    .line 119
    const-string v10, "linkType"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mSponsorLinkType:I

    .line 120
    const-string v10, "showBanner"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mShowSponsor:Z

    .line 121
    const-string v10, "bannerUrl"

    invoke-static {v6, v10}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mSponsorBannerUrl:Ljava/lang/String;

    .line 123
    const-string v10, "infoPage"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 124
    .local v2, "infoPage":Lorg/json/JSONObject;
    if-eqz v2, :cond_4

    .line 125
    const-string v10, "id"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mSponsorInfoPage:J

    .line 128
    :cond_4
    const-string v10, "exhibitor"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 129
    .local v0, "exhibitor":Lorg/json/JSONObject;
    if-eqz v0, :cond_5

    .line 130
    const-string v10, "id"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mSponsorExhibitor:J

    .line 135
    .end local v0    # "exhibitor":Lorg/json/JSONObject;
    .end local v2    # "infoPage":Lorg/json/JSONObject;
    :cond_5
    const-string v10, "sponsorCampaign"

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 136
    .local v5, "sponsorCampaignObj":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 137
    const-string v10, "id"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mSponsorCampaignId:J

    goto/16 :goto_0
.end method

.method private addInfoPages(Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;>;"
    if-eqz p1, :cond_0

    .line 155
    new-instance v0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;-><init>(Lorg/json/JSONObject;)V

    .line 156
    .local v0, "cfg":Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v4, "children"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 159
    .local v1, "children":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 162
    .local v3, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 164
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/genie_connect/android/db/config/BaseConfig;->addInfoPages(Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "cfg":Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;
    .end local v1    # "children":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "max":I
    :cond_0
    return-void
.end method

.method public static optBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 0
    .param p0, "o"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fallback"    # Z

    .prologue
    .line 371
    if-nez p0, :cond_0

    .line 372
    .end local p2    # "fallback":Z
    :goto_0
    return p2

    .restart local p2    # "fallback":Z
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public static optLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 2
    .param p0, "o"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 381
    if-nez p0, :cond_0

    .line 382
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static optNestedEntityId(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 3
    .param p0, "o"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 391
    if-nez p0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-wide v0

    .line 392
    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 393
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "o"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 402
    if-nez p0, :cond_1

    move-object v0, v1

    .line 408
    :cond_0
    :goto_0
    return-object v0

    .line 404
    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 406
    goto :goto_0
.end method

.method public static optString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/String;

    .prologue
    .line 419
    if-nez p0, :cond_1

    .line 425
    .end local p2    # "fallback":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 421
    .restart local p2    # "fallback":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 425
    goto :goto_0
.end method


# virtual methods
.method public getPermissionGroup()Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    .locals 4

    .prologue
    .line 177
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mPermissionGroup:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getPermissionGroup(Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v0

    return-object v0
.end method

.method public getSponsorBannerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mSponsorBannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSponsorCampaignId()J
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mSponsorCampaignId:J

    return-wide v0
.end method

.method public getSponsorExhibitor()J
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mSponsorExhibitor:J

    return-wide v0
.end method

.method public getSponsorInfoPage()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mSponsorInfoPage:J

    return-wide v0
.end method

.method public getSponsorLinkType()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mSponsorLinkType:I

    return v0
.end method

.method public getTabOverflowWidgets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/WidgetLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/BaseConfig;->requiresTabOverflow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mChildWidgets:Ljava/util/List;

    iget v1, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mTabLimit:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mChildWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabWidgets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/WidgetLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/BaseConfig;->requiresTabOverflow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mChildWidgets:Ljava/util/List;

    const/4 v1, 0x0

    iget v2, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mTabLimit:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mChildWidgets:Ljava/util/List;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/genie_connect/android/db/config/GenieWidget;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mType:Lcom/genie_connect/android/db/config/GenieWidget;

    return-object v0
.end method

.method public getWidgetInfoPages()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 287
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;>;"
    iget-object v5, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mChildWidgets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/android/db/config/WidgetLink;

    .line 288
    .local v4, "w":Lcom/genie_connect/android/db/config/WidgetLink;
    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->INFO:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/WidgetLink;->getType()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 291
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/WidgetLink;->getJSON()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 292
    .local v3, "o":Lorg/json/JSONObject;
    const-string v5, "infoPage"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/genie_connect/android/db/config/BaseConfig;->addInfoPages(Lorg/json/JSONObject;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v3    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 298
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "w":Lcom/genie_connect/android/db/config/WidgetLink;
    :cond_1
    return-object v2
.end method

.method public getWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/WidgetLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mChildWidgets:Ljava/util/List;

    return-object v0
.end method

.method public hasWidget(Lcom/genie_connect/android/db/config/GenieWidget;)Z
    .locals 4
    .param p1, "widgetType"    # Lcom/genie_connect/android/db/config/GenieWidget;

    .prologue
    .line 313
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 325
    :cond_0
    :goto_0
    return v1

    .line 314
    :cond_1
    const/4 v1, 0x0

    .line 316
    .local v1, "res":Z
    iget-object v3, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mChildWidgets:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 317
    iget-object v3, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mChildWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/db/config/WidgetLink;

    .line 318
    .local v2, "widget":Lcom/genie_connect/android/db/config/WidgetLink;
    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/WidgetLink;->getType()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 319
    const/4 v1, 0x1

    .line 320
    goto :goto_0
.end method

.method public isSecure()Z
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_VISITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    iget-object v1, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mType:Lcom/genie_connect/android/db/config/GenieWidget;

    if-ne v0, v1, :cond_0

    .line 333
    const/4 v0, 0x1

    .line 335
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mIsSecure:Z

    goto :goto_0
.end method

.method public isSponsorDisplayed()Z
    .locals 4

    .prologue
    .line 344
    iget-wide v0, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mSponsorCampaignId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 345
    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mShowSponsor:Z

    goto :goto_0
.end method

.method public isVisitorAbleToOpenWidget()Z
    .locals 4

    .prologue
    .line 201
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v0

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->OPEN:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/BaseConfig;->getPermissionGroup()Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v0

    return v0
.end method

.method public isVisitorAbleToSeeWidget()Z
    .locals 4

    .prologue
    .line 187
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v0

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->VIEW:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/BaseConfig;->getPermissionGroup()Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v0

    return v0
.end method

.method public requiresTabOverflow()Z
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mChildWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mTabLimit:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setTabLimit(I)V
    .locals 0
    .param p1, "tabLimit"    # I

    .prologue
    .line 361
    iput p1, p0, Lcom/genie_connect/android/db/config/BaseConfig;->mTabLimit:I

    .line 362
    return-void
.end method
